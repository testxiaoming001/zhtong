-- 7-22  修改后台密码为  123456a
UPDATE `cm_admin` SET `password` = '17cf2f98e09fa2af801de5b6ee9e1a58' WHERE `cm_admin`.`username` = 'admin';



-- 7-4 后台域名白名单

INSERT INTO `cm_config` (`id`, `name`, `title`, `type`, `sort`, `group`, `value`, `extra`, `describe`, `status`, `create_time`, `update_time`) VALUES (NULL, 'admin_domain_white_list', '后台域名白名单', '0', '0', '0', '', '', '如https://www.baidu.com/ 请输入www.baidu.com', '1', '0', '0');

-- 7-1 域名白名单
INSERT INTO `cm_config` (`id`, `name`, `title`, `type`, `sort`, `group`, `value`, `extra`, `describe`, `status`, `create_time`, `update_time`) VALUES (NULL, 'index_domain_white_list', '前台域名白名单', '1', '0', '0', '', '', '如https://www.baidu.com/ 请输入www.baidu.com', '1', '0', '0'), (NULL, 'pay_domain_white_list', '下单域名白名单', '0', '0', '0', '', '', '如https://www.baidu.com/ 请输入www.baidu.com', '1', '0', '0')
-- 6-25    后台 前台  模板配置分离
INSERT INTO `cm_config` (`id`, `name`, `title`, `type`, `sort`, `group`, `value`, `extra`, `describe`, `status`, `create_time`, `update_time`) VALUES (NULL, 'admin_view_path', '后台模板', '3', '0', '0', 'view', 'view:默认,baisha:白沙', '', '1', '0', '1585833746')
UPDATE `cm_config` SET `title` = '前台模板' , `extra` = 'view:默认,baisha:白沙,view1:版本2'  WHERE `cm_config`.`name` = 'index_view_path';



