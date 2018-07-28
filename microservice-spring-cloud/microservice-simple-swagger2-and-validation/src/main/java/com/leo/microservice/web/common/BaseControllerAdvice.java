package com.leo.microservice.web.common;

import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

public class BaseControllerAdvice {

	@ResponseBody
	@ExceptionHandler(value = { Exception.class, MethodArgumentNotValidException.class })
	public BaseResponseEntity errorHandler(Exception exception) {
		return BaseResponseEntityFactory.createInstance(exception);
	}

}
