<?php
/**
 * Created by PhpStorm.
 * User: zhangxiaohei
 * Date: 2020/2/7
 * Time: 21:27
 */

namespace app\admin\controller;


use app\common\library\CryptAes;
use app\common\library\enum\CodeEnum;
use app\common\logic\Config;
use app\common\logic\MsMoneyType;
use app\common\logic\Queuev1Logic;
use app\common\model\EwmPayCode;
use app\common\model\MsWhiteIp;
use think\Db;
use think\Request;


/**
 * 码商管理
 * Class Mch
 * @package app\admin\controller
 */
class Ms extends BaseAdmin
{

    /**
     * @return mixed
     */
    public function index()
    {
        return $this->fetch();
    }


    /**
     * 获取商户列表
     */
    public function getmslist()
    {

        $where = [];
        !empty($this->request->param('mobile')) && $where['mobile']
            = ['eq', $this->request->param('mobile')];

        $data = $this->logicMs->getMsList($where, true, 'reg_date desc', false);

        $count = $this->logicMs->getMsCount($where);

        $this->result($data || !empty($data) ?
            [
                'code'  => CodeEnum::SUCCESS,
                'msg'   => '',
                'count' => $count,
                'data'  => $data
            ] : [
                'code'  => CodeEnum::ERROR,
                'msg'   => '暂无数据',
                'count' => $count,
                'data'  => $data
            ]);
    }


    /**
     *
     *
     * @return mixed
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function add()
    {
        // post 是提交数据
        $this->request->isPost() && $this->result($this->logicMs->addMs($this->request->post()));
        return $this->fetch();
    }

    /**
     *
     *编辑码商
     * @return mixed
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function edit(Request $request)
    {
        $userid = trim($request->param('userid'));
        if (!$userid) {
            $this->error('参数错误');
        }
        $ulist = Db::name('ms')->where(array('userid' => $userid))->find();
        if (!$ulist) {
            $this->error('会员不存在');
        }
        if ($request->isPost()) {
            $data['username'] = trim($request->param('username'));
            $data['mobile']   = trim($request->param('mobile'));
            $login_pwd        = trim($request->param('login_pwd', ''));
            $relogin_pwd      = trim($request->param('relogin_pwd', ''));
            if ($login_pwd && $login_pwd != $relogin_pwd) {
                $this->error('修改密码时,两次密码不一致');
            }

            if ($login_pwd) {
                $data['login_pwd'] = pwdMd52($login_pwd, $ulist['login_salt']);
            }

            $safety_pwd = trim($request->param('safety_pwd', ''));


            //安全密码
            if ($safety_pwd) {
                $data['security_pwd'] = pwdMd5($safety_pwd, $ulist['security_salt']); //safety_salt
            }


            $auth_ips = $this->request->param('auth_ips');
            $auth_ips = array_filter(explode("\r\n", $auth_ips));
            $tempIps  = [];
            foreach ($auth_ips as $ip) {
                $ip = trim($ip);
                if (empty($ip)) {
                    continue;
                }
                if (!filter_var($ip, FILTER_VALIDATE_IP)) {
                    $this->error('ip格式填写错误');
                    die();
                }
                $tempIps[] = $ip;
            }
            $data['auth_ips']   = trim(implode(',', $tempIps));
            $data['updatetime'] = time();
            $data['bank_rate']  = request()->param('bank_rate', 0);

            $re = Db::name('ms')->where(array('userid' => $userid))->update($data);
            if ($re) {
                $this->success('资料修改成功');
            } else {
                $this->error('资料修改失败');
            }
        } else {
            $this->assign('info', $ulist);
            return $this->fetch();
        }
    }

    /**
     * 删除码商
     */
    public function del(Request $request)
    {
        $userid = trim($request->param('userid'));
        //判断是否有下级会员
        $pUser = Db::name('ms')->where(['pid' => $userid, 'status' => ['neq', '-1']])->select();
        if ($pUser) {
            $this->error('会员有下级，不能删除');
        }
        Db::name('ms')->where(array('userid' => $userid))->update(['status' => '-1']);
        $this->success('会员删除成功');
    }


    /*
     * 码商订单列表
     */

    public function orders(Request $request)
    {
        return $this->fetch();
    }


