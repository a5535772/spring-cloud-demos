package com.leo.microservice.schedule;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.leo.microservice.service.system.api.SysConfigServiceApi;
import com.leo.simple.mybatis.dao.system.model.SysConfig;
@Component
@EnableScheduling
public class SchedulingPrint {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	SysConfigServiceApi sysConfigServiceImpl;
	@Scheduled(fixedDelay = 5000L)
	public void writeLog() {
		logger.debug("This is a debug message");
		logger.info("This is an info message");
		logger.warn("This is a warn message");
		logger.error("This is an error message");
		SysConfig sysConfig = sysConfigServiceImpl.findById(1l);
		logger.info(sysConfig.toString());
		try {
			sysConfigServiceImpl.updateLastModifyTimeWithError();	
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
	}
}
