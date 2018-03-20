//package com.leo.microservice.som;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
//import org.springframework.test.context.ActiveProfiles;
//import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
//import org.testng.annotations.Test;
//
//import com.leo.microservice.som.feign.UserFeignClient;
//import com.leo.microservice.som.model.User;
//@SpringBootTest(classes = { Application.class }, webEnvironment = WebEnvironment.DEFINED_PORT)  
//@ActiveProfiles("dev")
//public class TestFind extends AbstractTestNGSpringContextTests {
//
//	@Autowired
//	private UserFeignClient userFeignClient;
//
////	@Test
////	public User findById() {
////		User u= this.userFeignClient.rest1(10l);
////		System.out.println("===============");
////		System.out.println(u);
////		return u;
////	}
//	
//	@Test
//	public void testHome() {
//		System.out.println("=======");
//	}
//	
//	
//}
