package com.spring.quickstart;

import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main(String[] args) throws InterruptedException {
		ApplicationContext context=new ClassPathXmlApplicationContext("config.xml");
		Scanner input=new Scanner(System.in);
		System.out.println("Choise your payment method");
		System.out.println("1.Google Pay");
		System.out.println("2.Credit Card");
		int method=input.nextInt();
		
		
		String paymentMethod="";
		boolean paymentSucced=false;
		BillingService service=null;
		
		if(method==1) {
			service=(BillingService) context.getBean("gpay-service");
			paymentMethod="Google Pay";
			paymentSucced=service.completePayment();
		
		}else if(method==2) {
			service=(BillingService) context.getBean("credit-service");
			paymentMethod="Credit Card payment";
			paymentSucced=service.completePayment();
		}
		
		if(paymentSucced) {
			System.out.println("Successfully payed with "+paymentMethod);
		}
	}
}
