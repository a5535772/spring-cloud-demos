package com.leo.microservice.som.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.BeanUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.leo.microservice.entity.som.manage.dto.SalesOrderQuery;
import com.leo.microservice.entity.som.manage.vo.SalesOrderVO;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * http://localhost:8080/swagger-ui.html
 * 
 * @author ZSH9833
 *
 */
@Api(tags = "订单-api-tags")
@RestController
public class SomController {

	@RequestMapping(value = "/orderList", method = RequestMethod.POST)
	@ResponseBody
	@ApiOperation(value = "订单列表-value", notes = "订单列表-notes")
	public List<SalesOrderVO> query(@RequestBody @Validated SalesOrderQuery salesOrderCMD) {
		List<String> orgSOList = queryByCMD(salesOrderCMD);
		return exchange(orgSOList);
	}

	@RequestMapping(value = "/orderListWithBindingResult", method = RequestMethod.POST)
	@ResponseBody
	@ApiOperation(value = "订单列表-value", notes = "订单列表-notes")
	public List<SalesOrderVO> queryWithBindingResult(@RequestBody @Validated SalesOrderQuery salesOrderCMD,
			BindingResult result) {
		List<String> orgSOList = queryByCMD(salesOrderCMD);
		return exchange(orgSOList);
	}

	@RequestMapping(value = "/get", method = RequestMethod.GET)
	@ResponseBody
	@ApiOperation(value = "订单列表-value", notes = "订单列表-notes")
	public List<SalesOrderVO> get(SalesOrderQuery salesOrderCMD) {
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

	private List<String> queryByCMD(SalesOrderQuery salesOrderCMD) {
		List<String> result = new ArrayList<>();
		for (int i = 0; i < 10; i++) {
			result.add(stubSingleSO(salesOrderCMD));
		}
		return result;
	}

	private String stubSingleSO(final SalesOrderQuery srcSalesOrderCMD) {
		SalesOrderQuery target = new SalesOrderQuery();
		BeanUtils.copyProperties(srcSalesOrderCMD, target);
		target.setDoDocNo(((Integer) new Random().nextInt(100)).toString());
		return new Gson().toJson(srcSalesOrderCMD);

	}
}
