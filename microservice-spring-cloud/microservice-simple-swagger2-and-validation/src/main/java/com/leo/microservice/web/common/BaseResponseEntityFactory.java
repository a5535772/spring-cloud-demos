package com.leo.microservice.web.common;

import org.springframework.web.bind.MethodArgumentNotValidException;

import com.google.gson.Gson;
import com.leo.microservice.util.TimeUtil;

public class BaseResponseEntityFactory {
	
	private BaseResponseEntityFactory() {
	}

	static Gson gson = new Gson();

	public static BaseResponseEntity createInstance(Exception exception) {
		return createInstance(exception, null);
	}

	public static BaseResponseEntity createInstance(Object data) {
		return createInstance(null, data);
	}

	private static BaseResponseEntity createInstance(Exception exception, Object data) {
		if (noExceptionHappens(exception)) {
			return constructSuccessBR(data);
		}
		return constructFailBR(exception);

	}

	private static BaseResponseEntity constructFailBR(Exception exception) {
		BaseResponseEntity br = new BaseResponseEntity();
		br.setResponseTime(TimeUtil.getCurrent());
		br.setIsSuccess(Boolean.FALSE);
		br.setStackTrace(gson.toJson(exception.getStackTrace()));

		if (exception instanceof MethodArgumentNotValidException) {
			br.setMsg(gson.toJson(((MethodArgumentNotValidException) exception).getBindingResult().getFieldErrors()));
			br.setCode("100");
		} else if (exception instanceof Exception) {
			br.setMsg(gson.toJson(exception));
			br.setCode("200");
		}
		return br;
	}

	private static BaseResponseEntity constructSuccessBR(Object data) {
		BaseResponseEntity br = new BaseResponseEntity();
		br.setResponseTime(TimeUtil.getCurrent());
		br.setIsSuccess(Boolean.TRUE);
		br.setData(data);
		return br;
	}

	private static boolean noExceptionHappens(Exception exception) {
		return exception == null;
	}
}
