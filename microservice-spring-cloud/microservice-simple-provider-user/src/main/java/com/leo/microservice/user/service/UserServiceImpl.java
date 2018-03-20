package com.leo.microservice.user.service;

import org.springframework.stereotype.Service;

import com.leo.microservice.user.model.User;
import com.leo.microservice.user.util.ChineseName;
@Service("userServiceImpl")
public class UserServiceImpl implements UserService {

	@Override
	public User getRandom(int age) {
		User u=new User();
		u.setName(ChineseName.get());
		u.setAge(age);
		return u;
	}

}
