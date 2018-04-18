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

	@RabbitHandler
	public void process(String hello, @Header(AmqpHeaders.DELIVERY_TAG) long deliveryTag, Channel channel) {
		System.out.println("Receiver  : " + hello);
		try {
			this.doMyJob(hello);
			Thread.sleep(1000l);
			System.out.println("处理数据succ，..."+hello);
			channel.basicAck(deliveryTag, false);
		} catch (Exception e) {
			e.getStackTrace();
			try {
				System.out.println("处理数据fail，正在退还数据..."+hello);
				channel.basicNack(deliveryTag, false, true);
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
	}

	private void doMyJob(String msg) throws Exception {
		System.out.println("正在处理数据...."+msg);
//		throw new RuntimeException();
	}

}
