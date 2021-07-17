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

use app\common\controller\Common;
use app\common\library\Activation;
use app\common\library\Geetest;
use app\common\model\Padmin;
use think\Log;
use think\Request;

class Login extends Basis
{
    /**
     * 初始化极验
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function startGeetest() {
        $data = [
            "user_id" => session_id(), # 网站用户id
            "client_type" => "web", #web:电脑上的浏览器；h5:手机上的浏览器，包括移动应用内完全内置的web_view；native：通过原生SDK植入APP应用的方式
            "ip_address" => $this->request->ip() # 请在此处传输用户请求验证时所携带的IP
        ];
        $GtSdk = new Geetest(config('geetest.captcha_id'), config('geetest.private_key'));
        $status = $GtSdk->pre_process($data, 1);
        session('gtserver', $status);
        session('user_id', session_id());
        echo $GtSdk->get_response_str();
    }

    /**
     * 极验检查
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function checkGeetest() {
        $data = [
            "user_id" => session_id(), # 网站用户id
            "client_type" => "web", #web:电脑上的浏览器；h5:手机上的浏览器，包括移动应用内完全内置的web_view；native：通过原生SDK植入APP应用的方式
            "ip_address" => $this->request->ip() # 请在此处传输用户请求验证时所携带的IP
        ];
        $GtSdk = new Geetest(config('geetest.captcha_id'), config('geetest.private_key'));
        $param = $this->request->post();
        if (session('gtserver') == 1) {
            $result = $GtSdk->success_validate(
                $param['geetest_challenge'],
                $param['geetest_validate'],
                $param['geetest_seccode'], $data);

            if ($result == 1){
                exit(json_encode(['status'=>'success']));
            }
        } else { //宕机
            Log::error(json_encode($param));
            exit(json_encode(['status'=>'error']));
        }
    }
    /**
     * 登录
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     * @return mixed
     */
    public function login(){

        //登录检测
        is_login() && $this->redirect(url('index/User/index'));
        $this->request->isPost() && $this->result(
            $this->logicLogin->dologin(
                $this->request->post('username'),
                $this->request->post('password', '123456'),
                $this->request->post('google_code'),
                $this->request->post('vercode')
            )
        );
        return $this->fetch();
    }

    /**
     * 用户注册
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     * @return mixed
     */
    public function register(){
        // POST提交
        $this->request->isPost() && $this->result(
            $this->logicLogin->doregister($this->request->post())
        );
        $padminModel  =new Padmin();
        $padmins =  $padminModel->where(['status'=>$padminModel::STATUS_SUCCESS])->select();
        $this->assign('padmins',$padmins);
        return $this->fetch();
    }

    /**
     * 注销登录
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function logout()
    {
        $this->redirect($this->logicLogin->logout());
    }

    /**
     * 检查用户邮箱
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function checkUser(){
        $this->request->isPost() && $this->result(
            $this->logicLogin->checkField('account',$this->request->post('username'))
        );
    }

    /**
     * 检查手机号码
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function checkPhone(){
        $this->request->isPost() && $this->result(
            $this->logicLogin->checkField('phone',$this->request->post('phone'))
        );
    }


    /**
     * 发送验证码
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function sendSmsCode(){
        $this->request->isPost() && $this->result(
            $this->logicLogin->sendCode($this->request->post('phone'))
        );
    }

    /**
     * 发送验证码
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function sendMailCode(){
        $this->request->isPost() && $this->result(
            $this->logicLogin->sendCode($this->request->post('account'))
        );
    }

    /**
     * 发送激活邮件
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     * @return mixed
     */
    public function sendActiveCode(){

        $this->request->isPost() && $this->result(
            $this->logicLogin->sendActiveCode(
                $this->request->post('account')
            )
        );

        return $this->fetch('send-active');

    }

    /**
     * 注册账户验证
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     * @param string $code
     * @return mixed
     */
    public function checkActiveCode($code = ''){
        $res = $this->logicLogin->activationCode($code);
        return $this->fetch('active',$res);
    }
}