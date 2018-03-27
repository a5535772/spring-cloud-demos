package com.leo.microservice.user;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;

@SpringBootApplication
@EnableEurekaClient
@EnableFeignClients
public class MicroserviceSimpleProviderUserApplication {

  public static void main(String[] args) {
    SpringApplication.run(MicroserviceSimpleProviderUserApplication.class, args);
  }
}
