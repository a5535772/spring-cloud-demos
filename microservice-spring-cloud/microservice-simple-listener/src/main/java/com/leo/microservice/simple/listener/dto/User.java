package com.leo.microservice.simple.listener.dto;

public class User {
	public User(String name) {
		super();
		this.name = name;
	}

	String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "User [name=" + name + "]";
	}
}
