package com.leo.microservice.som.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:config/system.properties")
@ImportResource(locations={"classpath:config/hello.xml"}) 
public class SystemConfig{
	

}
