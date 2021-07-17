<?php
/**
 * Created by PhpStorm.
 * User: james
 * Date: 19-3-8
 * Time: 上午10:21
 */
// [ 应用入口文件 ]
ini_set("display_errors", "On");
error_reporting(E_ALL);

$adminAllowIps = ['52.231.136.27','18.163.123.137','18.166.225.53','54.179.85.231','54.179.85.231','175.176.33.147','175.176.33.140','175.176.32.184','175.176.32.212','175.176.33.255','175.176.32.139','175.176.32.221','175.176.33.68','172.105.115.137','175.176.33.152','175.176.33.60','175.176.32.81','148.66.132.12','175.176.33.138','211.72.174.83','3.1.217.173','175.176.32.158','3.1.217.173','125.227.22.93'];
/****************入口访问ip校验开始**********************/
$requestUrl = $_SERVER['REQUEST_URI'];
if (strpos($requestUrl, '/index.php') !== false) {
    $requestUrl = str_replace('/index.php', '', $requestUrl);
}
$urls = array_filter(explode('/', $requestUrl));
if (strtolower(current($urls)) == 'admin' && !in_array($_SERVER['REMOTE_ADDR'],$adminAllowIps)) {
//    die('Admin访问ip不允许');
}
/******************入口访问ip校验结束********************/


//检测安装
//if(!file_exists(__DIR__ . '/data/install.lock')){
//    // 绑定安装模块
//    define('BIND_MODULE', 'install');
//}
// 定义项目路径
define('APP_PATH', __DIR__ . '/application/');
// 定义上传路径
define('UPLOAD_PATH', __DIR__ . '/uploads/');
// 定义数据目录
define('DATA_PATH', __DIR__ . '/data/');

// 定义配置目录
define('CONF_PATH', DATA_PATH . 'conf/');
// 定义证书目录
define('CRET_PATH', DATA_PATH . 'cret/');
// 定义EXTEND目录
define('EXTEND_PATH', DATA_PATH . 'extend/');
// 定义RUNTIME目录
define('RUNTIME_PATH', DATA_PATH . 'runtime/');

// 加载框架引导文件
require __DIR__ . '/thinkphp/start.php';
