package com.leo.microservice.som.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.leo.microservice.som.feign.UserFeignClient;
import com.leo.microservice.som.model.User;

@RestController
public class SomController {

	@Autowired
	private UserFeignClient userFeignClient;

	@GetMapping("/{zone}/{id}")
	public User findById(@PathVariable("zone") String zone, @PathVariable("id") Long id) {
		return this.userFeignClient.clientCall(zone, id);
	}

}
