package com.leo.microservice.rabbit.direct;

import java.io.IOException;

import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.support.AmqpHeaders;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.stereotype.Component;

import com.rabbitmq.client.Channel;

@Component
@RabbitListener(queues = "direct")
public class DirectReceiver {

//	channel.basicAck(message.getMessageProperties().getDeliveryTag(), false); // 消息的标识，false只确认当前一个消息收到，true确认所有consumer获得的消息
//	channel.basicNack(message.getMessageProperties().getDeliveryTag(), false, true); // ack返回false，并重新回到队列，api里面解释得很清楚
//	channel.basicReject(message.getMessageProperties().getDeliveryTag(), true); // 拒绝消息
	
	
	@RabbitHandler
	public void process(String hello, @Header(AmqpHeaders.DELIVERY_TAG) long deliveryTag, Channel channel) {
		System.out.println("Receiver  : " + hello);
		
		try {
			//消息的标识，false只确认当前一个消息收到，true确认所有consumer获得的消息
//			channel.basicAck(deliveryTag, false);
			channel.basicNack(deliveryTag, false,true);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
