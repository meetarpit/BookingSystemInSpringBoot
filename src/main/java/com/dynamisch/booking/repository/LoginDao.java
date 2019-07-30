package com.dynamisch.booking.repository;

import com.dynamisch.booking.model.Admin;
import com.dynamisch.booking.model.Customer;

public interface LoginDao {
	
	public boolean validate(Customer customer);
	
	public boolean adminvalidate(Admin admin);

}
