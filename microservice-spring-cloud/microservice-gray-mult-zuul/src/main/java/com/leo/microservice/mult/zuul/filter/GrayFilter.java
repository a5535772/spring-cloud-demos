package com.leo.microservice.mult.zuul.filter;

import static org.springframework.cloud.netflix.zuul.filters.support.FilterConstants.PRE_TYPE;

import javax.servlet.http.HttpServletRequest;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;

/**
 * 
 * @author ZSH9833
 *
 */

/**
 * Zuul中定义了四种标准的过滤器类型，这些过滤器类型对应于请求的典型生命周期。

    PRE过滤器: 在请求被路由之前调用, 可用来实现身份验证、在集群中选择请求的微服务、记录调试信息等;
    ROUTING过滤器: 在路由请求时候被调用;
    POST过滤器: 在路由到微服务以后执行, 可用来为响应添加标准的HTTP Header、收集统计信息和指标、将响应从微服务发送给客户端等;
    ERROR过滤器: 在处理请求过程时发生错误时被调用。

作者：CD826
链接：https://www.jianshu.com/p/f786a11a2def
來源：简书
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 * @author ZSH9833
 *
 */
//public class GrayFilter extends ZuulFilter{
//
//	@Override
//	public Object run() {
//
//		RequestContext ctx = RequestContext.getCurrentContext();
//		HttpServletRequest request = ctx.getRequest();
//		if (request.getParameter("foo") != null) {
//			// put the serviceId in `RequestContext`
//			RibbonFilterContextHolder.getCurrentContext().add("lancher", "1");
//		} else {
//			RibbonFilterContextHolder.getCurrentContext().add("lancher", "2");
//		}
//		return null;
//	}
//
//	@Override
//	public boolean shouldFilter() {
//		return true;
//	}
//
//	@Override
//	public int filterOrder() {
//		return 0;
//	}
//
//	@Override
//	public String filterType() {
//		return PRE_TYPE;
//	}
//
//}
