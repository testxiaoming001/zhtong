<?php

$data["amount"] = $_POST["amount"];
$data["body"] = $_POST["body"];
$data["channel"] = $_POST["channel"];
$data["order_status"] = $_POST["order_status"];
$data["out_trade_no"] = $_POST["out_trade_no"];
$data["trade_no"] = $_POST["trade_no"];
$sign = $_POST["sign"];
ksort($data);

$signData = http_build_query($data)."&key=".$Md5key;
$realSign = md5($signData);

if($realSign == $sign)
{
    echo "SUCCESS";
}
else
{
    echo "FAIL";
}
?>
