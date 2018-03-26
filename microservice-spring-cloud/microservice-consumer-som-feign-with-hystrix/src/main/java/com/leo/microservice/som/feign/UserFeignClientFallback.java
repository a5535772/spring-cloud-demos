package com.leo.microservice.som.feign;

import org.springframework.stereotype.Component;

import com.leo.microservice.som.model.User;
/**注册断路服务*/
@Component
public class UserFeignClientFallback implements UserFeignClient {

	@Override
	public User rest1(Long id) {
	    User user = new User();
	    user.setId(0L);
	    return user;
	}

	@Override
	public User get1(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User get1good(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User get2(Long id, String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User mix1(Long id, String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User post1(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User post2(User user, String a, String b) {
		// TODO Auto-generated method stub
		return null;
	}

}
