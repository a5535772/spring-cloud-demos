/*
Navicat MySQL Data Transfer

Source Server         : oms-rd
Source Server Version : 50718
Source Host           : 10.88.26.16:3306
Source Database       : db_oms4_som2_dev

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-02-08 10:49:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `config_group` varchar(50) NOT NULL COMMENT '配置分组',
  `config_key` varchar(50) NOT NULL COMMENT '配置代码',
  `config_value` varchar(50) NOT NULL COMMENT '配置值',
  `is_availability` tinyint(1) NOT NULL COMMENT '是否可用',
  `description` varchar(50) NOT NULL COMMENT '简要说明',
  `last_modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_config` (`config_group`,`config_key`,`config_value`),
  KEY `idx1_sys_config` (`config_group`,`config_key`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 COMMENT='系统参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '2017-12-04 15:28:04', 'rf_account_type', '1', '店铺支付宝', '1', '退款账户类型', '2017-12-15 15:25:37');
INSERT INTO `sys_config` VALUES ('2', '2017-12-04 15:28:04', 'rf_account_type', '2', '品牌支付宝', '1', '退款账户类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('3', '2017-12-04 15:28:04', 'rf_account_type', '3', '公司支付宝', '1', '退款账户类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('4', '2017-12-04 15:28:04', 'rf_account_type', '4', '店铺微信', '1', '退款账户类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('5', '2017-12-04 15:28:04', 'rf_account_type', '5', '品牌微信', '1', '退款账户类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('6', '2017-12-04 15:28:04', 'rf_account_type', '6', '网银', '1', '退款账户类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('7', '2017-12-04 15:28:04', 'rf_account_type', '7', '银联', '1', '退款账户类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('8', '2017-12-04 15:28:04', 'rf_account_type', '8', '国泰金流', '1', '退款账户类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('9', '2017-12-04 15:28:04', 'rf_account_type', '9', 'WorldPay', '1', '退款账户类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('10', '2017-12-04 15:28:04', 'rf_account_type', '10', 'PayPal', '1', '退款账户类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('11', '2017-12-04 15:28:04', 'rf_account_type', '11', 'AsiaPay', '1', '退款账户类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('12', '2017-12-04 15:28:05', 'rf_type', '1', '赔付', '1', '退款类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('13', '2017-12-04 15:28:05', 'rf_type', '2', '退货退款', '1', '退款类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('15', '2017-12-04 15:28:05', 'rf_type', '4', '补差价', '1', '退款类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('16', '2017-12-04 15:28:05', 'rf_type', '5', '退运费', '1', '退款类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('17', '2017-12-04 15:28:05', 'rf_type', '6', '服务退款', '1', '退款类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('20', '2017-12-04 15:51:10', 'finance_apply_type', '1', '退款申请', '1', '财务申请类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('21', '2017-12-04 15:51:10', 'finance_apply_type', '2', '付款申请', '1', '财务申请类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('24', '2017-12-08 15:56:24', 'do_status_uncommitted_to_wh', '14', '过仓失败', '1', 'DO未过仓状态', '2018-01-02 20:16:29');
INSERT INTO `sys_config` VALUES ('27', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '12', '待仓库系统创单', '1', 'DO不允许被取消的状态', '2018-01-02 20:17:54');
INSERT INTO `sys_config` VALUES ('29', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '24', '已出库', '1', 'DO不允许被取消的状态', '2018-01-06 20:16:02');
INSERT INTO `sys_config` VALUES ('31', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '26', '已签收', '1', 'DO不允许被取消的状态', '2018-01-06 20:16:06');
INSERT INTO `sys_config` VALUES ('32', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '28', '完成', '1', 'DO不允许被取消的状态', '2018-01-02 20:19:11');
INSERT INTO `sys_config` VALUES ('33', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '30', '取消', '1', 'DO不允许被取消的状态', '2018-01-02 20:19:14');
INSERT INTO `sys_config` VALUES ('36', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '20', '待仓储系统取消确认', '1', 'DO不允许被取消的状态', '2018-01-06 20:15:52');
INSERT INTO `sys_config` VALUES ('37', '2017-12-14 15:40:52', 'rf_doc_no_type', '2', '平台订单号', '1', '平台订单号/oms订单号', '2018-01-18 16:14:36');
INSERT INTO `sys_config` VALUES ('38', '2017-12-14 15:40:52', 'rf_doc_no_type', '1', 'oms订单号', '1', '平台订单号/oms订单号', '2018-01-18 16:14:39');
INSERT INTO `sys_config` VALUES ('39', '2017-12-08 15:56:24', 'ro_status_not_allowed_to_cancel', '13', '取消', '1', '--RO不允许被取消的状态', '2017-12-17 16:21:03');
INSERT INTO `sys_config` VALUES ('40', '2017-12-08 15:56:24', 'ro_status_not_allowed_to_cancel', '15', '完成', '1', '--RO不允许被取消的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('42', '2017-12-08 15:56:24', 'ro_status_not_allowed_to_cancel', '3', '待仓储系统取消确认', '1', '--RO不允许被取消的状态', '2017-12-17 16:21:58');
INSERT INTO `sys_config` VALUES ('43', '2017-12-08 15:56:24', 'ro_status_uncommitted_to_wh', '1', '新建未提交', '1', '---RO未过仓状态', '2017-12-08 16:08:19');
INSERT INTO `sys_config` VALUES ('44', '2017-12-08 15:56:24', 'ro_status_uncommitted_to_wh', '7', 'Hold待人工处理', '1', '---RO未过仓状态', '2017-12-17 16:24:43');
INSERT INTO `sys_config` VALUES ('45', '2017-12-18 11:17:44', 'rf_bank', '1', '工商银行', '1', '收款银行', '2017-12-18 11:18:29');
INSERT INTO `sys_config` VALUES ('48', '2017-12-18 11:17:44', 'rf_bank', '2', '建设银行', '1', '收款银行', '2017-12-18 11:18:17');
INSERT INTO `sys_config` VALUES ('49', '2017-12-18 11:17:44', 'rf_bank', '3', '交通银行', '1', '收款银行', '2017-12-18 11:18:17');
INSERT INTO `sys_config` VALUES ('50', '2017-12-08 15:56:24', 'do_status_uncommitted_to_wh', '6', '路由失败', '1', 'DO未过仓状态', '2018-01-02 20:16:34');
INSERT INTO `sys_config` VALUES ('51', '2017-12-08 15:56:24', 'do_status_uncommitted_to_wh', '16', '已拦截', '1', 'DO未过仓状态', '2018-01-06 20:16:50');
INSERT INTO `sys_config` VALUES ('59', '2017-12-08 15:56:24', 'JD', '1', 'JD_平台接入', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('60', '2017-12-08 15:56:24', 'JD', '2', 'JD_手工创建', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('61', '2017-12-08 15:56:24', 'JD', '3', 'JD_手工下载', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('62', '2017-12-08 15:56:24', 'JD', '5', 'JD_Excel导入线上', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('63', '2017-12-27 21:58:25', 'TMALL', '1', 'TMALL_平台接入', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('64', '2017-12-27 21:58:25', 'TMALL', '2', 'TMALL_手工创建', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('65', '2017-12-27 21:58:25', 'TMALL', '3', 'TMALL_手工下载', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('66', '2017-12-27 21:58:25', 'TMALL', '5', 'TMALL_Excel导入线上', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('67', '2017-12-27 21:58:25', 'Amazon', '1', 'Amazon_平台接入', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('68', '2017-12-27 21:58:25', 'Amazon', '2', 'Amazon_手工创建', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('69', '2017-12-27 21:58:25', 'Amazon', '3', 'Amazon_手工下载', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('70', '2017-12-27 21:58:25', 'Amazon', '5', 'Amazon_Excel导入线上', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('71', '2017-12-27 21:58:25', 'YHD', '1', 'YHD_平台接入', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('72', '2017-12-27 21:58:25', 'YHD', '2', 'YHD_手工创建', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('73', '2017-12-27 21:58:25', 'YHD', '3', 'YHD_手工下载', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('74', '2017-12-27 21:58:25', 'YHD', '5', 'YHD_Excel导入线上', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('75', '2017-12-27 21:58:25', 'BS', '1', 'BS_平台接入', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('76', '2017-12-27 21:58:25', 'BS', '2', 'BS_手工创建', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('77', '2017-12-27 21:58:25', 'BS', '3', 'BS_手工下载', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('78', '2017-12-27 21:58:25', 'BS', '5', 'BS_Excel导入线上', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('79', '2017-12-27 21:58:25', 'VIP', '1', 'VIP_平台接入', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('80', '2017-12-27 21:58:25', 'VIP', '2', 'VIP_手工创建', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('81', '2017-12-27 21:58:25', 'VIP', '3', 'VIP_手工下载', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('82', '2017-12-27 21:58:25', 'VIP', '5', 'VIP_Excel导入线上', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('83', '2017-12-27 21:58:25', 'XIAOHONGSHU', '1', 'XIAOHONGSHU_平台接入', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('84', '2017-12-27 21:58:25', 'XIAOHONGSHU', '2', 'XIAOHONGSHU_手工创建', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('85', '2017-12-27 21:58:25', 'XIAOHONGSHU', '3', 'XIAOHONGSHU_手工下载', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('86', '2017-12-27 21:58:25', 'XIAOHONGSHU', '5', 'XIAOHONGSHU_Excel导入线上', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('87', '2017-12-27 21:58:25', 'KAOLA', '1', 'KAOLA_平台接入', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('88', '2017-12-27 21:58:25', 'KAOLA', '2', 'KAOLA_手工创建', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('89', '2017-12-27 21:58:25', 'KAOLA', '3', 'KAOLA_手工下载', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('90', '2017-12-27 21:58:25', 'KAOLA', '5', 'KAOLA_Excel导入线上', '1', '线上单类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('91', '2017-12-04 15:28:04', 'order_status', '1', '未付款', '1', '订单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('92', '2017-12-04 15:28:04', 'order_status', '2', '未客审', '1', '订单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('93', '2017-12-04 15:28:04', 'order_status', '3', '待审批', '1', '订单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('94', '2017-12-04 15:28:04', 'order_status', '4', '待过仓', '1', '订单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('95', '2017-12-04 15:28:04', 'order_status', '5', '部分过仓', '1', '订单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('96', '2017-12-04 15:28:04', 'order_status', '6', '全部过仓', '1', '订单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('97', '2017-12-04 15:28:04', 'order_status', '7', '部分出库', '1', '订单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('98', '2017-12-04 15:28:04', 'order_status', '8', '全部出库', '1', '订单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('99', '2017-12-04 15:28:04', 'order_status', '9', '部分发货', '1', '订单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('100', '2017-12-04 15:28:04', 'order_status', '10', '全部发货', '1', '订单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('101', '2017-12-04 15:28:04', 'order_payment_status', '3', '已付款', '1', '付款状态', '2018-01-18 21:40:57');
INSERT INTO `sys_config` VALUES ('102', '2017-12-04 15:28:04', 'order_payment_status', '2', '待付款', '1', '付款状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('103', '2017-12-04 15:28:04', 'order_payment_status', '1', '未付款', '1', '付款状态', '2018-01-18 21:40:49');
INSERT INTO `sys_config` VALUES ('104', '2017-12-04 15:28:04', 'order_payment_status', '4', '平台未付款', '1', '付款状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('105', '2017-12-04 15:28:04', 'order_source_type', '1', '自动创建', '1', '订单制单类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('106', '2017-12-04 15:28:04', 'order_source_type', '2', '手工创建', '1', '订单制单类型', '2018-01-19 16:40:19');
INSERT INTO `sys_config` VALUES ('107', '2017-12-04 15:28:04', 'order_source_type', '3', '手工下载', '1', '订单制单类型', '2018-01-19 16:41:27');
INSERT INTO `sys_config` VALUES ('108', '2017-12-04 15:28:04', 'order_source_type', '4', 'Excel导入-线上', '1', '订单制单类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('109', '2017-12-04 15:28:04', 'order_source_type', '5', 'Excel导入-线下', '1', '订单制单类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('110', '2017-12-04 15:28:04', 'order_type', '1', '销售订单', '1', '订单类型', '2017-12-31 17:42:31');
INSERT INTO `sys_config` VALUES ('111', '2017-12-04 15:28:04', 'order_type', '2', '换货订单', '1', '订单类型', '2017-12-31 17:42:32');
INSERT INTO `sys_config` VALUES ('112', '2017-12-04 15:28:04', 'order_type', '3', '索赔订单', '1', '订单类型', '2017-12-31 17:42:33');
INSERT INTO `sys_config` VALUES ('113', '2017-12-04 15:28:04', 'order_type', '4', '赠品补发单', '1', '订单类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('114', '2017-12-04 15:28:04', 'order_invoice', '1', '开发票', '1', '订单是否开发票', '2018-01-05 16:09:23');
INSERT INTO `sys_config` VALUES ('115', '2017-12-04 15:28:04', 'order_invoice', '2', '无需开票', '1', '订单是否开发票', '2018-01-05 16:09:25');
INSERT INTO `sys_config` VALUES ('116', '2017-12-04 15:28:04', 'order_source', 'TB', '淘宝', '1', '订单来源', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('117', '2017-12-04 15:28:04', 'order_source', 'JD', '京东', '1', '订单来源', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('118', '2017-12-04 15:28:04', 'order_special_type', '1', '特殊1', '1', '特殊订单类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('119', '2017-12-04 15:28:04', 'order_special_type', '2', '特殊2', '1', '特殊订单类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('123', '2018-01-02 20:14:12', 'do_status_uncommitted_to_wh', '0', '新建', '1', 'DO未过仓状态', '2018-01-02 20:14:12');
INSERT INTO `sys_config` VALUES ('124', '2017-12-08 15:56:24', 'do_status_uncommitted_to_wh', '8', '路由成功', '1', 'DO未过仓状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('125', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '22', '待仓储系统截留确认', '1', 'DO不允许被取消的状态', '2018-01-06 20:15:57');
INSERT INTO `sys_config` VALUES ('126', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '4', '待路由反馈', '1', 'DO不允许被取消的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('127', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '32', '作废', '1', 'DO不允许被取消的状态', '2017-12-08 16:08:31');
INSERT INTO `sys_config` VALUES ('128', '2017-12-08 15:56:24', 'query_item_outbound_qty', '24', '已出库 ', '1', '单个订单查询显示行数量状态 - 已出库', '2018-01-08 11:08:47');
INSERT INTO `sys_config` VALUES ('129', '2017-12-08 15:56:24', 'query_item_outbound_qty', '26', '已签收 ', '1', '单个订单查询显示行数量状态 - 已出库', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('130', '2017-12-08 15:56:24', 'query_item_outbound_qty', '28', '完成 ', '1', '单个订单查询显示行数量状态 - 已出库', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('131', '2017-12-08 15:56:24', 'query_item_uncommitted_qty', '0', '新建', '1', '单个订单查询显示行数量状态 - 未过仓数', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('132', '2017-12-08 15:56:24', 'query_item_uncommitted_qty', '4', '待路由反馈', '1', '单个订单查询显示行数量状态 - 未过仓数', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('133', '2017-12-08 15:56:24', 'query_item_uncommitted_qty', '6', '路由失败', '1', '单个订单查询显示行数量状态 - 未过仓数', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('134', '2017-12-08 15:56:24', 'query_item_uncommitted_qty', '8', '路由成功', '1', '单个订单查询显示行数量状态 - 未过仓数', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('135', '2017-12-08 15:56:24', 'query_item_uncommitted_qty', '10', '待系统过仓', '1', '单个订单查询显示行数量状态 - 未过仓数', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('136', '2017-12-08 15:56:24', 'query_item_uncommitted_qty', '14', '过仓失败', '1', '单个订单查询显示行数量状态 - 未过仓数', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('138', '2017-12-08 15:56:24', 'query_item_uncommitted_qty', '16', '已拦截', '1', '单个订单查询显示行数量状态 - 未过仓数', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('139', '2017-12-04 15:28:04', 'return_order_type', '1', '退货', '1', '退货类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('140', '2017-12-04 15:28:04', 'return_order_type', '2', '退款', '1', '退货类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('141', '2017-12-04 15:28:04', 'return_order_status', '1', '新建', '1', '退货单状态', '2018-01-27 18:16:34');
INSERT INTO `sys_config` VALUES ('142', '2017-12-04 15:28:04', 'return_order_status', '3', '待系统过仓', '1', '退货单状态', '2018-01-27 18:16:41');
INSERT INTO `sys_config` VALUES ('143', '2017-12-04 15:28:04', 'return_order_status', '5', '待退货入库', '1', '退货单状态', '2018-01-27 18:16:47');
INSERT INTO `sys_config` VALUES ('144', '2017-12-04 15:28:04', 'return_order_status', '7', '已完成', '1', '退货单状态', '2018-01-27 18:16:57');
INSERT INTO `sys_config` VALUES ('145', '2017-12-04 15:28:04', 'return_order_status', '9', '待仓储系统作废确认', '1', '退货单状态', '2018-01-27 18:17:02');
INSERT INTO `sys_config` VALUES ('146', '2017-12-04 15:28:04', 'return_order_status', '11', '作废', '1', '退货单状态', '2018-01-27 18:15:56');
INSERT INTO `sys_config` VALUES ('147', '2017-12-04 15:28:04', 'return_order_reason', '1', '买家取消', '1', '退款原因', '2018-01-11 16:02:17');
INSERT INTO `sys_config` VALUES ('148', '2017-12-04 15:28:04', 'return_order_reason', '2', '缺货取消', '1', '退款原因', '2018-01-11 16:02:35');
INSERT INTO `sys_config` VALUES ('149', '2017-12-04 15:28:04', 'return_order_reason', '3', '延迟发货取消', '1', '退款原因', '2018-01-11 16:02:38');
INSERT INTO `sys_config` VALUES ('150', '2017-12-04 15:28:04', 'return_order_reason', '4', '更换商品(发货前)', '1', '退款原因', '2018-01-11 16:02:40');
INSERT INTO `sys_config` VALUES ('151', '2017-12-04 15:28:04', 'return_order_reason', '5', '换货取消(换转退)', '1', '退款原因', '2018-01-11 16:02:42');
INSERT INTO `sys_config` VALUES ('152', '2017-12-04 15:28:04', 'return_order_reason', '6', '更改收货地址', '1', '退款原因', '2018-01-11 16:02:44');
INSERT INTO `sys_config` VALUES ('153', '2017-12-04 15:28:04', 'return_order_reason', '7', '买家七天无理由退货', '1', '退款原因', '2018-01-11 16:02:47');
INSERT INTO `sys_config` VALUES ('154', '2017-12-08 15:56:24', 'do_status_to_order_routing', '0', '新建', '1', 'DO允许过路由状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('155', '2017-12-08 15:56:24', 'do_status_to_order_routing', '6', '路由失败 ', '1', 'DO允许过路由状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('156', '2017-12-08 15:56:24', 'do_status_not_allowed_to_edit', '18', '库房准备中', '1', 'DO不允许被编辑的状态', '2018-01-17 01:25:44');
INSERT INTO `sys_config` VALUES ('158', '2017-12-08 15:56:24', 'do_status_not_allowed_to_edit', '4', '待路由反馈\r\n', '1', 'DO不允许被编辑的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('159', '2017-12-08 15:56:24', 'do_status_not_allowed_to_edit', '12', '待仓库系统创单\r\n', '1', 'DO不允许被编辑的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('160', '2017-12-08 15:56:24', 'do_status_not_allowed_to_edit', '20', '待仓储系统取消确认\r\n', '1', 'DO不允许被编辑的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('161', '2017-12-08 15:56:24', 'do_status_not_allowed_to_edit', '22', '待仓储系统截留确认\r\n', '1', 'DO不允许被编辑的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('162', '2017-12-08 15:56:24', 'do_status_not_allowed_to_edit', '24', '已出库\r\n', '1', 'DO不允许被编辑的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('163', '2017-12-08 15:56:24', 'do_status_not_allowed_to_edit', '26', '已签收\r\n', '1', 'DO不允许被编辑的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('164', '2017-12-08 15:56:24', 'do_status_not_allowed_to_edit', '28', '完成\r\n', '1', 'DO不允许被编辑的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('165', '2017-12-08 15:56:24', 'do_status_not_allowed_to_edit', '34', '取消失败\r\n', '1', 'DO不允许被编辑的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('168', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '34', '取消失败\r\n', '1', 'DO不允许被取消的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('169', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '36', '拦截失败', '1', 'DO不允许被取消的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('170', '2017-12-04 15:28:04', 'task_order_type', '1', '销售订单', '1', '任务', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('171', '2017-12-04 15:28:04', 'task_order_type', '2', '出库单', '1', '任务', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('174', '2017-12-04 15:28:04', 'rf_status', '1', '新建未提交', '1', '退款单状态', '2018-01-21 16:16:22');
INSERT INTO `sys_config` VALUES ('175', '2017-12-04 15:28:04', 'rf_status', '2', '被驳回', '1', '退款单状态', '2018-01-21 16:16:23');
INSERT INTO `sys_config` VALUES ('176', '2017-12-04 15:28:04', 'return_source_type', '1', '手工录入', '1', '退换货创建类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('177', '2017-12-04 15:28:04', 'return_source_type', '2', '自动录入', '1', '退换货创建类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('178', '2017-12-04 15:28:04', 'do_order_status', '0', '新建', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('179', '2017-12-04 15:28:04', 'do_order_status', '2', '预约过仓', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('180', '2017-12-04 15:28:04', 'do_order_status', '4', '待路由反馈', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('181', '2017-12-04 15:28:04', 'do_order_status', '6', '路由失败', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('182', '2017-12-04 15:28:04', 'do_order_status', '8', '路由成功', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('183', '2017-12-04 15:28:04', 'do_order_status', '10', '待系统过仓', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('184', '2017-12-04 15:28:04', 'do_order_status', '12', '待仓库系统创单', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('185', '2017-12-04 15:28:04', 'do_order_status', '14', '过仓失败', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('186', '2017-12-04 15:28:04', 'do_order_status', '16', '已拦截', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('187', '2017-12-04 15:28:04', 'do_order_status', '18', '库房准备中', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('188', '2017-12-04 15:28:04', 'do_order_status', '20', '待仓储系统取消确认', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('189', '2017-12-04 15:28:04', 'do_order_status', '22', '待仓储系统截留确认', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('190', '2017-12-04 15:28:04', 'do_order_status', '24', '已出库', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('191', '2017-12-04 15:28:04', 'do_order_status', '26', '已签收', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('192', '2017-12-04 15:28:04', 'do_order_status', '28', '完成', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('193', '2017-12-04 15:28:04', 'do_order_status', '30', '取消成功', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('194', '2017-12-04 15:28:04', 'do_order_status', '32', '作废', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('195', '2017-12-04 15:28:04', 'do_order_status', '34', '取消失败', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('196', '2017-12-04 15:28:04', 'do_order_status', '36', '拦截失败', '1', 'do单状态', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('197', '2018-01-25 13:03:03', 'salesOrderType', '1', '标准订单', '1', '订单类型', '2018-01-25 13:03:03');
INSERT INTO `sys_config` VALUES ('198', '2018-01-25 13:03:06', 'salesOrderType', '2', '赠品补发订单', '1', '订单类型', '2018-01-25 13:03:06');
INSERT INTO `sys_config` VALUES ('199', '2018-01-25 13:03:11', 'salesOrderType', '3', '索赔补发订单', '1', '订单类型', '2018-01-25 13:03:11');
INSERT INTO `sys_config` VALUES ('204', '2018-01-25 13:18:39', 'specialOrderType', '1', '', '1', '特殊订单类型', '2018-01-25 13:18:39');
INSERT INTO `sys_config` VALUES ('205', '2018-01-25 13:18:39', 'specialOrderType', '2', '授信订单', '1', '特殊订单类型', '2018-01-25 13:18:39');
INSERT INTO `sys_config` VALUES ('206', '2018-01-25 13:18:39', 'specialOrderType', '3', '预售订单', '1', '特殊订单类型', '2018-01-25 13:18:39');
INSERT INTO `sys_config` VALUES ('207', '2018-01-25 13:18:39', 'specialOrderType', '4', '平台直发订单', '1', '特殊订单类型', '2018-01-25 13:18:39');
INSERT INTO `sys_config` VALUES ('208', '2018-01-25 13:18:39', 'specialOrderType', '5', '亚马逊活动订单', '1', '特殊订单类型', '2018-01-25 13:18:39');
INSERT INTO `sys_config` VALUES ('209', '2018-01-25 13:18:39', 'specialOrderType', '6', 'O2O', '1', '特殊订单类型', '2018-01-25 13:18:39');
INSERT INTO `sys_config` VALUES ('210', '2018-01-25 13:18:39', 'specialOrderType', '7', '生鲜订单', '1', '特殊订单类型', '2018-01-25 13:18:39');
INSERT INTO `sys_config` VALUES ('211', '2018-01-25 13:18:39', 'specialOrderType', '8', '家装订单', '1', '特殊订单类型', '2018-01-25 13:18:39');
INSERT INTO `sys_config` VALUES ('212', '2018-01-25 13:18:39', 'specialOrderType', '9', 'Apple学生价订单', '1', '特殊订单类型', '2018-01-25 13:18:39');
INSERT INTO `sys_config` VALUES ('213', '2018-01-25 13:18:39', 'specialOrderType', '10', 'NIKE-QS订单', '1', '特殊订单类型', '2018-01-25 13:18:39');
INSERT INTO `sys_config` VALUES ('214', '2017-12-04 15:28:04', 'task_type', '1', '审核挂起', '1', '任务类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('215', '2017-12-04 15:28:04', 'task_type', '2', '审批挂起', '1', '任务类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('216', '2017-12-04 15:28:04', 'task_type', '3', '审批驳回挂起', '1', '任务类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('217', '2017-12-04 15:28:04', 'task_type', '4', '取消失败', '1', '任务类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('218', '2017-12-04 15:28:04', 'task_type', '5', '过仓失败', '1', '任务类型', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('219', '2017-12-08 15:56:24', 'do_status_release_inv_occupy', '8', '路由成功', '1', 'DO需要释放库存的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('220', '2017-12-08 15:56:24', 'do_status_release_inv_occupy', '14', '过仓失败', '1', 'DO需要释放库存的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('221', '2017-12-08 15:56:24', 'do_status_release_inv_occupy', '16', '已拦截', '1', 'DO需要释放库存的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('222', '2017-12-08 15:56:24', 'do_status_release_inv_occupy', '32', '作废', '1', 'DO需要释放库存的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('223', '2017-12-08 15:56:24', 'do_status_release_inv_occupy', '30', '取消成功', '1', 'DO需要释放库存的状态', '2017-12-08 16:08:33');
