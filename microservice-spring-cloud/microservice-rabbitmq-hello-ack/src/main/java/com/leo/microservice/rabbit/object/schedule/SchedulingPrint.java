package com.leo.microservice.rabbit.object.schedule;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.leo.microservice.model.User;
import com.leo.microservice.rabbit.object.ObjectSender;
import com.leo.microservice.util.ChineseName;

@Component
@EnableScheduling
public class SchedulingPrint {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ObjectSender objectSender;

	@Scheduled(fixedDelay = 5000L)
	public void sender() throws Exception {
		User u = new User();
		u.setName(ChineseName.get());
		u.setPass(new Date().toString());
		objectSender.send(u);
	}
}
