package com.leo.microservice.simple.listener.impl;

import org.springframework.context.event.EventListener;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

import com.leo.microservice.simple.listener.event.UserLoginEvent;

@Component
public class LoginEmailFashonListener {

	/**
	 * 可以使用 order 来排序
	 * 
	 * @param userLoginEvent
	 */
	@EventListener(classes = {UserLoginEvent.class})
	public void sendEmailSync(UserLoginEvent userLoginEvent) {
		System.out.println("send email sync to " + userLoginEvent.getUser().getName());
	}

	@EventListener
	@Async
	public void sendEmailAsync(UserLoginEvent userLoginEvent) {
		System.out.println("send email async to " + userLoginEvent.getUser().getName());
	}
}
