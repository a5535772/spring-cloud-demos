package com.leo.microservice.som;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard;

@SpringBootApplication
@EnableEurekaClient
@EnableFeignClients
/**
 * 开启断路器功能<br />
 * 开启断路后，可以用 http://10.88.77.143:7902/hystrix.stream 来进行监控<br/>
 * 但这个看起来很费力，可以用 Hystrix Dashboard 或 Turbine来进行断路监控
 */
@EnableCircuitBreaker
/**
 * 开启 Hystrix Dashboard页面监控<br/>
 * 页面监控可以看做一个单独的项目，和断路机制无关，通过 http://10.88.77.143:7902/hystrix 这个url<br/>
 * 可以访问 Hystrix Dashboard 页面，在输入 http://10.88.77.143:7902/hystrix.stream 来选择你想要看的节点
 *
 */
@EnableHystrixDashboard
public class Application {

  public static void main(String[] args) {
    SpringApplication.run(Application.class, args);
  }
}
