package com.spring.quickstart;

public class PaymentProcessorFactory {
	
		private final GooglePayProcessor gpay = new GooglePayProcessor();
		 private final CreditCardProcessor cpay = new CreditCardProcessor ();

		 public PaymentProcessor getPaymentProcessor(String method) {
		 if (method.equalsIgnoreCase("google_pay")) {
		 return gpay;
		 } else if (method.equalsIgnoreCase("credit_card")) {
		 return cpay ;
		 }
		 return null;
		 }
}
