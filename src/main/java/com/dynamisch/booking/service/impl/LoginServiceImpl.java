package com.dynamisch.booking.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dynamisch.booking.model.Admin;
import com.dynamisch.booking.model.Customer;
import com.dynamisch.booking.repository.LoginDao;
import com.dynamisch.booking.service.LoginService;

@Service
@Transactional
public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginDao loginDao;
	
	@Override
	public boolean validate(Customer customer) {
		// TODO Auto-generated method stub
		return loginDao.validate(customer);
	}

	@Override
	public boolean adminvalidate(Admin admin) {
		// TODO Auto-generated method stub
		return loginDao.adminvalidate(admin);
	}

}
