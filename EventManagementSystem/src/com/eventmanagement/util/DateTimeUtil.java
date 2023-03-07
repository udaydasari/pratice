package com.eventmanagement.util;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class DateTimeUtil {

	public static LocalDateTime DateConvert(String date) {
		// TODO Auto-generated method stub
		//LocalDateTime theDate = LocalDateTime.parse(date);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		
		LocalDateTime theDate = LocalDateTime.parse(date, formatter);
		
		return theDate;
	}
	
	public static String StringConvert(LocalDateTime date) {
		// TODO Auto-generated method stub
		//LocalDateTime theDate = LocalDateTime.parse(date);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm a");
		
		String stringDate = date.format(formatter);
		
		return stringDate;
	}
}
