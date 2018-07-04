package com.leo.microservice.zuul.routerandfilter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.cloud.netflix.zuul.filters.support.FilterConstants;
import org.springframework.stereotype.Component;
import org.springframework.web.util.WebUtils;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;

@Component
public class SomUrlPathFilter extends ZuulFilter {

	static final String SOM_ROOT_URL = "/ecs/som";

	static final String SHOP_CODE = "shopCode";

	static final String ZONE_TMALL = "/tmall";

	static final String ZONE_BAOZUN = "/baozun";

	@Override
	public String filterType() {
		return FilterConstants.PRE_TYPE;
	}

	@Override
	public int filterOrder() {
		return FilterConstants.PRE_DECORATION_FILTER_ORDER - 1;
	}

	@Override
	public boolean shouldFilter() {
		String requestURI = RequestContext.getCurrentContext().getRequest().getRequestURI();
		return requestURI.startsWith(SOM_ROOT_URL) && !requestURI.contains(ZONE_TMALL)
				&& !requestURI.contains(ZONE_BAOZUN);
	}

	@Override
	public Object run() {
		RequestContext context = RequestContext.getCurrentContext();
		context.getRequest().setAttribute(WebUtils.INCLUDE_REQUEST_URI_ATTRIBUTE,
				this.constractRequestURI(context.getRequest()));
		return null;
	}

	private String constractRequestURI(HttpServletRequest request) {
		StringBuilder sb = new StringBuilder();
		String requestURI = request.getRequestURI();
		String somURI = requestURI.substring(SOM_ROOT_URL.length(), requestURI.length());
		String zone = getZone(request.getParameter(SHOP_CODE));
		return sb.append(SOM_ROOT_URL).append(zone).append(somURI).toString();

	}

	private String getZone(String shopCode) {
		if ("winnx".equals(shopCode)) {
			return ZONE_BAOZUN;
		}
		return ZONE_TMALL;
	}

}
