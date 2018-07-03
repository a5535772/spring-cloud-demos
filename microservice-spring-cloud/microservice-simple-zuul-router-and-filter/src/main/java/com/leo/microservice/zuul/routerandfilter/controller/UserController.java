package com.leo.microservice.zuul.routerandfilter.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {


	@GetMapping("/test")
	public String postUser() {
		return "test";
	}

	@RequestMapping("/tmall/create/order")
	public String tmall(@RequestParam("shopCode") String shopCode) {
		return "create tmall order with "+shopCode;
	}
	
	@RequestMapping("/baozun/create/order")
	public String postUse1r(@RequestParam("shopCode") String shopCode) {
		return "create baozun order with  "+shopCode;
	}
}
