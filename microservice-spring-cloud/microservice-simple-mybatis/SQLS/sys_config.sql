/*
Navicat MySQL Data Transfer

Source Server         : oms-st
Source Server Version : 50718
Source Host           : 10.88.26.36:3306
Source Database       : db_oms4_som_01

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-03-29 19:21:32
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
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8 COMMENT='系统参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '2017-12-04 15:28:04', 'rf_account_type', '1', '店铺支付宝', '1', '退款账户类型', '2018-03-29 16:38:50');
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
INSERT INTO `sys_config` VALUES ('12', '2017-12-04 15:28:05', 'refund_category', '1', '赔付', '1', '退款分类', '2018-03-13 18:50:29');
INSERT INTO `sys_config` VALUES ('13', '2017-12-04 15:28:05', 'refund_category', '2', '退货退款', '1', '退款分类', '2018-03-13 18:50:30');
INSERT INTO `sys_config` VALUES ('15', '2017-12-04 15:28:05', 'refund_category', '4', '补差价', '1', '退款分类', '2018-03-13 18:50:31');
INSERT INTO `sys_config` VALUES ('16', '2017-12-04 15:28:05', 'refund_category', '5', '退运费', '1', '退款分类', '2018-03-13 18:50:39');
INSERT INTO `sys_config` VALUES ('17', '2017-12-04 15:28:05', 'refund_category', '6', '服务退款', '1', '退款类型', '2018-03-20 10:33:13');
INSERT INTO `sys_config` VALUES ('18', '2017-12-04 15:28:05', 'refund_category', '3', '未发货退款', '1', '退款类型', '2018-03-20 10:33:14');
INSERT INTO `sys_config` VALUES ('19', '2017-12-04 15:28:05', 'refund_category', '7', '丢件退款', '1', '退款类型', '2018-03-20 10:33:15');
INSERT INTO `sys_config` VALUES ('20', '2017-12-04 15:51:10', 'finance_apply_type', '1', '退款申请', '1', '财务申请类型/退款类型', '2018-02-08 13:39:39');
INSERT INTO `sys_config` VALUES ('21', '2017-12-04 15:51:10', 'finance_apply_type', '2', '付款申请', '1', '财务申请类型/退款类型', '2018-02-08 13:39:39');
INSERT INTO `sys_config` VALUES ('24', '2017-12-08 15:56:24', 'do_status_uncommitted_to_wh', '14', '过仓失败', '1', 'DO未过仓状态', '2018-01-02 20:16:29');
INSERT INTO `sys_config` VALUES ('27', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '12', '待仓库系统创单', '1', 'DO不允许被取消的状态', '2018-01-02 20:17:54');
INSERT INTO `sys_config` VALUES ('29', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '24', '已出库', '1', 'DO不允许被取消的状态', '2018-01-06 20:16:02');
INSERT INTO `sys_config` VALUES ('31', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '26', '已签收', '1', 'DO不允许被取消的状态', '2018-01-06 20:16:06');
INSERT INTO `sys_config` VALUES ('32', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '28', '完成', '1', 'DO不允许被取消的状态', '2018-01-02 20:19:11');
INSERT INTO `sys_config` VALUES ('33', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '30', '取消', '1', 'DO不允许被取消的状态', '2018-01-02 20:19:14');
INSERT INTO `sys_config` VALUES ('36', '2017-12-08 15:56:24', 'do_status_not_allowed_to_cancel', '20', '待仓储系统取消确认', '1', 'DO不允许被取消的状态', '2018-01-06 20:15:52');
INSERT INTO `sys_config` VALUES ('37', '2017-12-14 15:40:52', 'rf_doc_no_type', '1', '平台订单号', '1', '平台订单号/oms订单号', '2018-03-14 13:25:53');
INSERT INTO `sys_config` VALUES ('38', '2017-12-14 15:40:52', 'rf_doc_no_type', '2', 'oms订单号', '1', '平台订单号/oms订单号', '2018-03-14 13:26:09');
INSERT INTO `sys_config` VALUES ('39', '2017-12-08 15:56:24', 'ro_status_not_allowed_to_cancel', '11', '作废', '1', '--RO不允许被取消的状态', '2018-02-22 18:23:44');
INSERT INTO `sys_config` VALUES ('40', '2017-12-08 15:56:24', 'ro_status_not_allowed_to_cancel', '7', '已完成', '1', '--RO不允许被取消的状态', '2018-02-22 18:22:06');
INSERT INTO `sys_config` VALUES ('42', '2017-12-08 15:56:24', 'ro_status_not_allowed_to_cancel', '9', '待仓储系统作废确认', '1', '--RO不允许被取消的状态', '2018-02-22 18:21:32');
INSERT INTO `sys_config` VALUES ('43', '2017-12-08 15:56:24', 'ro_status_uncommitted_to_wh', '1', '新建未提交', '1', '---RO未过仓状态', '2017-12-08 16:08:19');
INSERT INTO `sys_config` VALUES ('44', '2017-12-08 15:56:24', 'ro_status_uncommitted_to_wh', '17', '过仓失败', '1', '---RO未过仓状态', '2018-02-22 18:24:33');
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
INSERT INTO `sys_config` VALUES ('110', '2017-12-04 15:28:04', 'salesOrderType', '1', '销售订单', '1', '订单类型', '2018-02-02 17:38:48');
INSERT INTO `sys_config` VALUES ('112', '2017-12-04 15:28:04', 'salesOrderType', '2', '赠品补发单', '1', '订单类型', '2018-02-08 14:59:35');
INSERT INTO `sys_config` VALUES ('113', '2017-12-04 15:28:04', 'salesOrderType', '3', '索赔订单', '1', '订单类型', '2018-02-08 14:59:37');
INSERT INTO `sys_config` VALUES ('114', '2017-12-04 15:28:04', 'order_invoice', '1', '开发票', '1', '订单是否开发票', '2018-03-09 17:00:27');
INSERT INTO `sys_config` VALUES ('115', '2017-12-04 15:28:04', 'order_invoice', '0', '无需开票', '1', '订单是否开发票', '2018-03-09 17:00:29');
INSERT INTO `sys_config` VALUES ('116', '2017-12-04 15:28:04', 'order_source', 'TB', '淘宝', '1', '订单来源', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('117', '2017-12-04 15:28:04', 'order_source', 'JD', '京东', '1', '订单来源', '2017-12-15 16:05:01');
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
INSERT INTO `sys_config` VALUES ('140', '2017-12-04 15:28:04', 'return_order_type', '2', '换货', '1', '退货类型', '2018-02-02 18:57:43');
INSERT INTO `sys_config` VALUES ('141', '2017-12-04 15:28:04', 'return_order_status', '1', '新建', '1', '退货单状态', '2018-01-27 18:16:34');
INSERT INTO `sys_config` VALUES ('142', '2017-12-04 15:28:04', 'return_order_status', '13', '作废失败', '1', '退货单状态', '2018-02-23 16:37:08');
INSERT INTO `sys_config` VALUES ('143', '2017-12-04 15:28:04', 'return_order_status', '15', '待仓库系统创单', '1', '退货单状态', '2018-02-23 16:37:06');
INSERT INTO `sys_config` VALUES ('144', '2017-12-04 15:28:04', 'return_order_status', '17', '过仓失败', '1', '退货单状态', '2018-02-23 16:35:33');
INSERT INTO `sys_config` VALUES ('145', '2017-12-04 15:28:04', 'return_order_status', '19', '换货待出库', '1', '退货单状态', '2018-02-23 16:34:16');
INSERT INTO `sys_config` VALUES ('146', '2017-12-04 15:28:04', 'return_order_status', '3', '待系统过仓', '1', '退货单状态', '2018-02-23 16:32:53');
INSERT INTO `sys_config` VALUES ('147', '2017-12-04 15:28:04', 'return_order_reason', '110', '七天无理由退货', '1', '退货原因', '2018-01-11 16:02:17');
INSERT INTO `sys_config` VALUES ('148', '2017-12-04 15:28:04', 'return_order_reason', '120', '质量问题', '1', '退货原因', '2018-01-11 16:02:35');
INSERT INTO `sys_config` VALUES ('149', '2017-12-04 15:28:04', 'return_order_reason', '999', '其他', '1', '退货原因', '2018-01-11 16:02:38');
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
INSERT INTO `sys_config` VALUES ('170', '2017-12-04 15:28:04', 'task_order_type', '1', '销售订单SO', '1', '任务', '2018-02-22 14:44:30');
INSERT INTO `sys_config` VALUES ('171', '2017-12-04 15:28:04', 'task_order_type', '2', '退货单RO', '1', '任务', '2018-02-22 14:44:26');
INSERT INTO `sys_config` VALUES ('176', '2017-12-04 15:28:04', 'return_source_type', '1', '平台接入', '1', '退换货创建类型', '2018-02-22 18:18:08');
INSERT INTO `sys_config` VALUES ('177', '2017-12-04 15:28:04', 'return_source_type', '2', '人工录入', '1', '退换货创建类型', '2018-02-22 18:18:14');
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
INSERT INTO `sys_config` VALUES ('205', '2018-01-25 13:18:39', 'specialOrderType', '1', '预售订单', '1', '特殊订单类型', '2018-03-15 11:57:03');
INSERT INTO `sys_config` VALUES ('206', '2018-01-25 13:18:39', 'specialOrderType', '2', '平台直发订单', '1', '特殊订单类型', '2018-03-15 11:57:03');
INSERT INTO `sys_config` VALUES ('207', '2018-01-25 13:18:39', 'specialOrderType', '3', '亚马逊活动订单', '1', '特殊订单类型', '2018-03-15 11:57:03');
INSERT INTO `sys_config` VALUES ('208', '2018-01-25 13:18:39', 'specialOrderType', '4', 'O2O', '1', '特殊订单类型', '2018-03-15 11:57:03');
INSERT INTO `sys_config` VALUES ('209', '2018-01-25 13:18:39', 'specialOrderType', '5', '家装订单', '1', '特殊订单类型', '2018-03-15 11:57:03');
INSERT INTO `sys_config` VALUES ('210', '2018-01-25 13:18:39', 'specialOrderType', '6', '授信订单', '1', '特殊订单类型', '2018-03-15 11:57:03');
INSERT INTO `sys_config` VALUES ('211', '2018-01-25 13:18:39', 'specialOrderType', '7', 'Apple学生价订单', '1', '特殊订单类型', '2018-03-15 11:57:03');
INSERT INTO `sys_config` VALUES ('212', '2018-01-25 13:18:39', 'specialOrderType', '8', 'NIKE-QS订单', '1', '特殊订单类型', '2018-03-15 11:57:03');
INSERT INTO `sys_config` VALUES ('213', '2018-01-25 13:18:39', 'specialOrderType', '9', '生鲜订单', '1', '特殊订单类型', '2018-03-15 11:57:03');
INSERT INTO `sys_config` VALUES ('214', '2017-12-04 15:28:04', 'task_type', '1', '过仓挂起', '1', '任务类型', '2018-02-22 14:44:51');
INSERT INTO `sys_config` VALUES ('215', '2017-12-04 15:28:04', 'task_type', '3', '校验挂起', '1', '任务类型', '2018-02-22 14:44:55');
INSERT INTO `sys_config` VALUES ('216', '2017-12-04 15:28:04', 'task_type', '5', '审批挂起', '1', '任务类型', '2018-02-22 14:45:02');
INSERT INTO `sys_config` VALUES ('217', '2017-12-04 15:28:04', 'task_type', '7', '审批驳回挂起', '1', '任务类型', '2018-02-22 14:45:08');
INSERT INTO `sys_config` VALUES ('218', '2017-12-04 15:28:04', 'task_type', '9', '取消失败挂起', '1', '任务类型', '2018-02-22 14:45:21');
INSERT INTO `sys_config` VALUES ('219', '2017-12-08 15:56:24', 'do_status_release_inv_occupy', '14', '过仓失败', '1', 'DO需要释放库存的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('220', '2017-12-08 15:56:24', 'do_status_release_inv_occupy', '16', '已拦截', '1', 'DO需要释放库存的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('223', '2017-12-08 15:56:24', 'do_status_release_inv_occupy', '8', '路由成功', '1', 'DO需要释放库存的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('224', '2018-02-05 14:50:10', 'task_type', '11', '过仓失败挂起', '1', '任务类型', '2018-02-22 14:45:38');
INSERT INTO `sys_config` VALUES ('225', '2017-12-04 15:28:04', 'rf_status', '0', '新建未提交', '1', '退款单状态', '2018-03-20 13:28:02');
INSERT INTO `sys_config` VALUES ('226', '2017-12-04 15:28:04', 'rf_status', '1', '审核', '1', '退款单状态', '2018-01-21 16:16:23');
INSERT INTO `sys_config` VALUES ('227', '2017-12-04 15:28:04', 'rf_status', '2', '驳回', '1', '退款单状态', '2018-03-20 11:19:25');
INSERT INTO `sys_config` VALUES ('228', '2017-12-04 15:28:04', 'rf_status', '3', '退款中', '1', '退款单状态', '2018-03-20 11:19:25');
INSERT INTO `sys_config` VALUES ('229', '2017-12-04 15:28:04', 'rf_status', '4', '支出异常', '1', '退款单状态', '2018-03-20 11:19:25');
INSERT INTO `sys_config` VALUES ('230', '2017-12-04 15:28:04', 'rf_status', '5', '完成', '1', '退款单状态', '2018-03-20 11:19:25');
INSERT INTO `sys_config` VALUES ('232', '2017-12-04 15:28:04', 'rf_status', '7', '作废', '1', '退款单状态', '2018-03-20 11:19:25');
INSERT INTO `sys_config` VALUES ('233', '2018-02-07 07:21:35', 'invoiceForm', '1', '纸质发票', '1', '发票形式', '2018-02-07 07:23:40');
INSERT INTO `sys_config` VALUES ('234', '2018-02-07 07:23:26', 'invoiceForm', '2', '电子发票', '1', '发票形式', '2018-02-07 07:23:37');
INSERT INTO `sys_config` VALUES ('235', '2018-02-22 14:44:20', 'task_order_type', '4', '出库单DO', '1', '任务', '2018-02-22 14:44:36');
INSERT INTO `sys_config` VALUES ('236', '2018-02-22 14:45:51', 'task_type', '13', '撤回失败挂起', '1', '任务类型', '2018-02-22 14:45:51');
INSERT INTO `sys_config` VALUES ('237', '2018-02-22 14:46:17', 'task_type', '15', '退换货单审核驳回挂起', '1', '任务类型', '2018-02-22 14:46:17');
INSERT INTO `sys_config` VALUES ('238', '2018-02-22 14:46:34', 'task_type', '17', '退货过仓失败挂起', '1', '任务类型', '2018-02-22 14:46:34');
INSERT INTO `sys_config` VALUES ('239', '2018-02-22 14:49:29', 'return_order_status', '5', '待退货入库', '1', '退货单状态', '2018-02-23 16:33:24');
INSERT INTO `sys_config` VALUES ('240', '2018-02-22 14:51:30', 'return_order_status', '7', '已完成', '1', '退货单状态', '2018-02-23 16:36:47');
INSERT INTO `sys_config` VALUES ('241', '2018-02-22 14:51:45', 'return_order_status', '9', '待仓储系统作废确认', '1', '退货单状态', '2018-02-23 16:36:51');
INSERT INTO `sys_config` VALUES ('242', '2018-02-22 14:51:59', 'return_order_status', '11', '作废', '1', '退货单状态', '2018-02-23 16:37:04');
INSERT INTO `sys_config` VALUES ('243', '2018-02-22 18:16:21', 'return_source_type', '3', '取消生成的退货', '1', '退换货创建类型', '2018-02-22 18:16:21');
INSERT INTO `sys_config` VALUES ('244', '2018-02-22 18:16:39', 'return_source_type', '4', '售中换货', '1', '退换货创建类型', '2018-02-22 18:16:39');
INSERT INTO `sys_config` VALUES ('245', '2018-02-22 18:21:24', 'ro_status_not_allowed_to_cancel', '3', '待系统过仓', '1', '--RO不允许被作废状态', '2018-02-22 18:21:24');
INSERT INTO `sys_config` VALUES ('246', '2018-02-22 18:22:27', 'ro_status_not_allowed_to_cancel', '15', '待仓库系统创单', '1', '--RO不允许被作废状态', '2018-02-22 18:22:27');
INSERT INTO `sys_config` VALUES ('247', '2018-02-22 18:23:03', 'ro_status_not_allowed_to_cancel', '19', '换货待出库', '1', '--RO不允许被作废状态', '2018-02-22 18:23:03');
INSERT INTO `sys_config` VALUES ('248', '2017-12-08 15:56:24', 'do_status_not_allowed_to_edit', '36', '拦截失败', '1', 'DO不允许被编辑的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('250', '2017-12-08 15:56:24', 'do_status_release_inv_occupy', '18', '库房准备中', '1', 'DO需要释放库存的状态', '2017-12-08 16:08:33');
INSERT INTO `sys_config` VALUES ('251', '2018-02-28 15:26:00', 'order_service_type', '1', '全国联保', '1', '测试数据', '2018-02-28 15:25:14');
INSERT INTO `sys_config` VALUES ('252', '2018-02-28 15:25:39', 'order_service_type', '2', '送货上门', '1', '测试数据', '2018-02-28 15:25:39');
INSERT INTO `sys_config` VALUES ('253', '2017-12-08 15:56:24', 'chg_do_status_allowed_to_cancel', '0', '新建', '1', '换出商品DO允许被取消的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('255', '2017-12-08 15:56:24', 'chg_do_status_allowed_to_cancel', '6', '路由失败', '1', '换出商品DO允许被取消的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('256', '2017-12-08 15:56:24', 'chg_do_status_allowed_to_cancel', '8', '路由成功', '1', '换出商品DO允许被取消的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('257', '2017-12-08 15:56:24', 'chg_do_status_allowed_to_cancel', '14', '过仓失败', '1', '换出商品DO允许被取消的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('258', '2017-12-08 15:56:24', 'chg_do_status_allowed_to_cancel', '16', '已拦截', '1', '换出商品DO允许被取消的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('259', '2017-12-08 15:56:24', 'offline_order_type', '22', '线下销售行', '1', '线下订单行类型', '2018-03-01 17:12:24');
INSERT INTO `sys_config` VALUES ('260', '2017-12-08 15:56:24', 'offline_order_type', '23', '线下售中更换', '1', '线下订单行类型', '2018-03-01 17:13:32');
INSERT INTO `sys_config` VALUES ('261', '2017-12-08 15:56:24', 'offline_order_type', '42', '线下售后换货出', '1', '线下订单行类型', '2018-03-01 17:13:56');
INSERT INTO `sys_config` VALUES ('262', '2017-12-08 15:56:24', 'offline_order_type', '44', '线下促销应用的赠品', '1', '线下订单行类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('263', '2017-12-08 15:56:24', 'offline_order_type', '45', '线下新增的赠品', '1', '线下订单行类型', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('264', '2018-03-08 19:52:09', 'order_payment_type', '1', '货到付款', '1', '订单付款方式', '2018-03-12 18:06:11');
INSERT INTO `sys_config` VALUES ('265', '2018-03-08 19:52:44', 'order_payment_type', '2', '邮局汇款', '1', '订单付款方式', '2018-03-12 18:06:19');
INSERT INTO `sys_config` VALUES ('266', '2018-03-08 19:53:17', 'order_payment_type', '3', '微信', '1', '订单付款方式', '2018-03-22 20:55:15');
INSERT INTO `sys_config` VALUES ('267', '2018-03-08 19:54:13', 'order_payment_type', '4', '银联在线', '1', '订单付款方式', '2018-03-14 15:28:17');
INSERT INTO `sys_config` VALUES ('268', '2018-03-08 19:54:43', 'order_payment_type', '5', '网银', '1', '订单付款方式', '2018-03-22 20:55:15');
INSERT INTO `sys_config` VALUES ('269', '2018-03-08 19:55:20', 'order_payment_type', '6', '支付宝', '1', '订单付款方式', '2018-03-22 20:55:15');
INSERT INTO `sys_config` VALUES ('270', '2018-03-12 15:42:58', 'chg_do_status_finished', '24', '已出库', '1', '换出商品DO完成状态', '2018-03-12 15:49:31');
INSERT INTO `sys_config` VALUES ('271', '2018-03-12 15:42:58', 'chg_do_status_finished', '26', '已签收', '1', '换出商品DO完成状态', '2018-03-12 15:49:31');
INSERT INTO `sys_config` VALUES ('272', '2018-03-12 15:42:58', 'chg_do_status_finished', '28', '完成', '1', '换出商品DO完成状态', '2018-03-12 15:49:31');
INSERT INTO `sys_config` VALUES ('273', '2018-03-12 15:50:19', 'chg_do_status_finished', '30', '取消成功', '1', '换出商品DO完成状态', '2018-03-12 15:50:19');
INSERT INTO `sys_config` VALUES ('274', '2018-03-12 15:50:19', 'chg_do_status_finished', '32', '作废', '1', '换出商品DO完成状态', '2018-03-12 15:50:19');
INSERT INTO `sys_config` VALUES ('275', '2017-12-04 15:28:04', 'order_source', 'Amazon', '亚马逊', '1', '订单来源', '2017-12-15 16:05:01');
INSERT INTO `sys_config` VALUES ('276', '2017-12-08 15:56:24', 'do_status_not_allowed_to_edit', '10', '待系统过仓', '1', 'DO不允许被编辑的状态', '2017-12-08 16:08:09');
INSERT INTO `sys_config` VALUES ('277', '2018-03-16 14:12:09', 'businessRegionType', '1', '中国内地', '1', 'CN_MAINLAND', '2018-03-16 14:12:09');
INSERT INTO `sys_config` VALUES ('278', '2018-03-16 14:12:09', 'businessRegionType', '2', '中国香港', '1', 'CN_HK', '2018-03-16 14:12:09');
INSERT INTO `sys_config` VALUES ('279', '2018-03-16 14:12:09', 'businessRegionType', '3', '中国台湾', '1', 'CN_TW', '2018-03-16 14:12:09');
INSERT INTO `sys_config` VALUES ('280', '2018-03-16 14:12:09', 'businessRegionType', '4', '驻店宝(门店配货)', '1', 'SHOP_DOG_GROUP', '2018-03-16 14:12:09');
INSERT INTO `sys_config` VALUES ('281', '2018-03-16 14:12:09', 'businessRegionType', '5', '澳大利亚', '1', 'AUSTRALIA', '2018-03-16 14:12:09');
INSERT INTO `sys_config` VALUES ('282', '2018-03-16 14:12:09', 'businessRegionType', '6', '瑞士', '1', 'SWITZERLAND', '2018-03-16 14:12:09');
INSERT INTO `sys_config` VALUES ('283', '2018-03-16 14:12:09', 'businessRegionType', '7', '迪拜', '1', 'DUBAI', '2018-03-16 14:12:09');
INSERT INTO `sys_config` VALUES ('284', '2018-03-16 14:12:09', 'businessRegionType', '8', '美国', '1', 'AMERICA', '2018-03-16 14:12:09');
INSERT INTO `sys_config` VALUES ('285', '2018-03-16 14:12:09', 'businessRegionType', '9', '日本', '1', 'JAPAN', '2018-03-16 14:12:09');
INSERT INTO `sys_config` VALUES ('286', '2018-03-16 14:17:46', 'isNeededInvoice', 'true', '是', '1', '是否需要开票', '2018-03-16 14:17:46');
INSERT INTO `sys_config` VALUES ('287', '2018-03-16 14:17:46', 'isNeededInvoice', 'false', '否', '1', '是否需要开票', '2018-03-16 14:17:46');
INSERT INTO `sys_config` VALUES ('292', '2018-03-16 15:14:18', 'invoiceType', '1', '普票', '1', '发票类型', '2018-03-16 15:14:18');
INSERT INTO `sys_config` VALUES ('293', '2018-03-16 15:14:18', 'invoiceType', '2', '专票', '1', '发票类型', '2018-03-16 15:14:18');
INSERT INTO `sys_config` VALUES ('296', '2018-03-16 15:18:18', 'invoiceTitle', '1', '企业', '1', '发票抬头类型', '2018-03-16 15:18:18');
INSERT INTO `sys_config` VALUES ('297', '2018-03-16 15:18:18', 'invoiceTitle', '2', '个人', '1', '发票抬头类型', '2018-03-16 15:18:18');
INSERT INTO `sys_config` VALUES ('298', '2018-02-05 14:50:10', 'rf_payment_status', '1', '审核', '1', '财务退款状态', '2018-03-26 15:02:38');
INSERT INTO `sys_config` VALUES ('299', '2018-02-05 14:50:10', 'rf_payment_status', '3', '驳回', '1', '财务退款状态', '2018-03-26 15:02:43');
INSERT INTO `sys_config` VALUES ('300', '2018-02-05 14:50:10', 'rf_payment_status', '5', '待执行退款', '1', '财务退款状态', '2018-03-26 15:02:43');
INSERT INTO `sys_config` VALUES ('301', '2018-02-05 14:50:10', 'rf_payment_status', '7', '执行退款中', '1', '财务退款状态', '2018-03-26 15:02:43');
INSERT INTO `sys_config` VALUES ('302', '2018-02-05 14:50:10', 'rf_payment_status', '9', '退款完成', '1', '财务退款状态', '2018-03-26 15:02:43');
INSERT INTO `sys_config` VALUES ('303', '2018-02-05 14:50:10', 'rf_payment_status', '11', '退款作废', '1', '财务退款状态', '2018-03-26 15:02:43');
INSERT INTO `sys_config` VALUES ('304', '2017-12-04 15:28:04', 'rf_account_type', '20', '原路退回', '1', '退款账户类型', '2017-12-05 17:33:58');
INSERT INTO `sys_config` VALUES ('305', '2018-02-05 14:50:10', 'return_reason', '1', '附件凭证订单交易状态未完成', '1', '驳回原因', '2018-02-05 14:50:10');
INSERT INTO `sys_config` VALUES ('306', '2018-02-05 14:50:10', 'return_reason', '2', '店铺要求驳回', '1', '驳回原因', '2018-02-05 14:50:10');
INSERT INTO `sys_config` VALUES ('307', '2018-02-05 14:50:10', 'return_reason', '3', '收款人需实名', '1', '驳回原因', '2018-02-05 14:50:10');
INSERT INTO `sys_config` VALUES ('308', '2018-02-05 14:50:10', 'return_reason', '4', '系统退货申请状态需已完成', '1', '驳回原因', '2018-02-05 14:50:10');
INSERT INTO `sys_config` VALUES ('309', '2018-02-05 14:50:10', 'return_reason', '5', '提供天猫交易截图，售后退款记录截图', '1', '驳回原因', '2018-02-05 14:50:10');
INSERT INTO `sys_config` VALUES ('310', '2018-02-05 14:50:10', 'return_reason', '6', '提供天猫交易截图，售后退款记录截图，差价凭证或聊天记录', '1', '驳回原因', '2018-02-05 14:50:10');
