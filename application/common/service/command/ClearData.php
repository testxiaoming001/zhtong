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

namespace app\common\service\command;


use app\common\logic\Queue;
use think\console\Command;
use think\console\Input;
use think\console\Output;
use think\Db;
use think\Log;

/*
 *每天凌晨清空响应数据数据
 * Class PushOrderWait
 * @package app\common\service\command
 */

class ClearData extends Command
{

    /**
     * 配置定时器的信息
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    protected function configure()
    {
        $this->setName('cleardata')->setDescription('ClearData at 00:00:00');
    }

    /**
     *
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     * @param Input $input
     * @param Output $output
     * @return int|null|void
     */
    protected function execute(Input $input, Output $output)
    {


        // 输出到日志文件
        $output->writeln("clear data  start");
        // 定时器需要执行的内容

        try{
            //删除七天前的数据
            $where['create_time'] = ['lt',time()-86400*10];
            $tables = ['action_log','balance_change','balance_cash','orders','orders_notify'];
            foreach ($tables as $k=>$v)
            {
                //order表保留7天的数据
                if($v == 'orders'){
                    db($v)->where(['create_time'=>['lt',time()-86400*10]])->delete();
                }else {
                    db($v)->where($where)->delete();
                }
            }
        }catch (\Exception $e){
            $output->writeln($e->getMessage());
            Log::error("clear data Fail:[".$e->getMessage()."]");
        }
        // .....
        $output->writeln("clear data  end....");
    }
}
