package com.leo.microservice.som.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.leo.microservice.web.common.ResponseBodyWrapFactoryBean;
/**
 * 配置response的 wapper
 * @author ZSH9833
 *
 */
@Configuration
public class HandlerMethodReturnValueHandlerConfig {

    @Bean  
    public ResponseBodyWrapFactoryBean getResponseBodyWrap() {  
        return  new ResponseBodyWrapFactoryBean();  
    }  
    
}
