package com.leo.microservice.user.feign;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leo.microservice.user.model.User;

@FeignClient("consumer-som-feign")
public interface SomFeignClient {

	@RequestMapping(value = "/trace3", method = RequestMethod.GET)
	public User trace3();
}
