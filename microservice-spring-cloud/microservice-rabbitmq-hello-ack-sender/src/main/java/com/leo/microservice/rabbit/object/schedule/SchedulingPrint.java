package com.leo.microservice.rabbit.object.schedule;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.leo.microservice.rabbit.direct.DirectSender;

@Component
@EnableScheduling
public class SchedulingPrint {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private DirectSender directSender;

	@Scheduled(fixedDelay = 5000L)
	public void sender() throws Exception {
		directSender.send();
	}
}
