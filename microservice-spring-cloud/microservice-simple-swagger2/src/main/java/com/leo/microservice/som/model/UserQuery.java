package com.leo.microservice.som.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel("用户Query")
public class UserQuery {
	@ApiModelProperty("主键")
	private Long id;
	
	@ApiModelProperty("年龄")
	private int age;

	@Override
	public String toString() {
		return "UserQuery [id=" + id + ", age=" + age + "]";
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	

}