-------2021-3-2
ALTER TABLE `www_zf_com`.`cm_user`
ADD COLUMN `pao_ms_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '如果跑分出码对于码商的ids,逗号拼接' AFTER `last_login_time`




ALTER TABLE `www_zf_com`.`cm_user`
ADD COLUMN `is_can_df_from_index` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否允许前端发起代付0=》不允许 1=》允许' AFTER `pao_ms_ids`



----代付相关配置
UPDATE `cm_config` SET   `type` = 1, `group` = 0   WHERE `name` = 'daifu_admin_id';
UPDATE `cm_config` SET   `type` = 1, `group` = 0   WHERE `name` = 'daifu_host';
UPDATE `cm_config` SET   `type` = 1, `group` = 0   WHERE `name` = 'daifu_key';
UPDATE `cm_config` SET   `type` = 1, `group` = 0   WHERE `name` = 'daifu_notify_url';
UPDATE `cm_config` SET   `type` = 1, `group` = 0   WHERE `name` = 'daifu_notify_ip';


ALTER TABLE `www_zf_com`.`cm_pay_channel`
ADD COLUMN `tg_group_id` varchar(50) NOT NULL DEFAULT '' COMMENT '当前渠tg群id' AFTER `wirhdraw_charge`,
ADD COLUMN `channel_secret` varchar(50) NOT NULL DEFAULT '' COMMENT '渠道密钥' AFTER `tg_group_id`

-----初始化所有的渠道的md5值
update cm_pay_channel set channel_secret=MD5(action)



ALTER TABLE `www_zf_com`.`cm_user`
ADD COLUMN `mch_secret` varchar(50) NOT NULL DEFAULT '' COMMENT '商户tg密钥' AFTER `is_can_df_from_index`
ALTER TABLE `www_zf_com`.`cm_user`
ADD COLUMN `tg_group_id` varchar(50) NOT NULL DEFAULT '' COMMENT '商户群组id' AFTER `mch_secret`
-----初始化所有的商户的MD5值
update cm_user set mch_secret=md5(uid)

------支付系统机器人的token
INSERT INTO `www_zf_com`.`cm_config`(`id`, `name`, `title`, `type`, `sort`, `group`, `value`, `extra`, `describe`, `status`, `create_time`, `update_time`) VALUES (45, 'global_tgbot_token', '全局机器人token唯一标识', 1, 0, 0, '1606343608:AAExquNsvV2Q66aRZ8q8wD9PwfmOx0tiSRc', '', '', 1, 0, 0);



-------支付后台码商管理
INSERT INTO `www_zf_com`.`cm_menu`(`id`, `pid`, `sort`, `name`, `module`, `url`, `is_hide`, `icon`, `status`, `update_time`, `create_time`) VALUES (117, 0, 100, ''码商管理'', ''admin'', ''Ms'', 0, ''senior'', 1, 1540483267, 1539583897);
INSERT INTO `www_zf_com`.`cm_menu`(`id`, `pid`, `sort`, `name`, `module`, `url`, `is_hide`, `icon`, `status`, `update_time`, `create_time`) VALUES (118, 117, 100, ''码商列表'', ''admin'', ''Ms/index'', 0, '''', 1, 1539584897, 1539583897);


----代付订单表新增抢单的码商ID
ALTER TABLE `www_zf_com`.`cm_daifu_orders`
ADD COLUMN `ms_id` int(11) NOT NULL DEFAULT 0 COMMENT '当前抢单的码商ID' AFTER `notify_result`


----代付订单表新增订单完成时间
ALTER TABLE `www_zf_com`.`cm_daifu_orders`
ADD COLUMN `finish_time` int(11) NOT NULL DEFAULT 0 COMMENT '订单完成时间' AFTER `ms_id`


----代付订单表新增抢单时间
ALTER TABLE `www_zf_com`.`cm_daifu_orders`
ADD COLUMN `matching_time` int(11) NOT NULL DEFAULT 0 COMMENT '抢单时间' AFTER `finish_time`





ALTER TABLE `www_zf_com`.`cm_deposite_card`
ADD COLUMN `ms_id` int(11) NOT NULL DEFAULT 0 COMMENT '添加码商' AFTER `update_time`,
ADD COLUMN `uid` int(11) NOT NULL DEFAULT 0 COMMENT '专属商户' AFTER `ms_id`




----------银行卡变动日志
CREATE TABLE `cm_deposite_card_log` (
  `log_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `bank_id` mediumint(8) NOT NULL COMMENT '商户ID',
	`chang_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' comment '1：充值 2：代付扣减',
	`type` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' comment '1：增加 2：减少',
  `preinc` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '变动前金额',
  `suffixred` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '变动后金额',
  `remarks` varchar(255) NOT NULL COMMENT '资金变动说明',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='代付银行卡日志';



------代付订单表新增代付银行卡id
ALTER TABLE `www_zf_com`.`cm_daifu_orders`
ADD COLUMN `df_bank_id` int(11) NOT NULL DEFAULT 0 COMMENT '码商代付银行卡id' AFTER `matching_time`


-----代付银行卡新增可用余额字段
ALTER TABLE `www_zf_com`.`cm_deposite_card`
ADD COLUMN `balance` decimal(11, 3) NOT NULL COMMENT '当前银行卡余额' AFTER `uid`



ALTER TABLE `www_zf_com`.`cm_deposite_card_log`
ADD COLUMN `amount` decimal(11, 3) NOT NULL COMMENT '变动金额' AFTER `update_time`



ALTER TABLE `www_zf_com`.`cm_daifu_orders`
ADD COLUMN `error_reason` varchar(30) NOT NULL DEFAULT '' COMMENT '代付失败原因' AFTER `df_bank_id`




ALTER TABLE `www_zf_com`.`cm_pay_channel`
ADD COLUMN `limit_moneys` varchar(255) NOT NULL DEFAULT '' COMMENT '固定金额 不填写默认不限制' AFTER `channel_secret`


CREATE TABLE `cm_ms` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL COMMENT '上级ID',
  `account` char(20) NOT NULL DEFAULT '0' COMMENT '用户账号',
  `mobile` char(20) NOT NULL COMMENT '用户手机号',
  `u_yqm` varchar(225) NOT NULL COMMENT '邀请码',
  `username` varchar(255) NOT NULL DEFAULT '',
  `login_pwd` varchar(225) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `login_salt` char(5) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `money` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户余额',
  `reg_date` int(11) NOT NULL COMMENT '注册时间',
  `reg_ip` varchar(20) NOT NULL COMMENT '注册IP',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户锁定  1 不锁  0拉黑  -1 删除',
  `activate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1-已激活 0-未激活',
  `use_grade` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户等级',
  `tg_num` int(11) NOT NULL COMMENT '总推人数',
  `rz_st` int(1) NOT NULL DEFAULT '0' COMMENT '资料完善状态，1OK2no',
  `zsy` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '总收益',
  `add_admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '添加该用户的管理元id',
  `work_status` int(1) NOT NULL DEFAULT '0',
  `security_salt` varchar(225) NOT NULL,
  `security_pwd` varchar(225) NOT NULL,
  `token` varchar(45) DEFAULT NULL,
  `is_allow_work` tinyint(1) DEFAULT '0' COMMENT '是否被禁止工作',
  `last_online_time` int(11) DEFAULT NULL,
  `tg_level` tinyint(1) DEFAULT NULL COMMENT 'ç¨·ä»£çç­çº§,ç³»ç»ç»éè¯·ç æ³¨åçç¨·ä¸º1,çº§ä¾æ¬¡ç±»æ¨',
  `updatetime` int(11) DEFAULT NULL COMMENT 'ä¿®æ¹æ¶é´',
  `google_status` int(11) DEFAULT '0' COMMENT 'googleå¯é¥ç¶æ',
  `google_secretkey` varchar(100) DEFAULT NULL COMMENT 'å¯é¥',
  `auth_ips` varchar(255) DEFAULT '' COMMENT 'ç¨·è®¿é®ç½åå',
  `blocking_reason` varchar(100) DEFAULT NULL COMMENT 'å»ç»ååå ',
  `cash_pledge` decimal(10,2) NOT NULL COMMENT '押金',
  `payment_amount_limit` decimal(10,2) NOT NULL COMMENT '可完成金额上线',
  `bank_rate` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '银行卡费率',
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  UNIQUE KEY `account` (`account`) USING BTREE,
  KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



ALTER TABLE `www_zf_com`.`cm_ms`
ADD COLUMN `bank_rate` tinyint(1) UNSIGNED NOT NULL DEFAULT 5 COMMENT '银行卡费率' AFTER `payment_amount_limit`


CREATE TABLE `cm_ewm_pay_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_id` int(11) NOT NULL DEFAULT '0' COMMENT '属于哪个用户',
  `status` int(1) DEFAULT '0' COMMENT '是否正常使用　０表示正常，１表示禁用',
  `account_name` varchar(50) NOT NULL DEFAULT '' COMMENT '收款账户',
  `bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '开户行',
  `account_number` varchar(255) NOT NULL DEFAULT '' COMMENT '收款号码',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `user_name` varchar(45) NOT NULL DEFAULT '' COMMENT '用户名',
  `bonus_points` tinyint(3) NOT NULL DEFAULT '0' COMMENT '提成1000分之一',
  `success_order_num` int(10) NOT NULL DEFAULT '0' COMMENT '支付成功笔数',
  `updated_at` int(11) NOT NULL COMMENT '最后更新时间',
  `is_lock` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否锁定',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `forbidden_reason` varchar(32) DEFAULT NULL COMMENT '禁用原因',
  `order_today_all` smallint(5) NOT NULL DEFAULT '0' COMMENT '今日单量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='码商二维码表';



