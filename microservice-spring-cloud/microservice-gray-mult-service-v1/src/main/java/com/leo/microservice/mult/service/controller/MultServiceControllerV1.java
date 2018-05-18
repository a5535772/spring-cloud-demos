//package com.leo.microservice.mult.service.controller;
//
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//@RestController()
//@RequestMapping(headers="apt-version=1")
//public class MultServiceControllerV1 {
//	
//	@Value("${mult.service.version}")
//	String version;
//	
//	@GetMapping("/get/{id}")
//	public String rest1(@PathVariable String id) {
//		return "version:"+version+"   id:"+id;
//	}
//
//}
