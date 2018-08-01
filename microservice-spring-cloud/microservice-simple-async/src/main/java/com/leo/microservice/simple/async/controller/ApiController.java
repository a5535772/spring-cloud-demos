package com.leo.microservice.simple.async.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.leo.microservice.simple.async.feign.FeignService;

@RestController
@RequestMapping("/api")
public class ApiController {
	@Autowired
	FeignService feignService;
	
	@GetMapping("/sync")
	public void sync() {
		Long start=System.currentTimeMillis();
		feignService.sync();
		System.out.println("sync used time "+ (System.currentTimeMillis()-start));
	}
	
	@GetMapping("/async")
	public void async() {
		Long start=System.currentTimeMillis();
		feignService.async();
		System.out.println("async used time "+ (System.currentTimeMillis()-start));
	}
	
}
