package com.leo.microservice.som.schedule2;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
@Component
@EnableScheduling
public class SchedulingPrint2 {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Scheduled(fixedDelay = 5000L)
	public void writeLog() {
		logger.debug("This is a debug message");
		logger.info("This is an info message");
		logger.warn("This is a warn message");
		logger.error("This is an error message");
	}
}
