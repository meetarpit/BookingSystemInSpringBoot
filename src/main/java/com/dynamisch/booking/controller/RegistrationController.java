package com.dynamisch.booking.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dynamisch.booking.model.Admin;
import com.dynamisch.booking.model.Customer;
import com.dynamisch.booking.repository.CustomerRepository;
import com.dynamisch.booking.service.LoginService;

@Controller
public class RegistrationController {

	@Autowired
	CustomerRepository customerRepository;
	
	@Autowired
	LoginService loginService;
	
	@GetMapping("/register")
	public String register() {
		return "register.jsp";		
	}
	@PostMapping("/save")
	@ResponseBody
	public Customer create(@RequestBody Customer customer) {
		Customer response=customerRepository.save(customer);
		return response;		
	}
	@GetMapping("/")
	public String login() {
		return "login.jsp";	
	}
	@PostMapping("/userlogin")
	@ResponseBody
	public boolean Login(@RequestBody Customer customer,HttpServletRequest request) {
		boolean result=loginService.validate(customer);
		if(result==true) {
			HttpSession session=request.getSession();
			session.setAttribute("email",customer.getEmail());
		}
		return result;
	}
	
	@GetMapping("/admin")
	public String admin() {
		return "adminlogin.jsp";	
	}
	
	@PostMapping("/adminlogin")
	@ResponseBody
	public boolean adminLogin(@RequestBody Admin admin) {
		boolean result=loginService.adminvalidate(admin);
		return result;
	}
}
