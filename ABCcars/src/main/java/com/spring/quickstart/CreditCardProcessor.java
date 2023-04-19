package com.spring.quickstart;

public class CreditCardProcessor implements PaymentProcessor{

	public boolean process() throws InterruptedException {
		System.out.println("Processing your payment by ..");
		Thread.sleep(3000);
		return true;
	}
	

}
