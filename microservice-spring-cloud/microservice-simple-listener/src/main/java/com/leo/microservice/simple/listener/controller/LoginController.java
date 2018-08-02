package com.leo.microservice.simple.listener.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.leo.microservice.simple.listener.dto.User;
import com.leo.microservice.simple.listener.event.UserLoginEvent;

@RestController
@RequestMapping("/user")
public class LoginController {
	@Autowired
	ApplicationContext applicationContext;

	@GetMapping("/login")
	public String login() {
		Long start=System.currentTimeMillis();
		applicationContext.publishEvent(new UserLoginEvent(this,new User("Sam")));
		System.out.println("cost time" + (System.currentTimeMillis()-start));
		return "login succ";
	}

}
