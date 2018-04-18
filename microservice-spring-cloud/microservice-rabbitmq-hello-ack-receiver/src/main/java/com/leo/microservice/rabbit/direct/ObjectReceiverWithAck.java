//package com.leo.microservice.rabbit.direct;
//
//import java.io.IOException;
//
//import org.springframework.amqp.rabbit.annotation.RabbitHandler;
//import org.springframework.amqp.rabbit.annotation.RabbitListener;
//import org.springframework.amqp.support.AmqpHeaders;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.messaging.handler.annotation.Header;
//import org.springframework.stereotype.Component;
//
//import com.leo.microservice.model.User;
//import com.rabbitmq.client.Channel;
//
//@Component
//@RabbitListener(queues = "object")
//public class ObjectReceiverWithAck {
//	
//	@Autowired
//	Channel channel;
//	
//
//	@RabbitHandler
//	public void process(User user, @Header(AmqpHeaders.DELIVERY_TAG) long deliveryTag, Channel channel) {
//
//		try {
//			// do my job
//			doMyJob(user);
//			//消息的标识，false只确认当前一个消息收到，true确认所有consumer获得的消息
//			channel.basicAck(deliveryTag, false);
//		} catch (Exception e) {
////			e.printStackTrace();
//			try {
//				//requeue 值为 true 表示该消息重新放回队列头，值为 false 表示放弃这条消息。
//				channel.basicReject(deliveryTag, true);
//				
////				channel.basicNack(deliveryTag, false, true);
//			} catch (IOException e1) {
//				e1.printStackTrace();
//			}
//		}
//	}
//
//	private void doMyJob(User user) throws Exception {
//		System.out.println("Receiver object : " + user);
//		throw new RuntimeException();
//	}
//}
