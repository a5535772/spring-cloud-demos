package com.leo.microservice.eureka.test;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class PropertiesTest implements InitializingBean {

	@Bean
	public HelloBean init() {
		return new HelloBean();
	}

	@Value("${private.test.flag}")
	private String flag;
	

	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println("=============="+this+"=============");
		System.out.println("=============" + this.flag + "======================");

	}

}
