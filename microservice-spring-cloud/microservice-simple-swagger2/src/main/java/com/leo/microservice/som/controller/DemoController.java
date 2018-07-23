//package com.leo.microservice.som.controller;
//
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.leo.microservice.som.model.User;
//import com.leo.microservice.som.model.UserQuery;
//
//import io.swagger.annotations.Api;
//import io.swagger.annotations.ApiOperation;
//
///**
// * http://localhost:8080/swagger-ui.html
// * 
// * @author ZSH9833
// *
// */
//@Api(value = "UserController  用户相关api")
//@RestController
//public class DemoController {
//
//	@ApiOperation(value = "Get-根据用户id查询用户", notes = "just api operation note")
//	@GetMapping("/user/get/by/id/good")
//	public User getByIdGood(UserQuery userQuery) {
//		System.out.println(userQuery);
//		User u = new User();
//		u.setId(1l);
//		u.setAge(18);
//		u.setUsername(userQuery.getName());
//		return u;
//	}
//
//	/**
//	 * Get请求，不支持request body
//	 * @param userQuery
//	 * @return
//	 */
//	@ApiOperation(value = "Get-根据用户id查询用户-error", notes = "just api operation note")
//	@GetMapping("/user/get/by/id/error")
//	public User getByIdError(@RequestBody UserQuery userQuery) {
//		System.out.println(userQuery);
//		User u = new User();
//		u.setId(1l);
//		u.setAge(18);
//		u.setUsername(userQuery.getName());
//		return u;
//	}
//
//	/**
//	 * json格式
//	 * @param userQuery
//	 * @return
//	 */
//	@ApiOperation(value = "Post-根据用户id查询用户", notes = "just api operation note")
//	@PostMapping("/user/post/by/id/good")
//	public User postByIdGood(@RequestBody UserQuery userQuery) {
//		System.out.println(userQuery);
//		User u = new User();
//		u.setId(1l);
//		u.setAge(18);
//		u.setUsername(userQuery.getName());
//		return u;
//	}
//
//	/**
//	 * 普通格式
//	 * @param userQuery
//	 * @return
//	 */
//	@ApiOperation(value = "Post-根据用户id查询用户-second", notes = "just api operation note")
//	@PostMapping("/user/post/by/id/second")
//	public User postByIdSecond(UserQuery userQuery) {
//		System.out.println(userQuery);
//		User u = new User();
//		u.setId(1l);
//		u.setAge(18);
//		u.setUsername(userQuery.getName());
//		return u;
//	}
//
//}
