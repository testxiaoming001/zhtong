<?php


namespace app\index\controller;


use app\common\library\enum\OrderStatusEnum;

class Agent extends Base
{

    /**
     * 获取数据统计
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     *
     * @return mixed
     */
    public function index(){
        $where = ['puid'=> is_login()];
        $this->assign('list', $this->logicUser->getUserList($where, true, 'create_time desc', 10));
        return $this->fetch();
    }

    /**
     * 下级交易明细
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     *
     * @return mixed
     */
    public function orders()
    {
        $where['puid'] = is_login();
        $User = new \app\common\model\User();
        $userList = $User->where($where)->select();
        $userIds = [];
        foreach ($userList as $user) {
            $userIds[] = $user['uid'];
        }

        unset($where);

        $where['uid'] =  array('in', $userIds);
        //组合搜索
        !empty($this->request->get('trade_no')) && $where['trade_no']
            = ['like', '%' . $this->request->get('trade_no') . '%'];

        !empty($this->request->get('channel')) && $where['channel']
            = ['eq', $this->request->get('channel')];

//        //时间搜索  时间戳搜素
       $where['create_time'] = $this->parseRequestDate();

        //状态
        if (!empty($this->request->get('status')) || $this->request->get('status') === '0') {
            $where['status'] = $this->request->get('status');
        }
        if (empty($userIds))
        {
            $list = [];
        }
        else
        {
            $list = $this->logicOrders->getOrderList($where,true, 'create_time desc', 10);
        }
        //这里循环算了以免影响到公共逻辑获取数据

        foreach($list as $k=>$v)
        {
              $uinfo = $this->logicUser->getUserInfo(['uid'=>$v['uid']],'username');
              $list[$k]['username'] = $uinfo['username'];
        }

        //代理下面的所有商户

        $map['puid'] = session('user_auth.uid');
        $usersInagent = $this->logicUser->getUserList($map, 'uid,puid,username', 'create_time desc', false);
//dd($usersInagent);
        $this->assign('list',$list);
        $this->assign('usersInagent',$usersInagent);
        $this->assign('code',$this->logicPay->getCodeList([]));

        return $this->fetch();
    }

    /**
     * 下级分润比例
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     *
     * @return mixed
     */
    public function profit(){
         $uid = $this->request->param('uid');
         $userInfo =  $this->logicUser->getUserInfo(['uid'=>$uid]);
         if($userInfo['puid'] !=is_login())
         {
            $this->error('参数错误');
         }
        $where['a.status'] = 1;
        $where['uid'] = $uid;
        $userCodes =  $this->logicUser->userPayCodes($where,'co_id,code,b.name as code_name','a.create_time desc',false);
        $userCodes = collection($userCodes)->toArray();
        if(is_array($userCodes) && !empty($userCodes))
        {
            //随机一个支付产品的渠道账户对应的当前商户的费率
            foreach ($userCodes as $k=>$paycode)
            {
                $urate  = $this->logicUser->userCodeProfit($paycode['co_id'],$uid);
                $userCodes[$k]['urate'] =  $urate;

            }
        }

        $this->assign('list', $userCodes);
        return $this->fetch();
    }

    /**
     * 新增下级商户
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     *
     * @return mixed
     */
    public function addUser(){

        if($this->request->isPost()){
            if ($this->request->post('u/a')['puid'] == is_login()){
                //创建商户
                $this->result($this->logicLogin->doregister($this->request->post('u/a')));
            }else{
                $this->result(0,'非法操作，请重试！');
            }
        }
        return $this->fetch();
    }

    /**
     * 编辑商户
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     *
     * @return mixed
     */
    public function editUser(){
        if($this->request->isPost()){
            if ($this->request->post('i/a')['puid'] == is_login()){
                $this->result($this->logicUser->editUser($this->request->post('i/a')));
            }else{
                $this->result(0,'非法操作，请重试！');
            }
        }
        //读取商户信息
        $this->assign('user',$this->logicUser->getUserInfo([
                'puid' =>is_login(),
                'uid' =>$this->request->param('uid','')
            ]));

        return $this->fetch();
    }
}