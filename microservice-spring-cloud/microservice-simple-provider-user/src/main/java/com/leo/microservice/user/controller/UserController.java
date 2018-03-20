package com.leo.microservice.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.leo.microservice.user.model.User;
import com.leo.microservice.user.service.UserService;

@RestController
public class UserController {

	@Autowired
	private DiscoveryClient discoveryClient;

	@Autowired
	UserService userServiceImpl;

	@GetMapping("/rest1/{id}")
	public User rest1(@PathVariable Long id) {
		User u = new User();
		u.setId(id);
		ServiceInstance localServiceInstance = this.discoveryClient.getLocalServiceInstance();
		System.out.println(localServiceInstance.getPort());
		System.out.println(u);
		return u;
	}

	@GetMapping("/get1")
	public User get1(Long id) {
		User u = new User();
		u.setId(id);
		return u;
	}
	@GetMapping("/get2")
	public User get2(Long id, String name) {
		User u = new User();
		u.setId(id);
		u.setName(name);
		return u;
	}	
	
	@GetMapping("/mix1/{id}")
	public User mix1(@PathVariable("id") Long id, String name) {
		User u = new User();
		u.setId(id);
		u.setName(name);
		return u;
	}	

	@PostMapping("/post1")
	public User postUser(@RequestBody User user) {
		System.out.println("provider 接收到参数" + user);
		return userServiceImpl.getRandom(18);
	}
	
	@PostMapping("/post2")
	public User postUser(@RequestBody User user,@RequestParam("a")String a,@RequestParam("b")String b) {
		System.out.println("provider 接收到参数" + user);
		System.out.println(a);
		System.out.println(b);
		return userServiceImpl.getRandom(18);
	}	

	@GetMapping("/instance-info")
	public ServiceInstance showInfo() {
		ServiceInstance localServiceInstance = this.discoveryClient.getLocalServiceInstance();
		return localServiceInstance;
	}
}
