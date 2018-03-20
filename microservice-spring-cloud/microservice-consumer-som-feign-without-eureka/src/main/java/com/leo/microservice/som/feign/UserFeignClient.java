package com.leo.microservice.som.feign;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leo.microservice.som.model.User;

//这里需要放一个zull的地址
@FeignClient(url = "http://localhost:5555/som",name="hello")
public interface UserFeignClient {

	@RequestMapping(value = "/{zone}/rest1/{id}", method = RequestMethod.GET)
	public User clientCall(@PathVariable("zone") String zone,@PathVariable("id") Long id); // 两个坑：1. @GetMapping不支持 2. @PathVariable得设置value

}
