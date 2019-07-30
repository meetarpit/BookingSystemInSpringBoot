package com.dynamisch.booking.service;

import com.dynamisch.booking.model.Admin;
import com.dynamisch.booking.model.Customer;

public interface LoginService {
	
	public boolean validate(Customer customer);
	
	public boolean adminvalidate(Admin admin);

}
