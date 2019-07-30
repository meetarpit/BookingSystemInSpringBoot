package com.dynamisch.booking.repository.impl;

import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dynamisch.booking.model.Admin;
import com.dynamisch.booking.model.Customer;
import com.dynamisch.booking.repository.LoginDao;

@Repository
@Transactional
public class LoginDaoImpl implements LoginDao{
	
	@Autowired
	EntityManagerFactory entityManagerFactory;

	@Override
	public boolean validate(Customer customer) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unused")
		Session session=entityManagerFactory.unwrap(SessionFactory.class).openSession();
		@SuppressWarnings("deprecation")
		Criteria ct=session.createCriteria(Customer.class);
		ct.add(Restrictions.eq("email", customer.getEmail()));
		ct.add(Restrictions.eq("password", customer.getPassword()));
		@SuppressWarnings("unchecked")
		List<Customer>result=ct.list();
		if(result.size()>0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean adminvalidate(Admin admin) {
		@SuppressWarnings("unused")
		Session session=entityManagerFactory.unwrap(SessionFactory.class).openSession();
		@SuppressWarnings("deprecation")
		Criteria ct=session.createCriteria(Admin.class);
		ct.add(Restrictions.eq("adminEmail", admin.getAdminEmail()));
		ct.add(Restrictions.eq("password", admin.getPassword()));
		@SuppressWarnings("unchecked")
		List<Admin>result=ct.list();
		if(result.size()>0) {
			return true;
		}
		return false;
	}

	
}
