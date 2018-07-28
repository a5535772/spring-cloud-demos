package com.leo.microservice.web.common;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.MethodParameter;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodReturnValueHandler;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.google.gson.Gson;

public class ResponseBodyWrapHandler implements HandlerMethodReturnValueHandler {
	private static final Logger logger = LoggerFactory.getLogger(ResponseBodyWrapHandler.class);
	private static Gson gson = new Gson();

	private final HandlerMethodReturnValueHandler delegate;

	public ResponseBodyWrapHandler(HandlerMethodReturnValueHandler delegate) {
		this.delegate = delegate;
	}

	/**
	 * another example is return returnType.getMethodAnnotation(ResponseBody.class) != null; 
	 */
	@Override
	public boolean supportsReturnType(MethodParameter returnType) {
		 return delegate.supportsReturnType(returnType);
	}

	

	@Override
	public void handleReturnValue(Object returnValue, MethodParameter returnType, ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest) throws Exception {
		mavContainer.setRequestHandled(true);
		HttpServletResponse response = webRequest.getNativeResponse(HttpServletResponse.class);
		response.setContentType("application/json;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			out.write(getOutput(returnValue));
			out.flush();
		} catch (Exception e) {
			logger.error(e.getMessage());
			throw e;
		}
	}

	private String getOutput(Object returnValue) {
		return gson.toJson(BaseResponseEntityFactory.createInstance(returnValue));
	}

}
