package com.niit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDetailDAO;
import com.niit.model.UserDetail;

@Controller
public class PageController {

	@Autowired 
	UserDetailDAO userDetailDAO;
	
	@RequestMapping(value="/")
	public String showHomePage(HttpServletRequest request,HttpSession session){
		/*String username=(String)request.getUserPrincipal().getName();
		UserDetail userDetail=userDetailDAO.getUserDetail(username);
		String role=userDetail.getRole();
		System.out.println(role+username+"-----------------");
		session.setAttribute("role", role);
		session.setAttribute("username", username);
		*/
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
	@RequestMapping(value="/admin")
	public String showAdmin(){
		
		return "Admin";
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllException(Exception ex) {

		ModelAndView model = new ModelAndView("ErrorPage");
		
		return model;

	}

	

}