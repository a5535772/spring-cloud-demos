package com.leo.microservice;

import org.mybatis.spring.boot.autoconfigure.MybatisAutoConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.jpa.JpaRepositoriesAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
/**
 * 禁止autoconfig的启用<br/>
 * 疑问，这玩意儿比如 hibernate为什么会autoconfig？
 * @author ZSH9833
 *
 */
@EnableAutoConfiguration(exclude = { 
		DataSourceAutoConfiguration.class, 
		HibernateJpaAutoConfiguration.class, // （如果使用Hibernate时，需要加）
		//存疑，记得又一次没加这个起不来
//		DataSourceTransactionManagerAutoConfiguration.class, 
		MybatisAutoConfiguration.class,
		JpaRepositoriesAutoConfiguration.class//禁止springboot自动加载持久化bean  
})
@ImportResource(locations = { "classpath:spring.xml" })
public class Application {
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
