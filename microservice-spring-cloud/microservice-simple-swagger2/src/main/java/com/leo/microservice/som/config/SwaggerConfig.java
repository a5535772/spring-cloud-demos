package com.leo.microservice.som.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {
//	@Bean
//	public Docket createRestApi() {
//		return new Docket(DocumentationType.SWAGGER_2).apiInfo(apiInfo()).select()
//				.apis(RequestHandlerSelectors.basePackage("com.hexun.bdc.auth.controller")).paths(PathSelectors.any())
//				.build();
//	}
//
//	private ApiInfo apiInfo() {
//		return new ApiInfoBuilder().title("CashBack's RESTful APIs").description("更多请关注：http://localhsot/")
//				.termsOfServiceUrl("http://bdcresttest.hexun.com/cashback2server").version("1.0").build();
//	}
	
	//swagger2的配置文件，这里可以配置swagger2的一些基本的内容，比如扫描的包等等
    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                //为当前包路径
                .apis(RequestHandlerSelectors.basePackage("com.leo.microservice.som.controller"))
//                .paths(PathSelectors.regex("(/swagger-demo/.*|/customer/.*|/prifun/.*|/user/.*|/opt-unit-type/.*|/opt-unit/.*|/role/.*|/privilege/.*|/userRole/.*|/brand/.*|/carrier/.*|/supplier/.*|/stockNode/.*|/productCategoryTag/.*|/productTemplate/.*|/cargoOwner/.*|/managementSubject/.*|/productBatchLog/.*|/sku/.*|/salesOrder/.*|/baseArea/.*|/returnOrder/.*|/invtransfer/.*|)"))
                .paths(PathSelectors.any())
                .build();
    }
    //构建 api文档的详细信息函数,注意这里的注解引用的是哪个
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                //页面标题
                .title("Spring Boot 测试使用 Swagger2 构建RESTful API")
                //版本号
                .version("1.0")
                //描述
                .description("API 描述")
                .build();
    }
 
}
