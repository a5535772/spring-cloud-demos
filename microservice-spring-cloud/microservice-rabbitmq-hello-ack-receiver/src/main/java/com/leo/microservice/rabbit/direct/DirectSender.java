package com.leo.microservice.rabbit.direct;

import java.util.Date;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class DirectSender {

	@Autowired
	private AmqpTemplate rabbitTemplate;

	public void send() {
		String context = "direct " + new Date();
		System.out.println("Sender : " + context);
		this.rabbitTemplate.convertAndSend("directExchange", "directRoutingkey", context);
	}

}