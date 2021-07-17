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
use app\common\library\enum\CodeEnum;
use app\common\library\RsaUtils;
use app\common\logic\Log;
use app\common\model\Padmin;
use app\common\model\UserPadmin;
use think\captcha\Captcha;
use think\Request;

/*
 *此接口控制器主要提供给跑分平台管理员使用以下为可选api
 *
 */
class Papi extends Common
{

    protected $padminInfo =null;

    protected $is_super_admin_visite = false;

    protected $closeSign = ['notifybalancecashs','upload'];


    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        if($request->param('padmin_id') != config('paofen_super_admin_id'))
        {
            //跑分超级管理员放开
            $ret  = $this->modelPadmin->checkPadmin($request->param('padmin_id'));
            if($ret['code'] == CodeEnum::ERROR)
            {
                $this->result($ret);
            }
            (is_null($this->padminInfo)) && $this->padminInfo  =  $ret['data'];
            //统一签名
            if(!in_array($request->action(),$this->closeSign))
            {
                $this->checkSign($request->param(''));
            }
        }else{
            $this->is_super_admin_visite =  true;
        }
    }

    /*
     *计算签名
     * @param $param
     * @param $app_key
     * @return string
     */
    protected function  getSign($param,$app_key)
    {
        ksort($param);
        $md5str = "";
        foreach ($param as $key => $val) {
            $md5str = $md5str . $key . "=" . $val . "&";
        }
        return strtoupper(md5($md5str . "key=" . $app_key));

    }

    /*
     *统一检验签名
     * @param $param
     */
    protected function  checkSign($param)
    {
       $sign = $param['sign'];
       unset($param['sign']);
       if($sign != $this->getSign($param,$this->padminInfo->app_key))
       {
           //$this->result(['code'=>CodeEnum::ERROR,'msg'=>'验签失败']);
       }
    }


    /*
     *
     *主动拉取得跑分平台上报授权给的管理员
     * crontab  * * * * * curl http://linus.paofen.com/api/api/getPadmins
     */
    public function notifyAuthAdmins()
    {
         $hostUrl = config('paofen_url');
         $padmins =  json_decode(httpRequest($hostUrl.'api/api/getPadmins'),true);
         if($padmins['code'] == 200)
         {
             $padmins  = $padmins['data'];
             //注册到自己的数据库
             $padminModel  =new Padmin();
             $padminModel->startTrans();
             try{

                 if(false === $padminModel->execute("TRUNCATE TABLE cm_padmin"))
                 {
                     $padminModel->rollback();
                     exit;
                 }
                 if($padminModel->saveAll($padmins)==false)
                 {
                     $padminModel->rollback();
                     exit;
                 }
             }catch(\Exception $e)
             {
                 $padminModel->rollback();
                 \think\Log::error($e->getMessage());
             }
             $padminModel->commit();
         }


    }


    /*
     *提供授权管理员拉取订单
     */
    public  function notifyBalanceCashs()
    {
        $params = $this->request->param('');
        $padminUsers =   $this->logicUser->PadminUsers($params['padmin_id']);
        $padminUsersIds  = array_column($padminUsers,'uid');
        $where['a.uid']= ['in',$padminUsersIds];
        $data =  $this->logicBalanceCash->getOrderCashList($where);
        $page =  $data->render();
        //简单处理
        $page  = str_replace('/index/Papi/notifyBalanceCashs','/admin/BalanceCash/index',$page);
        $page = delete_all_between('<style', '</style>', $page);
        $data = $data->toarray()['data'];
        $this->result(1,'success',['data'=>$data,'page'=>$page]);

    }




    /*
     *
     *接收跑分授权管理员处理提现通过通知
     */
    public function notifyDealCash()
    {

        $params = $this->request->param('');
        $ret =  $this->logicBalanceCash->notifyPadminBalanceCash($params);
        if($ret['code'] == CodeEnum::ERROR)
        {
            $this->result($ret);
        }
        $update['status'] = 2;
        $update['cash_file'] = $params['cash_file'];
        $ret = $this->modelBalanceCash->where(['id'=>$params['cash_id']])->update($update);
        if($ret!==false)
        {
            $this->result(['code'=>CodeEnum::SUCCESS,'msg'=>'平台已处理']);
        }
        $this->result(['code'=>CodeEnum::SUCCESS,'msg'=>'处理失败']);
    }




    /*
     *跑分平台拒绝提现申请通知
     *
     */
    public function refuseCash()
    {
        $params = $this->request->param('');
        $this->result($this->logicBalanceCash->rebutBalanceCash(['a.id'=>$params['cash_id']]));
    }


     /*
     *跑分授权管理员添加商户通知
     */
     public function notifyAddUser()
     {
         $params = $this->request->param('');
         if($this->request->isPost())
         {
             $ret = $this->logicUser->addUser($params);
             if($ret['code'] == CodeEnum::ERROR)
             {
                  $this->result($ret);
             }
             //绑定商户和跑分授权管理员信息
             $userPadminModel = new UserPadmin();
             $ret  =$userPadminModel->save([
                 'uid'=>$ret['data']['uid'],
                 'p_admin_id'=>$this->padminInfo->padmin_id,
                 'p_admin_appkey'=>$this->padminInfo->app_key,
             ]);
             if($ret!==false)
             {
                 $this->result(['code'=>CodeEnum::SUCCESS,'msg'=>'添加成功']);
             }
             $this->result(['code'=>CodeEnum::ERROR,'msg'=>'添加失败']);
         }
         $this->result(['code'=>0,'msg'=>'请使用POST方式提交']);
     }

    /*
     *
     * 提供给跑分管理员上传文件API
     */
    public function upload()
    {

        if($this->request->isPost()) {
            $ret= $this->logicFile->fileUpload('file',$this->request->param('path'));
            if($ret['code'] == CodeEnum::ERROR)
            {
                $this->result(['code'=>CodeEnum::ERROR,'msg'=>$ret['msg']]);
            }
            $remoteFileUrl = $this->request->domain().$ret['data']['src'];
            $this->result(['code'=>CodeEnum::SUCCESS,'msg'=>'Upload Success','data'=>['file_src'=>$remoteFileUrl]]);
        }
    }





}