    public function getOrdersList()
    {

        //状态
        if ($this->request->param('status') != "") {
            $where['a.status'] = ['eq', $this->request->param('status')];
        }
        !empty($this->request->param('order_no')) && $where['order_no']
            = ['eq', $this->request->param('order_no')];
        //时间搜索  时间戳搜素
        $where['add_time'] = $this->parseRequestDate3();

        !empty($this->request->param('username')) && $where['c.username']
            = ['eq', $this->request->param('username')];

        !empty($this->request->param('account_name')) && $where['b.account_name']
            = ['eq', $this->request->param('account_name')];

       !empty($this->request->param('pay_username')) && $where['pay_username']
            = ['eq', $this->request->param('pay_username')];

        $fields = ['a.*', 'b.account_name', 'b.bank_name', 'account_number', 'c.username'];
        $data   = $this->logicEwmOrder->getOrderList($where, $fields, 'add_time desc', false);

        !empty($this->request->param('pay_username')) && $where['pay_username']
            = ['eq', $this->request->param('pay_username')];


        $count = $this->logicEwmOrder->getOrdersCount($where);
        $this->result($data || !empty($data) ?
            [
                'code'  => CodeEnum::SUCCESS,
                'msg'   => '',
                'count' => $count,
                'data'  => $data,
            ] : [
                'code'  => CodeEnum::ERROR,
                'msg'   => '暂无数据',
                'count' => $count,
                'data'  => $data
            ]
        );
    }


    /**
     * 后台管理员确认收款
     * @param Request $request
     */
    public function issueOrder(Request $request)
    {
        $orderId   = $this->request->post('id');
        $coerce    = $this->request->post('coerce');//是否强制补单
        $GemaOrder = new \app\common\logic\EwmOrder();
        $res       = $GemaOrder->setOrderSucessByAdmin($orderId, $coerce);
        if ($res['code'] == CodeEnum::ERROR) {
            $this->error($res['msg']);
        }
        $this->success('操作成功');
    }


    /**
     * 码商流水列表
     * @param Request $request
     * @return mixed
     */
    public function bills(Request $request)
    {
        $uid = $request->param('uid', 0);
        $this->assign('uid', $uid);
        $this->assign('montey_types', MsMoneyType::getMoneyOrderTypes());
        return $this->fetch();
    }

    /**
     * @param Request $request
     * @throws \think\exception\DbException
     */
    public function getBillsList(Request $request)
    {
        //时间搜索  时间戳搜素
        $map['addtime'] = $this->parseRequestDate3();
        $billType       = $request->param('bill_type', 0, 'intval');
        $billType && $map['jl_class'] = $billType;
        $username = $request->param('username', '', 'trim');
        $username && $map ['b.username'] = $username;
        $info = $request->param('info', '', 'trim');
        $info && $map ['a.info'] = ['like', '%' . $info . '%'];

        $uid = $request->param('uid', 0, 'intval');
        $uid && $map ['a.uid'] = $uid;


        $fields = ['a.*', 'b.username'];
        $data   = $this->logicMsSomeBill->getBillsList($map, $fields, 'addtime desc', false);
        if ($data) {
            $types = MsMoneyType::getMoneyOrderTypes();
            foreach ($data as $k => $v) {
                $data[$k]['jl_class_text'] = $types[$v['jl_class']];
            }
        }


        $count = $this->logicMsSomeBill->getBillsCount($map);
        $this->result($data || !empty($data) ?
            [
                'code'  => CodeEnum::SUCCESS,
                'msg'   => '',
                'count' => $count,
                'data'  => $data,
            ] : [
                'code'  => CodeEnum::ERROR,
                'msg'   => '暂无数据',
                'count' => $count,
                'data'  => $data
            ]
        );

    }


