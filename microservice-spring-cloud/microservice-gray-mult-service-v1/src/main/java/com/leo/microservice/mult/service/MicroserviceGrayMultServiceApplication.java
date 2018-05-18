package com.leo.microservice.mult.service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class MicroserviceGrayMultServiceApplication {

  public static void main(String[] args) {
    SpringApplication.run(MicroserviceGrayMultServiceApplication.class, args);
  }
}
