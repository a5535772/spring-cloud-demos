package com.leo.microservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.leo.microservice.service.system.api.SysConfigServiceApi;

@RestController("/")
public class SysConfigController {
	@Autowired
	SysConfigServiceApi sysConfigServiceApi;
	
	@GetMapping("/update")
	String updateLastModifyTime() {
		System.out.println(11111);
		sysConfigServiceApi.updateLastModifyTime();
		return "succ";
	};

}
