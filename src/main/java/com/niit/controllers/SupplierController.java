package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.SupplierDAO;

import com.niit.model.Supplier;


@Controller
public class SupplierController {

	boolean flag=false;
	@Autowired
	SupplierDAO supplierDAO;
	@RequestMapping(value="/supplier")
	public String showSupplierPage(Model m){
	
		flag=false;
		List<Supplier> listsupp=supplierDAO.listsupplier();
		
		m.addAttribute("supplierlist", listsupp);
		m.addAttribute("flag",flag);
		return "Supplier";
	}
	
	@RequestMapping(value="/InsertSupplier",method=RequestMethod.POST)
	public String insertSupplier(Model m ,@RequestParam("supname")String suppName,@RequestParam("supaddr")String suppAddr){
		flag=false;
		System.out.println("we are in insert supplier methd");
		Supplier supplier=new Supplier();
		supplier.setSupName(suppName);
		supplier.setSupAddr(suppAddr);
		
		supplierDAO.addSupplier(supplier);
		
		List<Supplier> listsupp=supplierDAO.listsupplier();
		
		m.addAttribute("supplierlist", listsupp);
		m.addAttribute("flag",flag);
		return "Supplier";
	}
	
	@RequestMapping(value="/deleteSupplier/{supplierID}")
	public String deleteSupplier(@PathVariable("supplierID") int suppId,Model m){
		flag=false;
		Supplier supplier=supplierDAO.getSupplier(suppId);
		supplierDAO.deleteSupplier(supplier);
		List<Supplier> listsupp=supplierDAO.listsupplier();
		m.addAttribute("supplierlist", listsupp);
		m.addAttribute("flag", flag);
		return "Supplier";
	}
	
	@RequestMapping(value="/editSupplier/{supplierID}")
	public String editSupplier(@PathVariable("supplierID") int suppId,Model m){
		
		flag=true;
		Supplier supplier=supplierDAO.getSupplier(suppId);
		m.addAttribute("supplierData",supplier);
		m.addAttribute("flag",flag);
		return "Supplier";
	}
	
	@RequestMapping(value="/updateSupplier", method=RequestMethod.POST)
	public String updateSupplier(@RequestParam("supId")int suppId,@RequestParam("supname")String suppName,@RequestParam("supaddr")String suppAddr, Model m){
		flag=false;
		Supplier supplier=supplierDAO.getSupplier(suppId);
		supplier.setSupName(suppName);
		supplier.setSupAddr(suppAddr);
		supplierDAO.updateSupplier(supplier);
		List<Supplier> listsupp=supplierDAO.listsupplier();
		m.addAttribute("supplierlist", listsupp);
		m.addAttribute("flag", flag);
		return "Supplier";

	}
	
}
 