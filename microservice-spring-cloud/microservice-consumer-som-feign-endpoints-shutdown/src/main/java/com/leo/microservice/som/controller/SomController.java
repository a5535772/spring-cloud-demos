package com.leo.microservice.som.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SomController {

	@GetMapping("/hello")
	public String post1() {
		return "hello";
	}

}
