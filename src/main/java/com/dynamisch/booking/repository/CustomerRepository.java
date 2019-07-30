package com.dynamisch.booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dynamisch.booking.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer>{

}
