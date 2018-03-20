package com.leo.microservice.eureka.test;

import org.springframework.beans.factory.InitializingBean;

public class HelloBean implements InitializingBean{

	@Override
	public void afterPropertiesSet() throws Exception {
//		System.out.println("===================="+this+"====================");
	}

}
