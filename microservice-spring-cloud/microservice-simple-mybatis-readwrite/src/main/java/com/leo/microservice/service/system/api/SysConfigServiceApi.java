package com.leo.microservice.service.system.api;

import org.leo.orm.common.DynamicDataSourceSupport;

import com.leo.simple.mybatis.dao.system.model.SysConfig;

public interface SysConfigServiceApi extends DynamicDataSourceSupport{
	
	void updateLastModifyTime();
	
	
	void updateLastModifyTimeWithError();
	
	SysConfig findById();
}
