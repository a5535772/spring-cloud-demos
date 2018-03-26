package com.leo.microservice.som.feign;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.leo.microservice.som.model.User;

@FeignClient(name="user-provider",fallback=UserFeignClientFallback.class)
//Feign可以自定义许多，不在此项目内做扩展，详见 microservice-consumer-movie-feign-customizing
//@FeignClient(name = "microservice-provider-user", configuration = Configuration1.class)
//@FeignClient(name = "xxxx", url = "http://localhost:8761/", configuration = Configuration2.class)
public interface UserFeignClient {

	@RequestMapping(value = "/rest1/{id}", method = RequestMethod.GET)
	public User rest1(@PathVariable("id") Long id); // 两个坑：1. @GetMapping不支持 2. @PathVariable得设置value

	@RequestMapping(value = "/get1", method = RequestMethod.GET)//坑，不写@RequestParam会以post发送
	public User get1(Long id);
	
	@RequestMapping(value = "/get1", method = RequestMethod.GET)//坑，不写@RequestParam会以post发送
	public User get1good(@RequestParam("id")Long id);	

	@RequestMapping(value = "/get2", method = RequestMethod.GET)
	public User get2(@RequestParam("id") Long id, @RequestParam("name") String name);

	@RequestMapping(value = "/mix1/{id}", method = RequestMethod.GET)
	public User mix1(@PathVariable("id") Long id, @RequestParam("name") String name);

	@RequestMapping(value = "/post1", method = RequestMethod.POST)
	public User post1(@RequestBody User user);

	@RequestMapping(value = "/post2", method = RequestMethod.POST)
	public User post2(@RequestBody User user,@RequestParam("a")String a,@RequestParam("b")String b);	

	// 该请求不会成功，只要参数是复杂对象，即使指定了是GET方法，feign依然会以POST方法进行发送请求。可能是我没找到相应的注解或使用方法错误。
	// 如勘误，请@lilizhou2008 eacdy0000@126.com
	// @RequestMapping(value = "/get-user", method = RequestMethod.GET)
	// public User getUser(User user);
}
