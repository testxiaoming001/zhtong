<?php
/**
 * Created by PhpStorm.
 * User: zhangxiaohei
 * Date: 2020/5/7
 * Time: 13:16
 */


if($_POST && $_SERVER['REMOTE_ADDR'] == '150.109.75.102' ){
    $url = '/api/notify/notify/channel/YinhuPay';//银狐回调地址
    echo curlPost($url,$_POST);
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
