package com.leo.microservice.simple.async.feign;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@FeignClient(name = "feignService", url = "http://127.0.0.1:8080/service")
public interface FeignService {

	/**
	 * 这里可以使用async，调用对方的sync方法
	 */
	// @Async
	@RequestMapping(value = "/sync", method = RequestMethod.GET)
	public void sync();

	@RequestMapping(value = "/async", method = RequestMethod.GET)
	public void async();
}