    /**
     * 平台手动调整用户余额
     */
    public function changeBalance(Request $request)
    {
        $userId = $request->param('userid');
        $user   = Db::name('ms')->where(['userid' => $userId])->find();
        if (!$user) {
            $this->error('会员不存在');
        }
        $curretuserMoney = Db::name('ms')->where(['userid' => $userId])->value('money');
        if ($request->isPost()) {
            //看了存储引擎不支持事务算了 M()->startTrans();
            $data = $request->post();
            if (bccomp(0.00, $data['money']) != -1) {
                $this->error('操作资金不可小于或等于0.00');
            }
            if ($data['op_type'] == 0 && bccomp($data['money'], $curretuserMoney) == 1) { //减少
                $this->error('减少资金不可小于用户本金');
            }

            Db::startTrans();
            $ret = accountLog($userId, MsMoneyType::ADJUST, $data['op_type'], $data['money'], $data['opInfo']);
            if ($ret) {
                Db::commit();
                $this->success('操作成功', url('index'));
            }

            Db::rollback();
            $this->error('操作失败');
        }

        $this->assign('curretuserMoney', $curretuserMoney);
        return $this->fetch();

    }


    /**
     * 授权码商的登录白名单
     * @param Request $request
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function changeWhiteIp(Request $request)
    {
        $userId = $request->param('ms_id');
        $user   = Db::name('ms')->where(['userid' => $userId])->find();
        if (!$user) {
            $this->error('码商不存在');
        }
        $aesKey    = config('aes_key', 'kqwwFRmKyloO');
        $aes       = new CryptAes($aesKey);
        $msWhiteIp = new MsWhiteIp;

        if ($request->isPost()) {
            Db::startTrans();
            try {
                //删除当前码商已经有的白名单
                $msWhiteIp->where('ms_id', $userId)->delete();
                //新增新的
                $ips = $request->post('ips', '', 'trim');
                if ($ips) {
                    $ips   = array_unique(array_filter(explode(PHP_EOL, $ips)));
                    $ipArr = [];
                    foreach ($ips as $ip) {
                        if (!filter_var($ip, FILTER_VALIDATE_IP)) {
                            throw  new \Exception("{$ip}输入不合法");
                        }
                        $row['ms_id']      = $userId;
                        $row['encrypt_ip'] = $aes->encrypt($ip);
                        array_push($ipArr, $row);
                    }
                }
                $msWhiteIp->insertAll($ipArr);
                Db::commit();
            } catch (\Exception $ex) {
                Db::rollback();
                $this->error($ex->getMessage());
            }
            $this->success('操作成功', url('index'));
        }
        $ips = $msWhiteIp->where('ms_id',$userId)->column('encrypt_ip');
        $ips =  array_map([$aes,'decrypt'],$ips);
        $this->assign('ips',$ips);
        return $this->fetch();

    }


    /**
     * 码商二维码列表
     * @param Request $request
     * @return mixed
     */
    public function paycodes(Request $request)
    {
        return $this->fetch();
    }

    /**
     * 管理员删除二维码
     * @param Request $request
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function delPayCode(Request $request)
    {
        $id               = trim($request->param('id'));
        $GemapayCodeModel = new EwmPayCode();
        $codeInfo         = $GemapayCodeModel->find($id);

        $re = Db::name('ewm_pay_code')
            ->where('id', $id)
            ->update(['is_delete' => 1]);

        if ($re) {
            //从队列中删除此二维码
            $QueueLogic = new Queuev1Logic();
            $QueueLogic->delete($id, 3, 1);
            $this->success('删除成功');
        } else {
            $this->error('删除失败');
        }
    }


    /**
     * @param Request $request
     * @return mixed
     */
    public function getPaycodesLists(Request $request)
    {
        $map          = [];
        $account_name = $request->param('account_name', 0, 'intval');
        $account_name && $map['a.account_name'] = ['like', '%' . $account_name . '%'];
        $map['a.is_delete'] = 0;

        $status = $request->param('status', -1);
        ($status != -1) && $map['a.status'] = $status;
        $username = $this->request->param('username');
        if ($username) {
            $map['b.username'] = $username;
        }
        $fields = ['a.*', 'b.username'];
        $data   = $this->logicEwmPayCodes->getCodeList($map, $fields, 'id desc', false);

        $count = $this->logicEwmPayCodes->getCodeCount($map);
        $this->result($data || !empty($data) ?
            [
                'code'  => CodeEnum::SUCCESS,
                'msg'   => '',
                'count' => $count,
                'data'  => $data,
            ] : [
                'code'  => CodeEnum::ERROR,
                'msg'   => '暂无数据',
                'count' => $count,
                'data'  => $data
            ]
        );
    }


}
