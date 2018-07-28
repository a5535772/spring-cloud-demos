package com.leo.microservice.web.common;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BaseResponseEntity implements Serializable {

	private static final long serialVersionUID = 3681501520884268066L;
	// 是否执行成功并无业务异常，在没有抛出业务异常的情况下，默认为true，正常返回data
	// 如查询数据列表等，如果为false,则需要封装code和msg，前端根据msg进行相关提示
	private Boolean isSuccess;
	// 响应时间 如:2017-01-01 14:00:00
	private String responseTime;
	// 此处为业务异常编码如0001，跟msg为对应 msg的取值应该为 bussiness_exception_+code在国际化文件里面查找
	private String code;
	// 响应描述，错误信息
	private String msg;
	// json对象
	private transient Object data;

	// exception info
	private String stackTrace;

	public BaseResponseEntity() {
	}
	
	public BaseResponseEntity(Boolean isSuccess, String responseTime, String code, String msg, Object data) {
		this.isSuccess = isSuccess;
		this.responseTime = responseTime;
		this.code = code;
		this.msg = msg;
		this.data = data;
	}

	public BaseResponseEntity(Boolean isSuccess, String code, String msg, Object data) {
		this.isSuccess = isSuccess;
		this.responseTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		this.code = code;
		this.msg = msg;
		this.data = data;
	}

	public String getResponseTime() {
		return responseTime;
	}

	public void setResponseTime(String responseTime) {
		this.responseTime = responseTime;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public String getStackTrace() {
		return stackTrace;
	}

	public void setStackTrace(String stackTrace) {
		this.stackTrace = stackTrace;
	}

	public Boolean getIsSuccess() {
		return isSuccess;
	}

	public void setIsSuccess(Boolean isSuccess) {
		this.isSuccess = isSuccess;
	}

}
