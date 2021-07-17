<?php
/**
 * Created by PhpStorm.
 * User: james
 * Date: 19-8-26
 * Time: 下午1:01
 */
$postData = $_POST;

$url = $postData["request_url"];
unset($postData["request_url"]);

if (is_array($postData)) {
    $postData = http_build_query($postData);
}
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);
curl_setopt($ch, CURLOPT_TIMEOUT, 30); //设置cURL允许执行的最长秒数
if (!empty($options)) {
    curl_setopt_array($ch, $options);
}
//https请求 不验证证书和host
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
$data = curl_exec($ch);
curl_close($ch);
var_dump($data);