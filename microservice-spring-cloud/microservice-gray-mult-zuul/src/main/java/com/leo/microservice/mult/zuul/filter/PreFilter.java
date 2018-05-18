//package com.leo.microservice.mult.zuul.filter;
//
//import static org.springframework.cloud.netflix.zuul.filters.support.FilterConstants.FORWARD_TO_KEY;
//import static org.springframework.cloud.netflix.zuul.filters.support.FilterConstants.PRE_DECORATION_FILTER_ORDER;
//import static org.springframework.cloud.netflix.zuul.filters.support.FilterConstants.PRE_TYPE;
//import static org.springframework.cloud.netflix.zuul.filters.support.FilterConstants.SERVICE_ID_KEY;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.context.annotation.Configuration;
//
//import com.netflix.zuul.ZuulFilter;
//import com.netflix.zuul.context.RequestContext;
//
//
///**
// * @author wuweifeng wrote on 2018/1/17.
// */
//@Configuration
//public class PreFilter extends ZuulFilter {
//	@Override
//	public int filterOrder() {
//		return PRE_DECORATION_FILTER_ORDER - 1;
//	}
//
//	@Override
//	public String filterType() {
//		return PRE_TYPE;
//	}
//
//	@Override
//	public boolean shouldFilter() {
//		RequestContext ctx = RequestContext.getCurrentContext();
//		// a filter has already forwarded
//		// a filter has already determined serviceId
//		return !ctx.containsKey(FORWARD_TO_KEY) && !ctx.containsKey(SERVICE_ID_KEY);
//	}
//
//	@Override
//	public Object run() {
//		RequestContext ctx = RequestContext.getCurrentContext();
//		HttpServletRequest request = ctx.getRequest();
//		if (request.getParameter("foo") != null) {
//			// put the serviceId in `RequestContext`
//			RibbonFilterContextHolder.getCurrentContext().add("lancher", "1");
//		} else {
//			RibbonFilterContextHolder.getCurrentContext().add("lancher", "2");
//		}
//
//		return null;
//	}
//}