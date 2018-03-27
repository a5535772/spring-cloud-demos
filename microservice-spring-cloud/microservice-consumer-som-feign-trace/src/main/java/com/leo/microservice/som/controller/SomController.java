package com.leo.microservice.som.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.leo.microservice.som.feign.UserFeignClient;
import com.leo.microservice.som.model.User;
import com.leo.microservice.som.util.ChineseName;


@RestController
public class SomController {

  @Autowired
  private UserFeignClient userFeignClient;
  
  
  @GetMapping("/trace1")
  public User trace1() {
    return this.userFeignClient.trace2(10l);
  }
  
  @GetMapping("/trace3")
  public User trace3() {
    return this.userFeignClient.trace4(10l);
  }  
  

  @GetMapping("/rest1")
  public User findById() {
    return this.userFeignClient.rest1(10l);
  }
  
  @GetMapping("/get1")
  public User get1() {
    return this.userFeignClient.get1(10l);
  }    
  
  @GetMapping("/get1good")
  public User get1good() {
    return this.userFeignClient.get1good(10l);
  }    
    
  
  @GetMapping("/get2")
  public User get2() {
    return this.userFeignClient.get2(10l, ChineseName.get());
  }      
  
  @GetMapping("/mix1")
  public User getById() {
    return this.userFeignClient.mix1(10l, ChineseName.get());
  }  

  @GetMapping("/post1")
  public User post1() {
	  User u=new User();
	  u.setName(ChineseName.get());
    return this.userFeignClient.post1(u);
  }
  
    
  
  @GetMapping("/post2")
  public User post2() {
	  User u=new User();
	  u.setName(ChineseName.get());
	  String a="a-1";
	  String b="b-1";
    return this.userFeignClient.post2(u,a,b);
  }  

}
