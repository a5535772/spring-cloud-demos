package com.leo.microservice.service.system.api;

import com.leo.simple.mybatis.dao.system.model.SysConfig;

public interface SysConfigServiceApi {

	SysConfig findById(Long id);
	
	void updateLastModifyTime();
	
	
	void updateLastModifyTimeWithError();
}
