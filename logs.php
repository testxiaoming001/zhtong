<?php
function scandirFolder($path)
{
    $list = [];
    $temp_list = array_reverse(scandir($path));
    foreach ($temp_list as $file) {
//排除根目录
        if ($file != ".." && $file != ".") {
            if (is_dir($path . "/" . $file)) {
                //子文件夹，进行递归
                $list[$file] = scandirFolder($path . "/" . $file);
            } else {
                //根目录下的文件

                $list[] = $file;
            }
        }
    }
    return $list;

}

/**
 * Created by PhpStorm.
 * User: 86135
 * Date: 2020/2/8
 * Time: 19:54
 */
$errorType = $_GET['type']?$_GET['type']:'error';
$errorFile= getcwd() . '/data/runtime/log/'.date('Ym').'/'.date('d').'_'.$errorType.'.log';
$contents  = file_get_contents($errorFile);
print_r($contents);
