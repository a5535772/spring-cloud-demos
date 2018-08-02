package com.leo.microservice.simple.listener.event;

import org.springframework.context.ApplicationEvent;

import com.leo.microservice.simple.listener.dto.User;

public class UserLoginEvent extends ApplicationEvent{
	/**
	 * 
	 */
	private static final long serialVersionUID = -770994836296430652L;

	public UserLoginEvent(Object source,User user) {
		super(source);
		this.user = user;
	}

	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "UserLoginEvent [user=" + user + "]";
	}
}
