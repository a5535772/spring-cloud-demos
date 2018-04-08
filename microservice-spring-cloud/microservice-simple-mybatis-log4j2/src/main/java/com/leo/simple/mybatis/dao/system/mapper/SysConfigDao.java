package com.leo.simple.mybatis.dao.system.mapper;

import java.util.Date;

import org.apache.ibatis.annotations.Param;

import com.leo.simple.mybatis.dao.system.model.SysConfig;

public interface SysConfigDao {

	SysConfig findById(Long id);

	int updateLastModifyTime(@Param("id") Long id, @Param("currentTime") Date time);
	
	int updateLastModifyTime2(@Param("id") String id, @Param("currentTime") Date time);
}
