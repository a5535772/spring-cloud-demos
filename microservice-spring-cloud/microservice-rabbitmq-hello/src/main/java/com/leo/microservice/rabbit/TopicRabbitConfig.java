package com.leo.microservice.rabbit;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.core.TopicExchange;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class TopicRabbitConfig {

	final static String message = "topic.message";
	final static String messages = "topic.messages";

	@Bean
	public Queue queueMessage() {
		return new Queue(TopicRabbitConfig.message);
	}

	@Bean
	public Queue queueMessages() {
		return new Queue(TopicRabbitConfig.messages);
	}

	/**
	 * Topic Exchange
	 * 
	 * 通配符交换机，exchange会把消息发送到一个或者多个满足通配符规则的routing-key的queue。其中*表号匹配一个word，#匹配多个word和路径，路径之间通过.隔开。如满足a.*.c的routing-key有a.hello.c；满足#.hello的routing-key有a.b.c.helo。
	 * 
	 * 作者：Mooner_guo 链接：https://www.jianshu.com/p/a5f7fce67803 來源：简书
	 * 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
	 * 
	 * @return
	 */
	@Bean
	TopicExchange topicExchange() {
		return new TopicExchange("topicExchange");
	}

	/**
	 * spring注解注入很有意思
	 * 
	 * @param queueMessage
	 *            和上方 @Bean queueMessage 方法名相等
	 * @param topicExchange
	 *            和上方 @Bean topicExchange 方法名相等<br/>
	 *            如果这里修改了 topicExchange 的命名就会报错<br/>
	 *            Parameter 1 of method bindingExchangeMessage in
	 *            com.leo.microservice.rabbit.TopicRabbitConfig required a single
	 *            bean, but 2 were found:<br/>
	 *            这样的话，我们可以用注解啊！用@bean("topicExchange666")
	 *            用@Qualifier("topicExchange666")啊！
	 * @return
	 */
	@Bean
	Binding bindingExchangeMessage(Queue queueMessage, TopicExchange topicExchange) {
		return BindingBuilder.bind(queueMessage).to(topicExchange).with("topic.message");
	}

	/**
	 * spring注解注入很有意思
	 * 
	 * @param queueMessages
	 *            和上方 @Bean queueMessages 方法名相等，就是这么神奇
	 * @param topicExchange
	 * @return
	 */
	@Bean
	Binding bindingExchangeMessages(Queue queueMessages, TopicExchange topicExchange) {
		return BindingBuilder.bind(queueMessages).to(topicExchange).with("topic.#");
	}
}
