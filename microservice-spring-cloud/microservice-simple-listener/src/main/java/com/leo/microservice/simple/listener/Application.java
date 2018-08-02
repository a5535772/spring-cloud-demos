package com.leo.microservice.simple.listener;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * @EventListener 这个东西如果和 @Transactional 一起使用需要注意 <br/>
 *                监听如果为同步，则无问题<br/>
 *                监听方法为异步，会跳出此@Transactional，此时会有数据一致性问题发生，如需要异步处理，且异步数据依赖于本@Transactional
 *                commit后的数据，会有错误<br/>
 *                <H1>解决思路</H1>
 *                1.自己写一个 EventAOP && EventAOP.Order > Transactional.Order<br/>
 *                2.业务中使用  ThreadLocalEventHelper.publish(event)<br/>
 *                3.EventAOP 截取 ThreadLocalEventHelper.get() 进行正式的publishEvent;
 * @author Leo
 *
 */
@SpringBootApplication
@EnableAsync
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
