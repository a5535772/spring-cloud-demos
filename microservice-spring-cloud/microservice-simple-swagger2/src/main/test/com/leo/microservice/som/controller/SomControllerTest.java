package com.leo.microservice.som.controller;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.mockito.InjectMocks;

import com.leo.microservice.entity.som.manage.cmd.SalesOrderCMD;
import com.leo.microservice.entity.som.manage.vo.SalesOrderVO;
import com.leo.microservice.som.BaseUnitTest;

public class SomControllerTest extends BaseUnitTest {
	@InjectMocks
	SomController somController;

	@Test
	public void list_should_be_10() {
		SalesOrderCMD salesOrderCMD = new SalesOrderCMD();
		salesOrderCMD.setPayTime(new Date());
		List<SalesOrderVO> list = somController.query(salesOrderCMD);
		assertThat(list.size()).isEqualTo(10);
	}
}
