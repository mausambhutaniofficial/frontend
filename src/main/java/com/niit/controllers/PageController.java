package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.UserDetail;

@Controller
public class PageController {

	@RequestMapping(value="/")
	public String showHomePage(){
		
		return "index";
	}
	
	@RequestMapping(value="/home")
	public String showHomePage1(){
		
		return "index";
	}
	
	@RequestMapping(value="/login1")
	public String showLoginPage(){
		
		return "Login1";
	}
	
	@RequestMapping(value="/register")
	public String showRegisterPage(Model m){
		
		UserDetail userDetail1=new UserDetail();
		m.addAttribute(userDetail1);
		return "Register";
	}
	
	@RequestMapping(value="/contactus")
	public String showContactUs(){
		
		return "ContactUs";
	}
	
	@RequestMapping(value="/aboutus")
	public String showAboutUs(){
		
		return "AboutUs";
	}

	@RequestMapping(value="/Admin")
	public String showAdminUs(){
		
		return "Admin";
	}
	

}
