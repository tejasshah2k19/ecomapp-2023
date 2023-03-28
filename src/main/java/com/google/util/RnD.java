package com.google.util;

import java.time.LocalDate;

public class RnD {

	public static void main(String[] args) {

		LocalDate today = LocalDate.now();
		System.out.println(today);

		LocalDate yesterday = today.minusDays(1);
		System.out.println(yesterday);

		
		System.out.println(today.getMonth());
		System.out.println(today.getMonthValue());
		
		//month => month year 
		//dec 2023 
		
	
	}
	
}
