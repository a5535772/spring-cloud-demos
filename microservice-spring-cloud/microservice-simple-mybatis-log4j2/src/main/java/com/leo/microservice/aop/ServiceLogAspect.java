//package com.leo.microservice.aop;
//
//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.ProceedingJoinPoint;
//import org.aspectj.lang.Signature;
//import org.aspectj.lang.annotation.After;
//import org.aspectj.lang.annotation.AfterReturning;
//import org.aspectj.lang.annotation.AfterThrowing;
//import org.aspectj.lang.annotation.Around;
//import org.aspectj.lang.annotation.Aspect;
//import org.aspectj.lang.annotation.Before;
//import org.aspectj.lang.annotation.Pointcut;
//import org.springframework.stereotype.Component;
//
///**
// * Created by wuwf on 17/4/27. 日志切面
// */
//@Aspect
//@Component
//public class ServiceLogAspect {
//	@Pointcut("execution(public * com.leo.microservice.service.*.*.*.*(..))")
//	public void serviceLog() {
//	}
//
//	@Before("serviceLog()")
//	public void deBefore(JoinPoint joinPoint) throws Throwable {
//		 System.out.println("我是前置通知!!!");  
//		    //获取目标方法的参数信息  
//		    Object[] obj = joinPoint.getArgs();  
//		    //AOP代理类的信息  
//		    joinPoint.getThis();  
//		    //代理的目标对象  
//		    joinPoint.getTarget();  
//		    //用的最多 通知的签名  
//		    Signature signature = joinPoint.getSignature();
//		    //代理的是哪一个方法  
//		    System.out.println(signature.getName());  
//		    //AOP代理类的名字  
//		    System.out.println(signature.getDeclaringTypeName());  
//		    //AOP代理类的类（class）信息  
//		    signature.getDeclaringType();  
//		
//	}
//
//	@AfterReturning(returning = "ret", pointcut = "serviceLog()")
//	public void doAfterReturning(Object ret) throws Throwable {
//		// 处理完请求，返回内容
//		System.out.println("方法的返回值 : " + ret);
//	}
//
//	// 后置异常通知
//	@AfterThrowing("serviceLog()")
//	public void throwss(JoinPoint jp) {
//		System.out.println("方法异常时执行.....");
//	}
//
//	// 后置最终通知,final增强，不管是抛出异常或者正常退出都会执行
//	@After("serviceLog()")
//	public void after(JoinPoint jp) {
//		System.out.println("方法最后执行.....");
//	}
//
//	// 环绕通知,环绕增强，相当于MethodInterceptor
//	@Around("serviceLog()")
//	public Object arround(ProceedingJoinPoint pjp) {
//		System.out.println("方法环绕start.....");
//		try {
//			Object o = pjp.proceed();
//			System.out.println("方法环绕proceed，结果是 :" + o);
//			return o;
//		} catch (Throwable e) {
//			e.printStackTrace();
//			return null;
//		}
//	}
//}