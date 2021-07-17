<?php
/**
 * Created by PhpStorm.
 * User: zhangxiaohei
 * Date: 2020/5/5
 * Time: 1:04
 */

$notify_url  =urldecode($_GET['notify_url']);
if($notify_url){
    $form_param  =$_POST;
    echo curlPost($notify_url,$form_param);
}
 function curlPost($url = '', $postData = '', $options = array(),$timeOut=5)
{
    if (is_array($postData)) {
        $postData = http_build_query($postData);
    }
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);
    curl_setopt($ch, CURLOPT_TIMEOUT, $timeOut); //设置cURL允许执行的最长秒数
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);

    if (!empty($options)) {
        curl_setopt_array($ch, $options);
    }
    //https请求 不验证证书和host
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    $data = curl_exec($ch);

    $headers = curl_getinfo($ch);
//        echo json_encode($headers);
    curl_close($ch);
    return $data;
}