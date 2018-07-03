package com.leo.microservice.som;

import org.assertj.core.api.Assertions;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.leo.microservice.som.model.User;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = Application.class)
public class ResourcesLoadTest {
	@Value("${myeureka.server.user.name}")
	String s1;

//	@Value("${myeureka.server.user.password}")
	String s2;

	@Autowired
	User user;
	
	@Test
	public void hello() {
		System.out.println(s1);
		System.out.println(s2);
		System.out.println(user);
		
	}
}