package com.leo.microservice.rabbitmq;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.leo.microservice.rabbit.direct.DirectSender;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DirectTest {

	@Autowired
	private DirectSender helloSender;

	@Test
	public void sender() throws Exception {
		helloSender.send();
	}

}