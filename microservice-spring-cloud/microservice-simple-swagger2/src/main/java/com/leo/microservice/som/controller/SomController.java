package com.leo.microservice.som.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.leo.microservice.som.model.User;
import com.leo.microservice.som.model.UserQuery;
import com.leo.microservice.som.util.ChineseName;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * http://localhost:8080/swagger-ui.html
 * 
 * @author ZSH9833
 *
 */
@Api(value = "UserController  用户相关api")
@RestController
public class SomController {

	@ApiOperation(value = "根据用户id查询用户", notes = "just api operation note")
	@ResponseBody
	@GetMapping("/user/find/by/id")
	public User findById(@RequestBody UserQuery userQuery) {
		User u = new User();
		u.setId(1l);
		u.setAge(18);
		u.setUsername(ChineseName.get());
		return u;
	}

}
