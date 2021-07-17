<?php

/**
 *  +----------------------------------------------------------------------
 *  | 中通支付系统 [ WE CAN DO IT JUST THINK ]
 *  +----------------------------------------------------------------------
 *  | Copyright (c) 2018 http://www.iredcap.cn All rights reserved.
 *  +----------------------------------------------------------------------
 *  | Licensed ( https://www.apache.org/licenses/LICENSE-2.0 )
 *  +----------------------------------------------------------------------
 *  | Author: Brian Waring <BrianWaring98@gmail.com>
 *  +----------------------------------------------------------------------
 */

namespace app\index\controller;


use app\common\library\RsaUtils;
use think\Request;

class Api extends Base
{

    /**
     * 接口基本
     *
     * @return mixed
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function index()
    {
        $this->apiCommon();
        return $this->fetch();
    }

    /**
     * 重置密钥
     */
    public function resetKey()
    {
        $pass = $this->request->param('pass');
        if (!$pass) {
            $this->error('非法操作');
        }

        $user = $this->logicUser->getUserInfo(['uid' => is_login()]);
        //验证登录密码
        if ($user && !empty($user['password']) && data_md5_key($pass) == $user['password']) {
            $this->result($this->logicApi->resetKey($this->request->post('id')));
        } else {
            $this->error('密码错误');
        }

    }

    /**
     * 可用渠道
     *
     * @return mixed
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function channel()
    {
//        $channel = $this->logicPay->getCodeList(['status' => '1'], true, 'create_time desc', 10);
//        $this->assign('list',$channel);
        //所有渠道列表
//        $channel = $this->logicPay->getAccountList([],true, 'create_time desc',false);
//        //获取商户分润详细信息
//        $userProfit = $this->logicUser->getUserProfitList(['uid' =>is_login()]);
//        if ($userProfit) {
//            foreach ($userProfit as $item) {
//                $_tmpData[$item['cnl_id']] = $item;
//            }
//        }
//        //重组渠道列表
//        if ($channel) {
//            foreach ($channel as $key => $item) {
//                //dump($item);
//                $channel[$key]['urate']    = isset($_tmpData[$item['id']]['urate']) ? $_tmpData[$item['id']]['urate'] : $item['urate'];
//                $channel[$key]['grate'] = isset($_tmpData[$item['id']]['grate']) ? $_tmpData[$item['id']]['grate'] : $item['grate'];
//            }
//        }

        //查询当前商户对应的支付产品
        $where['a.status'] = 1;
        $uid = is_login();
        $where['uid'] = $uid;
        $userCodes = $this->logicUser->userPayCodes($where, 'co_id,code,b.name as code_name', 'a.create_time desc', false);
        $userCodes = collection($userCodes)->toArray();
        if (is_array($userCodes) && !empty($userCodes)) {
            //随机一个支付产品的渠道账户对应的当前商户的费率
            foreach ($userCodes as $k => $paycode) {
                $urate = $this->logicUser->userCodeProfit($paycode['co_id'], $uid);
                $userCodes[$k]['urate'] = $urate;

            }
        }
        $this->assign('list', $userCodes);
        return $this->fetch();
    }


    /**
     * API公共
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function apiCommon()
    {
        if ($this->request->isPost()) {

            //暂时去掉商户设置ip白名单
            if (isset($this->request->post('u/a')['auth_ips'])) {
                $this->result(0, '非法操作，请重试！');
            }

            if ($this->request->post('u/a')['uid'] == is_login()) {
                $this->result($this->logicApi->editApi($this->request->post('u/a')));
            } else {
                $this->result(0, '非法操作，请重试！');
            }
        }
        $this->assign('api', $this->logicApi->getApiInfo(['uid' => is_login()]));

        $this->assign('rsa', $this->logicConfig->getConfigInfo(['name' => 'rsa_public_key'], 'value'));
        $this->assign('notify_ip', $this->logicConfig->getConfigInfo(['name' => 'notify_ip'], 'value'));
    }




}