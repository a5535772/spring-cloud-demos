package com.leo.microservice.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {
	private TimeUtil() {
		
	}
	static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	public static String getCurrent() {
		return ((DateFormat) sdf.clone()).format(new Date());
	}

}
