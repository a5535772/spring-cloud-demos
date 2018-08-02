package com.leo.microservice.simple.listener.impl;

import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

import com.leo.microservice.simple.listener.event.UserLoginEvent;

@Component
public class LoginEmailOldListener implements ApplicationListener<UserLoginEvent> {

	@Override
	public void onApplicationEvent(UserLoginEvent userLoginEvent) {
		System.out.println("old way send email sync to " + userLoginEvent.getUser().getName());
	}

}
