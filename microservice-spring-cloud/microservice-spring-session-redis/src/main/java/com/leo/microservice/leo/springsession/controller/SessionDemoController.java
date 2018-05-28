package com.leo.microservice.leo.springsession.controller;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SessionDemoController {

	@GetMapping("/set/session")
	public String put(HttpSession session) {
		String name = "zhangsan";
		session.setAttribute("name", name);
		return name;
	}

	@GetMapping("/show/session")
	public String get(HttpSession session) {

		String name = (String) session.getAttribute("name");
		return name;
	}

}
