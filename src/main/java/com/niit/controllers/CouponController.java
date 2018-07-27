package com.niit.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CouponDAO;
import com.niit.model.Category;
import com.niit.model.Coupon;

@Controller
public class CouponController {

	boolean flag=false;
	@Autowired
	CouponDAO couponDAO;
	@RequestMapping(value="/coupon")
	public String showCouponPage(Model m){
	
		flag=false;
		List<Coupon> listcoupons=couponDAO.listcoupon();
		
		m.addAttribute("couponlist", listcoupons);
		m.addAttribute("flag",flag);
		return "ManageCoupons";
	}
	
	@RequestMapping(value="/InsertCoupon",method=RequestMethod.POST)
	public String insertCategory(Model m ,@RequestParam("couponName")String couponName,@RequestParam("couponDesc")String couponDesc,@RequestParam("couponValue")int couponValue){
		flag=false;
		System.out.println("we are in insert coupon methd");
		Coupon coupon=new Coupon();
		coupon.setCouponName(couponName);
		coupon.setCouponValue(couponValue);
		coupon.setCouponDesc(couponDesc);
		
		couponDAO.addCoupon(coupon);
		
		List<Coupon> listcoupons=couponDAO.listcoupon();
		
				
		m.addAttribute("couponlist", listcoupons);
		m.addAttribute("flag",flag);
		return "ManageCoupons";
	}
	@RequestMapping(value="/deleteCoupon/{couponName}")
	public String deleteCoupon(@PathVariable("couponName") String couponName,Model m){
		flag=false;
		Coupon coupon=couponDAO.getCoupon(couponName);
		couponDAO.deleteCoupon(coupon);
		List<Coupon> listcoupons=couponDAO.listcoupon();
		m.addAttribute("couponlist", listcoupons);
		m.addAttribute("flag", flag);
		return "ManageCoupons";
	}
	
	@RequestMapping(value="/editCoupon/{couponName}")
	public String editCoupon(@PathVariable("couponName") String couponName,Model m){
		
		flag=true;
		Coupon coupon=couponDAO.getCoupon(couponName);		
		
		m.addAttribute("couponData",coupon);
		m.addAttribute("flag",flag);
		return "ManageCoupons";
	}
	
	@RequestMapping(value="/updateCoupon", method=RequestMethod.POST)
	public String updateCoupon(@RequestParam("couponName")String couponName,@RequestParam("couponDesc")String couponDesc,@RequestParam("couponValue")int couponValue, Model m){
		flag=false;
		Coupon coupon=couponDAO.getCoupon(couponName);		
		coupon.setCouponName(couponName);
		coupon.setCouponValue(couponValue);
		coupon.setCouponDesc(couponDesc);
		couponDAO.updateCoupon(coupon);
		List<Coupon> listcoupons=couponDAO.listcoupon();		
		m.addAttribute("couponlist", listcoupons);
		m.addAttribute("flag", flag);
		return "ManageCoupons";
	}
	

	
	
	
}