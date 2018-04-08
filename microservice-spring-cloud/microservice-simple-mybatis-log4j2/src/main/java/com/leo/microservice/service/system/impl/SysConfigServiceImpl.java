package com.leo.microservice.service.system.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.leo.microservice.service.system.api.SysConfigServiceApi;
import com.leo.simple.mybatis.dao.system.mapper.SysConfigDao;
import com.leo.simple.mybatis.dao.system.model.SysConfig;

@Service("sysConfigServiceImpl")
public class SysConfigServiceImpl implements SysConfigServiceApi {
	@Autowired
	SysConfigDao sysConfigDao;

	@Transactional
	@Override
	public void updateLastModifyTime() {
		int count = sysConfigDao.updateLastModifyTime(1l, new Date());
		if (count == 1) {
			System.out.println("修改成功");
		}
	}

	@Transactional
	@Override
	public void updateLastModifyTimeWithError() {
		int count = sysConfigDao.updateLastModifyTime2("abc", new Date());

	}

	@Override
	public SysConfig findById(Long id) {
		return sysConfigDao.findById(id);
	}

}
