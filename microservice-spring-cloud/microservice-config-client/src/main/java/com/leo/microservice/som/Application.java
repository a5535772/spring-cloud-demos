package com.leo.microservice.som;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class Application {

	@Value("${content}")
	String content;
	
//	@Value("${content2}")
//	String content2;

	@RequestMapping("/")
	public String home() {
		return "content:" + content;
//		return "content:" + content +  "      content2:"+content2;
	}

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
