package com.spring.quickstart;

public class GooglePayProcessor implements PaymentProcessor {

	public boolean process() throws InterruptedException {
		System.out.println("Processing your payment with.. ");
	
		Thread.sleep(3000);
		return true;
	}
	

}
