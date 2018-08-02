package com.leo.microservice.simple.listener.impl;

import org.springframework.context.ApplicationEvent;
import org.springframework.context.event.SmartApplicationListener;
import org.springframework.stereotype.Component;

import com.leo.microservice.simple.listener.controller.LoginController;
import com.leo.microservice.simple.listener.event.UserLoginEvent;
@Component
public class LoginEmailSmartListener implements SmartApplicationListener{

	

	@Override
	public void onApplicationEvent(ApplicationEvent event) {
		System.out.println("smart way send email sync to "+((UserLoginEvent) event).getUser().getName());
	}

	@Override
	public int getOrder() {
		return 1;
	}

	@Override
	public boolean supportsEventType(Class<? extends ApplicationEvent> eventType) {
		 return eventType == UserLoginEvent.class;
	}

	@Override
	public boolean supportsSourceType(Class<?> sourceType) {
		return sourceType==LoginController.class;
	}	

	
}
