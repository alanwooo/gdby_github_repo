-- -------------------------------------
-- Table structure for t_complaint
-- -------------------------------------
DROP TABLE IF EXISTS `t_complaint`;
CREATE TABLE `t_complaint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `ctype` varchar(255) NOT NULL DEFAULT '' COMMENT '投诉类型',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '对应的订单编号',
  `order_number` char(32) NOT NULL DEFAULT '' COMMENT '对应的订单编号',
  `site_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属系统',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '地区',
  `line_id` int(11) NOT NULL DEFAULT '0' COMMENT '线路',
  `invite_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属销售',
  `shop_name` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '客户姓名',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '客户电话',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '客户地址',
  `deliver_date` int(11) NOT NULL DEFAULT '0' COMMENT '送货日期',
  `deliver_time` int(11) NOT NULL DEFAULT '0' COMMENT '送货时间',
  `feedback` varchar(255) NOT NULL DEFAULT '' COMMENT '反馈人：1客户，2销售',
  `total_price` int(11) NOT NULL DEFAULT '0' COMMENT '总计金额',
  `description` text NOT NULL DEFAULT '' COMMENT '问题描述',
  `suggest` text NOT NULL DEFAULT '' COMMENT '处理意见',
  `progress1` text NOT NULL DEFAULT '' COMMENT '问题进度1',
  `progress2` text NOT NULL DEFAULT '' COMMENT '问题进度2',
  `progress3` text NOT NULL DEFAULT '' COMMENT '问题进度3',
  `sale_id` int(11) NOT NULL DEFAULT '0' COMMENT '销售/品控处理人',
  `logistics_id` int(11) NOT NULL DEFAULT '0' COMMENT '物流组受理人',
  `solution` text NOT NULL DEFAULT '' COMMENT '处理意见',
  `creator` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `creator_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建人ID',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态:1处理中，2已完成',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `order_number` (`order_number`),
  KEY `site_id` (`site_id`),
  KEY `city_id` (`city_id`),
  KEY `line_id` (`line_id`),
  KEY `ctype` (`ctype`),
  KEY `mobile` (`mobile`),
  KEY `creator_id` (`creator_id`),
  KEY `created_time` (`created_time`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='投诉表';
