package com.leo.microservice.som.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.leo.microservice.entity.som.manage.cmd.SalesOrderCMD;
import com.leo.microservice.entity.som.manage.vo.SalesOrderVO;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * http://localhost:8080/swagger-ui.html
 * 
 * @author ZSH9833
 *
 */
@Api(value = "订单-api-value", tags = "订单-api-tags")
@RestController
public class SomController {
	/**
	 * 订单列表 @Description: @param @param
	 * tableFilterCollection @param @return @return @author: peng.chen_it @date
	 * 2018年1月8日 @throws
	 */
	@RequestMapping(value = "/orderList", method = RequestMethod.POST)
	@ResponseBody
	@ApiOperation(value = "订单列表-value", notes = "订单列表-notes")
	public List<SalesOrderVO> query(@RequestBody SalesOrderCMD salesOrderCMD) {
		List<String> orgSOList = queryByCMD(salesOrderCMD);
		return exchange(orgSOList);
	}

	private List<SalesOrderVO> exchange(List<String> orgSOList) {
		List<SalesOrderVO> result = new ArrayList<>();
		for (String orgSo : orgSOList) {
			result.add(echangeSingle(orgSo));
		}
		return result;
	}

	private SalesOrderVO echangeSingle(String orgSo) {
		return new Gson().fromJson(orgSo, SalesOrderVO.class);
	}

	private List<String> queryByCMD(SalesOrderCMD salesOrderCMD) {
		List<String> result = new ArrayList<>();
		for (int i = 0; i < 10; i++) {
			result.add(stubSingleSO(salesOrderCMD));
		}
		return result;
	}

	private String stubSingleSO(final SalesOrderCMD srcSalesOrderCMD) {
		SalesOrderCMD target = new SalesOrderCMD();
		BeanUtils.copyProperties(srcSalesOrderCMD, target);
		target.setDoDocNo(((Integer) new Random().nextInt(100)).toString());
		return new Gson().toJson(srcSalesOrderCMD);

	}
}
