<?php
/**
 * Created by PhpStorm.
 * User: 86135
 * Date: 2020/2/8
 * Time: 11:07
 */

ignore_user_abort(true);
set_time_limit(0);
$dir = getcwd();
$cmd = "cd {$dir} &&  sudo  /usr/bin/git  pull";
exec($cmd,$output);
print_r($output);
