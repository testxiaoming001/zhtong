<?php
/**
 * Created by PhpStorm.
 * User: zhangxiaohei
 * Date: 2020/5/25
 * Time: 20:25
 */

namespace app\api\controller;


use app\common\controller\BaseApi;

class BasePay extends BaseApi
{

    public function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub


        $type = 'view';
        //读取配置
        $index_view_path = \app\common\model\Config::where(['name'=>'index_view_path'])->find()->toArray();
        if($index_view_path){
            if($index_view_path['value'] == 'view1' ){
                $type = 'view1';
            }
        }

        if(($type == 'view')  &&  $this->request->controller() != 'Pay'  ){
            http_response_code(404);
            die();
        }

        if(($type == 'view1')  &&  $this->request->controller() != 'PayV2'  ){
            http_response_code(404);
            die();
        }



        //读取配置 前台域名白名单
        $pay_domain_white_list = \app\common\model\Config::where(['name'=>'pay_domain_white_list'])->find()->toArray();
        if($pay_domain_white_list){
            if($pay_domain_white_list['value']){
//                var_dump($_SERVER['HTTP_HOST']);die();
                if($pay_domain_white_list['value'] != $_SERVER['HTTP_HOST'] ){
                    header("HTTP/1.0 404 Not Found");//使HTTP返回404状态码
                    die();
                }
            }
        }


    }
}