CREATE TABLE `cm_ewm_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `add_time` int(10) DEFAULT NULL,
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单号',
  `order_price` decimal(10,2) DEFAULT NULL COMMENT '订单价格',
  `status` int(11) DEFAULT '0',
  `gema_userid` int(11) DEFAULT '0' COMMENT '所属用户',
  `qr_image` text,
  `pay_time` int(10) DEFAULT NULL COMMENT '支付时间',
  `code_id` int(10) DEFAULT NULL,
  `order_pay_price` decimal(10,2) DEFAULT NULL COMMENT '实际支付价格',
  `gema_username` varchar(45) DEFAULT NULL COMMENT '个码用户名',
  `note` varchar(45) DEFAULT NULL,
  `out_trade_no` varchar(200) DEFAULT NULL,
  `code_type` int(10) DEFAULT NULL,
  `bonus_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_back` int(1) NOT NULL DEFAULT '0',
  `is_upload_credentials` int(1) NOT NULL DEFAULT '0',
  `credentials` varchar(500) DEFAULT NULL,
  `sure_ip` varchar(45) NOT NULL DEFAULT '0',
  `is_handle` int(1) DEFAULT '0',
  `visite_ip` varchar(32) DEFAULT NULL COMMENT '访问ip',
  `visite_area` varchar(200) DEFAULT NULL COMMENT '访问区域',
  `visite_time` int(11) DEFAULT NULL COMMENT '访问时间',
  `merchant_order_no` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '支付平台下游商户商户订单号',
  `visite_clientos` varchar(50) DEFAULT NULL COMMENT '访问设备',
  `grab_a_single_type` int(11) NOT NULL DEFAULT '1' COMMENT '抢单类型 1 抢单扣余额 2 抢单不扣余额',
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '管理员id',
  `notify_result` text COMMENT '回调返回内容成功为 SUCCESS',
  `visite_token` varchar(255) DEFAULT NULL COMMENT '访问token',
  `notify_url` varchar(255) DEFAULT NULL COMMENT '回调地址',
  `member_id` int(11) DEFAULT NULL COMMENT '支付商户id',
  `pay_username` varchar(255) NOT NULL DEFAULT '' COMMENT '付款人姓名',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_no` (`order_no`) USING BTREE,
  KEY `search` (`order_no`,`gema_username`,`status`,`add_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;





CREATE TABLE `cm_ms_somebill` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `jl_class` int(11) NOT NULL COMMENT '流水类别：1佣金2团队奖励3充值4提现5订单匹配 6平台操作 7关闭订单',
  `info` varchar(225) NOT NULL COMMENT '说明',
  `addtime` varchar(225) NOT NULL COMMENT '事件时间',
  `jc_class` varchar(225) NOT NULL COMMENT '分+ 或-',
  `num` float(10,2) NOT NULL COMMENT '币量',
  `pre_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变化前',
  `last_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT 'åå¨变化后¢',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='码商流水账单';

------码商订单菜单栏 (自己找一下码商管理菜单栏的id作为整个菜单的pid)
INSERT INTO `www_zf_com`.`cm_menu`(`pid`, `sort`, `name`, `module`, `url`, `is_hide`, `icon`, `status`, `update_time`, `create_time`) VALUES (117, 100, '码商订单', 'admin', 'Ms/orders', 0, '', 1, 1539584897, 1539584897);


INSERT INTO `www_zf_com`.`cm_menu`(`pid`, `sort`, `name`, `module`, `url`, `is_hide`, `icon`, `status`, `update_time`, `create_time`) VALUES (117, 100, '码商流水', 'admin', 'Ms/bills', 0, '', 1, 1539584897, 1539584897);




ALTER TABLE `www_zf_com`.`cm_ewm_pay_code`
ADD COLUMN `failed_order_num` smallint(5) NOT NULL DEFAULT 0 COMMENT '二维码失败次数' AFTER `order_today_all`



ALTER TABLE `www_zf_com`.`cm_ms`
MODIFY COLUMN `bank_rate` float(4, 2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '银行卡费率' AFTER `payment_amount_limit`



INSERT INTO `www_zf_com`.`cm_menu`(`id`, `pid`, `name`, `module`, `url`) VALUES (121, 117, '码商二维码', 'admin', 'Ms/payCodes')


INSERT INTO `www_zf_com`.`cm_menu`(`id`, `pid`, `sort`, `name`, `module`, `url`, `is_hide`, `icon`, `status`, `update_time`, `create_time`) VALUES (122, 94, 100, '渠道明细', 'admin', 'Orders/channelV2', 0, '', 1, 1544362599, 1539583897);


------码商登录白名单
CREATE TABLE `cm_ms_white_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ms_id` int(11) NOT NULL COMMENT '码商的id',
  `md5_ip` varchar(50) NOT NULL COMMENT '码商ip白名单MD5值',
  PRIMARY KEY (`id`),
  KEY `ms_id` (`ms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 commnet '码商登录白名单' ||
 '';





 ----------用户点单、还是管理员点单
 ALTER TABLE `www_zf_com`.`cm_ewm_order`
ADD COLUMN `sure_order_role` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1：用户完成订单  2：管理员完成订单' AFTER `update_time`



------删除一周前 的码商流水和订单
DELETE   from cm_ms_somebill  WHERE addtime < (unix_timestamp(now())-86400)
DELETE   from  cm_ewm_order  WHERE add_time < (unix_timestamp(now())-86400)





