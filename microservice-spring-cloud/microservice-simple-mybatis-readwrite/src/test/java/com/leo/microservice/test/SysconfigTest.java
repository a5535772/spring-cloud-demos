package com.leo.microservice.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.leo.microservice.Application;
import com.leo.microservice.service.system.api.SysConfigServiceApi;
import com.leo.simple.mybatis.dao.system.mapper.SysConfigDao;
import com.leo.simple.mybatis.dao.system.model.SysConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = Application.class)
public class SysconfigTest {

	@Autowired
	SysConfigDao dao;

	@Autowired
	SysConfigServiceApi api;

	@Test
	public void findUserById() {
		SysConfig record = dao.findById(1l);
		System.out.println(record);

	}

	
	@Test
	public void testInert() {
		Long a = dao.insertByBatchSelect("666", "config");
		System.out.println(a);

	}
	
	@Test
	public void findUserById2() {
		for (int i = 0; i < 20; i++) {
			SysConfig record = api.findById();
			System.out.println(record);	
		}
		

	}
	
	@Test
	public void updateLastModifyTime() {
		api.updateLastModifyTime();

	}

	@Test
	public void updateLastModifyTimeWithError() {
		try {
			api.updateLastModifyTimeWithError();	
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		

	}

}
