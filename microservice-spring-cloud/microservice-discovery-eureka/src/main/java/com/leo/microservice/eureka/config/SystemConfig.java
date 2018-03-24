package com.leo.microservice.eureka.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource({"classpath:config/system.properties","classpath:config/private.properties"})
public class SystemConfig {

}
