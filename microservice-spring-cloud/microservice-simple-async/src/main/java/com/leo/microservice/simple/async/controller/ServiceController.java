package com.leo.microservice.simple.async.controller;

import org.springframework.scheduling.annotation.Async;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/service")
public class ServiceController {

	@GetMapping("/sync")
	public void sync() {
		sleep2seconds("sync");
	}
	
	@Async
	@GetMapping("/async")
	public void async() {
		sleep2seconds("async");
	}
	
	private void sleep2seconds(String whoCaledMe) {
		System.out.println(whoCaledMe);
		try {
			Thread.sleep(2000L);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}
