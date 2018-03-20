package com.leo.microservice.user.config;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:config/system.properties")
public class SystemConfig implements InitializingBean{
	@Value("${myeureka.server.user.password}")
	private String aa;

	@Override
	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("========"+aa);
	}
	
	

}
