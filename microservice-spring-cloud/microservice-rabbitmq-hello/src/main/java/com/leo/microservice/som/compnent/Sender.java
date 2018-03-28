//package com.leo.microservice.som.compnent;
//
//import java.util.Date;
//
//import org.springframework.amqp.core.AmqpTemplate;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.scheduling.annotation.EnableScheduling;
//import org.springframework.scheduling.annotation.Scheduled;
//import org.springframework.stereotype.Component;
//
//@Component
//@EnableScheduling
//public class Sender {
//	@Autowired
//	private AmqpTemplate rabbitTemplate;
//	
//	@Scheduled(fixedDelay = 1000L)
//	public void send() {
//		String context = "hello" + new Date();
//		System.out.println("Sender : " + context);
//		this.rabbitTemplate.convertAndSend(Constants.RoutingKey, context);
//	}
//}
