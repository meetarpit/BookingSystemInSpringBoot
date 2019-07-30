package com.dynamisch.booking;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
@Configuration
@EnableAutoConfiguration
@ComponentScan({"com.dynamisch.booking.model","com.dynamisch.booking.repository","com.dynamisch.booking.repository.impl","com.dynamisch.booking.service.impl","com.dynamisch.booking.controller"})
public class BookingSystemInAngularApplication {

	public static void main(String[] args) {
		SpringApplication.run(BookingSystemInAngularApplication.class, args);
	}

}

