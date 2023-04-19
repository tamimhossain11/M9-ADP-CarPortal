package com.spring.quickstart;

public class BillingService {
private PaymentProcessor paymentProcessor;
public boolean completePayment() throws InterruptedException {
	return paymentProcessor.process();
	
}
	public void setPaymentProcessor(PaymentProcessor paymentProcessor) {
		this.paymentProcessor=paymentProcessor;
	}
}
