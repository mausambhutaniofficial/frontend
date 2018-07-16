package com.niit.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CartDAO;
import com.niit.model.CartItem;

@Controller
public class OrderController {

	@Autowired
	CartDAO cartDAO;
	@RequestMapping("/checkout")
	public String checkOutProcess(Model m,HttpServletRequest request){
		
		String username=(String)request.getUserPrincipal().getName();
		List<CartItem> cartItems=cartDAO.showCartItems(username);
		
		m.addAttribute("cartItems",cartItems);
		m.addAttribute("totalPurchaseAmount",this.calcTotalPurchaseAmount(cartItems));
		return "MyOrder";
	}
	
	@RequestMapping("/payment")
	public String paymentProcess(Model m,HttpSession session){
		
		String username=(String)session.getAttribute("username");
		List<CartItem> cartItems=cartDAO.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		m.addAttribute("totalPurchasedAmount", this.calcTotalPurchaseAmount(cartItems));
		return "Payment";
		
	}
	
	public int calcTotalPurchaseAmount(List<CartItem> cartItems) {
		int totalPurchaseAmount=0;
		int count=0;
		while(count<cartItems.size()) {
			CartItem cartItem=cartItems.get(count);
			totalPurchaseAmount=totalPurchaseAmount+(cartItem.getQuantity()*cartItem.getPrice());
			count++;
		}
		return totalPurchaseAmount;
	
	
	}
}
