package com.niit.controllers;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.UserDetailDAO;
import com.niit.model.UserDetail;

@Controller
public class UserController {

	
	@Autowired
	UserDetailDAO userDetailDAO;
	
	@RequestMapping(value="/Register",method=RequestMethod.POST)
	public String saveuser(@ModelAttribute("userDetail")UserDetail userDetail, Model m ){
		userDetail.setEnabled("True");
		userDetail.setRole("User");
		userDetailDAO.registerUser(userDetail);
		
		/*UserDetail userDetail1=new UserDetail();
		m.addAttribute(userDetail1);*/
		return "Login1";
	}
	
}
	/*@RequestMapping(value="/perform_login")
	public String loginSuccess(Model m,HttpSession session)
	{
		String page="";
		boolean loggedIn=false;
		
		SecurityContext securityContext=SecurityContextHolder.getContext();
		Authentication authentication=securityContext.getAuthentication();
		
		String userName=authentication.getName();
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role:roles){
			session.setAttribute("role",role.getAuthority());
			
			if(role.getAuthority().equals("ROLE_USER")){
				loggedIn=true;
				page="ProductDisplay";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", userName);
			}
			
			
			else if(role.getAuthority().equals("ROLE_ADMIN")){
				loggedIn=true;
				page="Admin";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", userName);
			}
			else{
				loggedIn=true;
				page="index";
				session.setAttribute("loggedIn", loggedIn);
			}
			
		}
		return page;
	}
}*/