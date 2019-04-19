package com.leo.microservice.rabbit.hello;

import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

/**
 * 默认情况下，Rabbitmq消费者为单线程串行消费，这也是队列的特性，当然在有些业务中需要并发消费，本文主要示例spring中和boot中指定消费者数量来并发消费。spring
 * amqp文档也有相关描述
 * 
 * https://blog.csdn.net/i_vic/article/details/73332542
 * 
 * 通过设置Messagelistener 的containerconcurrency属性来设置消费者数量
 * 
 * XML示例：
 * <rabbit:listener-container connection-factory="connectionFactory" acknowledge
 * ="manual" concurrency= "5">
 * <rabbit:listener ref="myMessageListener" queue-names="hello"/>
 * </rabbit:listener-container> --------------------- 作者：采菇凉的小蘑菇丶 来源：CSDN
 * 原文：https://blog.csdn.net/i_vic/article/details/73332542
 * 版权声明：本文为博主原创文章，转载请附上博文链接！
 * 
 * 
 * Boot中消费者配置可以参考前面文章，但是在@RabbitListener中，concurrency并不是配置在注解中，而且通过配置containerFactory来设置： @Bean("pointTaskContainerFactory")
 * public SimpleRabbitListenerContainerFactory
 * pointTaskContainerFactory(SimpleRabbitListenerContainerFactoryConfigurer
 * configurer, ConnectionFactory connectionFactory) {
 * SimpleRabbitListenerContainerFactory factory = new
 * SimpleRabbitListenerContainerFactory();
 * factory.setPrefetchCount(PointTaskConstant.DEFAULT_PREFETCH_COUNT);
 * factory.setConcurrentConsumers(PointTaskConstant.DEFAULT_CONCURRENT);
 * configurer.configure(factory, connectionFactory); return factory; }
 * --------------------- 作者：采菇凉的小蘑菇丶 来源：CSDN
 * 原文：https://blog.csdn.net/i_vic/article/details/73332542
 * 版权声明：本文为博主原创文章，转载请附上博文链接！
 * 
 * @author LeoZhangli
 *
 */
@Component
@RabbitListener(queues = "hello")
public class HelloReceiver {

	@RabbitHandler
	public void process(String hello) {
		System.out.println("Receiver  : " + hello);
	}

}
