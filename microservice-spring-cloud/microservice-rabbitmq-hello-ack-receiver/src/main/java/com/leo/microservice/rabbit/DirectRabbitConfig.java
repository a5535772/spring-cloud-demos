package com.leo.microservice.rabbit;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DirectRabbitConfig {

	@Bean
	public Queue directedMessage() {
		return new Queue("direct");
	}

	/**
	 * Directed Exchange
	 * 
	 * 路由键exchange，该交换机收到消息后会把消息发送到指定routing-key的queue中。那消息交换机是怎么知道的呢？其实，producer
	 * deliver消息的时候会把routing-key add到 message
	 * header中。routing-key只是一个messgae的attribute。
	 * 
	 * A direct exchange delivers messages to queues based on a message routing key.
	 * The routing key is a message attribute added into the message header by the
	 * producer. The routing key can be seen as an "address" that the exchange use
	 * to decide how to route the message. A message goes to the queue(s) whose
	 * binding key exactly matches the routing key of the message.
	 * 
	 * Default Exchange 这种是特殊的Direct
	 * Exchange，是rabbitmq内部默认的一个交换机。该交换机的name是空字符串，所有queue都默认binding
	 * 到该交换机上。所有binding到该交换机上的queue，routing-key都和queue的name一样。
	 * 
	 * 作者：Mooner_guo 链接：https://www.jianshu.com/p/a5f7fce67803 來源：简书
	 * 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
	 * 
	 * @return
	 */
	@Bean
	DirectExchange directExchange() {
		return new DirectExchange("directExchange");
	}

	@Bean
	Binding bindingHeadersExchange(Queue directedMessage, DirectExchange directExchange) {
		return BindingBuilder.bind(directedMessage).to(directExchange).with("directRoutingkey");
	}

}
