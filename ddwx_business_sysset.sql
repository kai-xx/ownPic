-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2024-08-02 17:28:12
-- 服务器版本： 5.6.50-log
-- PHP 版本： 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `shanxiyida`
--

-- --------------------------------------------------------

--
-- 表的结构 `ddwx_business_sysset`
--

CREATE TABLE `ddwx_business_sysset` (
  `id` int(11) NOT NULL,
  `aid` int(11) DEFAULT NULL,
  `default_rate` decimal(11,2) DEFAULT '0.00',
  `withdraw_weixin` tinyint(1) DEFAULT '1',
  `withdraw_aliaccount` tinyint(1) DEFAULT '1',
  `withdraw_bankcard` tinyint(1) DEFAULT '1',
  `withdrawmin` decimal(11,2) DEFAULT '1.00',
  `withdrawfee` decimal(11,2) DEFAULT '0.00',
  `product_isshow` tinyint(1) DEFAULT '0',
  `commission_canset` tinyint(1) DEFAULT '0',
  `coupon_canset` tinyint(1) DEFAULT '0',
  `commission_kouchu` tinyint(1) DEFAULT '0',
  `product_showset` tinyint(1) DEFAULT '0',
  `xieyi_show` tinyint(1) DEFAULT '0',
  `xieyi` longtext,
  `seckill_canset` tinyint(1) DEFAULT '0',
  `collage_canset` tinyint(1) DEFAULT '0',
  `diy_canset` tinyint(1) DEFAULT '0',
  `product_check` tinyint(1) DEFAULT '0',
  `article_check` tinyint(1) DEFAULT '0',
  `shortvideo_check` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `commission_autotransfer` tinyint(1) DEFAULT '0',
  `wxfw_status` tinyint(1) DEFAULT '0',
  `wxfw_mchname` varchar(255) DEFAULT NULL,
  `wxfw_appid` varchar(100) DEFAULT NULL,
  `wxfw_mchid` varchar(100) DEFAULT NULL,
  `wxfw_mchkey` varchar(100) DEFAULT NULL,
  `wxfw_apiclient_cert` varchar(255) DEFAULT NULL,
  `wxfw_apiclient_key` varchar(255) DEFAULT NULL,
  `moneypay` tinyint(1) DEFAULT '0',
  `scorein_money` decimal(11,2) DEFAULT '1.00',
  `scorein_score` int(11) DEFAULT '0',
  `parentcommission` decimal(11,2) DEFAULT '0.00',
  `show_product` tinyint(1) NOT NULL DEFAULT '1' COMMENT '首页是否显示本店商品0:否 1：是',
  `show_comment` tinyint(1) NOT NULL DEFAULT '1' COMMENT '首页是否显示店铺评价0:否 1：是',
  `show_detail` tinyint(1) NOT NULL DEFAULT '1' COMMENT '首页是否显示商家详情0:否 1：是',
  `show_link` tinyint(1) NOT NULL DEFAULT '1' COMMENT '首页是否显示联系商家0:否 1：是',
  `show_linktext` varchar(30) NOT NULL DEFAULT '' COMMENT '联系商家文字',
  `show_producttext` varchar(30) NOT NULL DEFAULT '' COMMENT '本店商品文字',
  `show_commenttext` varchar(30) NOT NULL DEFAULT '' COMMENT '店铺评价文字',
  `show_detailtext` varchar(30) NOT NULL DEFAULT '' COMMENT '商家详情文字'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ddwx_business_sysset`
--

INSERT INTO `ddwx_business_sysset` (`id`, `aid`, `default_rate`, `withdraw_weixin`, `withdraw_aliaccount`, `withdraw_bankcard`, `withdrawmin`, `withdrawfee`, `product_isshow`, `commission_canset`, `coupon_canset`, `commission_kouchu`, `product_showset`, `xieyi_show`, `xieyi`, `seckill_canset`, `collage_canset`, `diy_canset`, `product_check`, `article_check`, `shortvideo_check`, `status`, `commission_autotransfer`, `wxfw_status`, `wxfw_mchname`, `wxfw_appid`, `wxfw_mchid`, `wxfw_mchkey`, `wxfw_apiclient_cert`, `wxfw_apiclient_key`, `moneypay`, `scorein_money`, `scorein_score`, `parentcommission`, `show_product`, `show_comment`, `show_detail`, `show_link`, `show_linktext`, `show_producttext`, `show_commenttext`, `show_detailtext`) VALUES
(1, 1, '0.00', 1, 1, 1, '1.00', '0.00', 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 1, 0, 1, '山西浩宇兴禄科技有限公司1', 'wx959826f2546128a2', '1654062328', 'J5hzebsF2XXd4bZGrdkYPE2jNgjSZjCu', 'upload/1/20240523/20f5b2c6c744eb7454568a52a450993b.pem', 'upload/1/20240523/5e518f6bc2eabe35d18bc31f02c51e96.pem', 0, '1.00', 0, '0.00', 1, 1, 1, 1, '联系商家', '本店商品', '店铺评价', '商家详情'),
(2, 2, '0.00', 1, 1, 1, '1.00', '0.00', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1, 0, 1, '山西浩宇兴禄科技有限公司2', 'wx959826f2546128a2', '1654062328', 'J5hzebsF2XXd4bZGrdkYPE2jNgjSZjCu', 'upload/2/20240520/b9ed77bf289b886d0edb5df6f7a8e88b.pem', 'upload/2/20240520/5e223f01b290f7e11fecdbf5ccf0bec3.pem', 0, '1.00', 0, '0.00', 1, 1, 1, 1, '联系商家', '本店商品', '店铺评价', '商家详情');

--
-- 转储表的索引
--

--
-- 表的索引 `ddwx_business_sysset`
--
ALTER TABLE `ddwx_business_sysset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aid` (`aid`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ddwx_business_sysset`
--
ALTER TABLE `ddwx_business_sysset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
