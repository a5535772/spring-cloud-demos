package com.leo.microservice.mult.service.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController()
public class MultServiceController {
		
	@GetMapping("/get/{id}")
	public String rest1(@PathVariable String id) {
		return "Gray project   "+"id:"+id;
	}

}
