package com.october.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.october.web.model.Employee;
import com.october.web.repository.EmployeeInfo;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeInfo emprepo;
	
	@GetMapping("/")
	public String home()
	{
		return "register.jsp";
	}
	
	@PostMapping("/register")
	public String register(@ModelAttribute Employee ee)
	{
		emprepo.save(ee);
		return "login.jsp";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password)
	{
		Employee ob = emprepo.findByEmail(email);
		if(ob!=null && ob.getEmail().equals(email) && ob.getPassword().equals(password))
		{
			return "redirect:/add";
		}
		else 
		{
			return "login.jsp";
		}
	}
}
