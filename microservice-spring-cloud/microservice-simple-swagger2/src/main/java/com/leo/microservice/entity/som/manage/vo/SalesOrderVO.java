package com.leo.microservice.entity.som.manage.vo;

import java.io.Serializable;
import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 订单信息
 * 
 * @author dan.wu
 *
 */
@ApiModel("查询订单-响应结果")
public class SalesOrderVO implements Serializable {

	private static final long serialVersionUID = -3311084449170656929L;

	@ApiModelProperty(value = "店铺编码,分库key", required = true, example = "TBCJH2015")
	private String shopCode;
	@ApiModelProperty("创建时间")
	private Date createTime;
	@ApiModelProperty(value = "付款状态,详见字典表code=PaymentStatus ", example = "1")
	private Integer paymentStatus;
	@ApiModelProperty("创建类型")
	private String sourceTypeValue;
	@ApiModelProperty("订单编号")
	private String orderDocNo;
	@ApiModelProperty("平台单号")
	private String pfDocNo;
	@ApiModelProperty("会员名称")
	private String memberName;
	@ApiModelProperty("收货人")
	private String receiver;
	@ApiModelProperty("出库单号")
	private String doDocNo;
	@ApiModelProperty("订单类型")
	private Integer orderType;
	@ApiModelProperty(" 创建人 ")
	private String createUser;
	@ApiModelProperty("收货地址")
	private String address;
	@ApiModelProperty("货号")
	private String itemNo;
	@ApiModelProperty("sku")
	private String skuCode;
	@ApiModelProperty("商品数量(订单初始sum(item.qty) + 后续促销应用绑定的赠品/手工赠品), 不参与有效商品计算 ")
	private Long totalItemQty;
	@ApiModelProperty("卖家备注")
	private String sellerMemo;
	@ApiModelProperty("买家备注")
	private String buyerMemo;
	@ApiModelProperty("是否需要发票")
	private String isNeededInvoiceValue;
	@ApiModelProperty("时间类型")
	private String timeType;
	@ApiModelProperty("开始时间")
	private Date startTime;
	@ApiModelProperty("结束时间")
	private Date endTime;
	@ApiModelProperty(" 支付时间")
	private Date payTime;
	@ApiModelProperty("支付结束时间")
	private Date payEndTime;
	@ApiModelProperty("订单来源类型")
	private Integer sourceType;
	@ApiModelProperty("特殊订单类型")
	private Integer specialType;
	@ApiModelProperty("平台下单时间")
	private Date pfOrderTime;
	@ApiModelProperty("是否货到付款")
	private String isCodValue;
	@ApiModelProperty("店铺名称")
	private String shopName;
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Integer getPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(Integer paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	public String getSourceTypeValue() {
		return sourceTypeValue;
	}
	public void setSourceTypeValue(String sourceTypeValue) {
		this.sourceTypeValue = sourceTypeValue;
	}
	public String getOrderDocNo() {
		return orderDocNo;
	}
	public void setOrderDocNo(String orderDocNo) {
		this.orderDocNo = orderDocNo;
	}
	public String getPfDocNo() {
		return pfDocNo;
	}
	public void setPfDocNo(String pfDocNo) {
		this.pfDocNo = pfDocNo;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getDoDocNo() {
		return doDocNo;
	}
	public void setDoDocNo(String doDocNo) {
		this.doDocNo = doDocNo;
	}
	public Integer getOrderType() {
		return orderType;
	}
	public void setOrderType(Integer orderType) {
		this.orderType = orderType;
	}
	public String getCreateUser() {
		return createUser;
	}
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getItemNo() {
		return itemNo;
	}
	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}
	public String getSkuCode() {
		return skuCode;
	}
	public void setSkuCode(String skuCode) {
		this.skuCode = skuCode;
	}
	public Long getTotalItemQty() {
		return totalItemQty;
	}
	public void setTotalItemQty(Long totalItemQty) {
		this.totalItemQty = totalItemQty;
	}
	public String getSellerMemo() {
		return sellerMemo;
	}
	public void setSellerMemo(String sellerMemo) {
		this.sellerMemo = sellerMemo;
	}
	public String getBuyerMemo() {
		return buyerMemo;
	}
	public void setBuyerMemo(String buyerMemo) {
		this.buyerMemo = buyerMemo;
	}
	public String getIsNeededInvoiceValue() {
		return isNeededInvoiceValue;
	}
	public void setIsNeededInvoiceValue(String isNeededInvoiceValue) {
		this.isNeededInvoiceValue = isNeededInvoiceValue;
	}
	public String getTimeType() {
		return timeType;
	}
	public void setTimeType(String timeType) {
		this.timeType = timeType;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public Date getPayTime() {
		return payTime;
	}
	public void setPayTime(Date payTime) {
		this.payTime = payTime;
	}
	public Date getPayEndTime() {
		return payEndTime;
	}
	public void setPayEndTime(Date payEndTime) {
		this.payEndTime = payEndTime;
	}
	public Integer getSourceType() {
		return sourceType;
	}
	public void setSourceType(Integer sourceType) {
		this.sourceType = sourceType;
	}
	public Integer getSpecialType() {
		return specialType;
	}
	public void setSpecialType(Integer specialType) {
		this.specialType = specialType;
	}
	public Date getPfOrderTime() {
		return pfOrderTime;
	}
	public void setPfOrderTime(Date pfOrderTime) {
		this.pfOrderTime = pfOrderTime;
	}
	public String getIsCodValue() {
		return isCodValue;
	}
	public void setIsCodValue(String isCodValue) {
		this.isCodValue = isCodValue;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	
	@Override
	public String toString() {
		return "SalesOrderVO [shopCode=" + shopCode + ", createTime=" + createTime + ", paymentStatus=" + paymentStatus
				+ ", sourceTypeValue=" + sourceTypeValue + ", orderDocNo=" + orderDocNo + ", pfDocNo=" + pfDocNo
				+ ", memberName=" + memberName + ", receiver=" + receiver + ", doDocNo=" + doDocNo + ", orderType="
				+ orderType + ", createUser=" + createUser + ", address=" + address + ", itemNo=" + itemNo
				+ ", skuCode=" + skuCode + ", totalItemQty=" + totalItemQty + ", sellerMemo=" + sellerMemo
				+ ", buyerMemo=" + buyerMemo + ", isNeededInvoiceValue=" + isNeededInvoiceValue + ", timeType="
				+ timeType + ", startTime=" + startTime + ", endTime=" + endTime + ", payTime=" + payTime
				+ ", payEndTime=" + payEndTime + ", sourceType=" + sourceType + ", specialType=" + specialType
				+ ", pfOrderTime=" + pfOrderTime + ", isCodValue=" + isCodValue + ", shopName=" + shopName + "]";
	}
}
