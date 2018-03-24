package com.leo.microservice.som.config;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
//@EnableWebSecurity: 禁用Boot的默认Security配置，配合@Configuration启用自定义配置
// （需要扩展WebSecurityConfigurerAdapter）
@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true): 启用Security注解，
// 例如最常用的@PreAuthorize
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    //configure(HttpSecurity): Request层面的配置，对应XML Configuration中的<http>元素
    //定义URL路径应该受到保护，哪些不应该
    protected void configure(HttpSecurity http) throws Exception {
        http
        .authorizeRequests().antMatchers("/elegance-shutdown").authenticated().and().httpBasic()
        .and()
        .authorizeRequests().anyRequest().permitAll();
        //关闭csrf 防止循环定向
        http.csrf().disable();    	
    }


}