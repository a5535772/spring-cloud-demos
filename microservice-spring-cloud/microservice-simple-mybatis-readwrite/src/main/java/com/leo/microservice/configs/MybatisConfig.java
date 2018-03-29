package com.leo.microservice.configs;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:config/mybatis-read-write.properties")
//@PropertySource("classpath:config/mybatis.properties")
public class MybatisConfig {

}
