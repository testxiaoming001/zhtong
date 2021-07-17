<?php
/**
 * Created by PhpStorm.
 * User: james
 * Date: 9/1/19
 * Time: 10:53 PM
 */

    header('content-type:text/html;charset=uft-8');
    //重定向页面
    header("location:".urldecode($_GET['url']));