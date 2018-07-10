package com.niit.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class ProductController {

	boolean flag=false;
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("/product")
	public String showProductPage(Model m){
		flag=false;
		Product product =new Product();
		m.addAttribute(product);
		m.addAttribute("categoryList", this.getCategories());
		m.addAttribute("supplierlist", this.getSuppliers());
		m.addAttribute("productList", productDAO.listprod());
		m.addAttribute("flag", flag);
		return "ManageProduct";
	}
	
	@RequestMapping("/displayProduct")
	public String displayAllProducts(Model m){
		m.addAttribute("productList", productDAO.listprod());
		return "ProductDisplay";
	}
	
	
	@RequestMapping(value="/GetProductByCategory/{categoryID}")
	public String getproductbycategory(@PathVariable("categoryID") int categoryId, Model m){
		List<Product> listproductbycategory=productDAO.listprodByCategory(categoryId);
		m.addAttribute("listproductbycategory", listproductbycategory);
		return "ProductCategory";
		
	}
	
	@RequestMapping(value="/ProductInsert", method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product")Product product,@RequestParam("pimage")MultipartFile imageFile, Model m ){
		flag=false;
		productDAO.addProduct(product);
		m.addAttribute("categoryList", this.getCategories());
		Product product1=new Product();
		m.addAttribute(product1);
		//Multipart file uploading
		String path="C:\\Users\\Mausam\\workspace\\frontend\\src\\main\\webapp\\resources\\images\\";
		path=path+String.valueOf(product.getProdId())+".jpg";
		
		File file=new File(path);      //create a blank file  where content can be written
		
		if(!imageFile.isEmpty()){
			try{
				byte[] buffer=imageFile.getBytes();
				FileOutputStream fos=new FileOutputStream(file);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(buffer);
				bs.close();
			}
			
			catch(Exception e){
				System.out.println("Exception arised:"+e);
			}
			
		}
		else{
			m.addAttribute("ErrorInfo", "There is system problem. No Image Insertion");
		}
		
		
		
		
		//Multipart file uploading ends
		
		m.addAttribute("categoryList", this.getCategories());
		m.addAttribute("productList",productDAO.listprod());
		m.addAttribute("flag", flag);
		System.out.println("Product Added");
		return "ManageProduct";
	}
	
	
	@RequestMapping(value="/deleteProduct/{prodId}")
	public String deleteProduct(@PathVariable("prodId") int prodId,Model m){
		flag=false;
		Product product=productDAO.getProduct(prodId);
		productDAO.deleteProduct(product);
		Product product1=new Product();
		m.addAttribute(product1);
		m.addAttribute("productList",productDAO.listprod());
		m.addAttribute("flag", flag);
		return "ManageProduct";
		
	}
	
	@RequestMapping(value="/editProduct/{prodId}")
	public String editProduct(@PathVariable("prodId")int prodId,Model m){
		flag=true;
		Product product=productDAO.getProduct(prodId);
		m.addAttribute(product);
		
		
		
		m.addAttribute("categoryList", this.getCategories());
		m.addAttribute("supplierlist", this.getSuppliers());
		//m.addAttribute("productList", productDAO.listprod());
		m.addAttribute("flag", flag);
		return "UpdateProduct";
		
	}
	@RequestMapping(value="/UpdateProduct",method=RequestMethod.POST)
	public String updateProduct(@ModelAttribute("product")Product product,@RequestParam("pimage")MultipartFile imageFile,Model m)
	{
		flag=false;
		productDAO.updateProduct(product);
		//Product product1=new Product();
		//m.addAttribute(product1);
		//m.addAttribute("categoryList",this.getCategories());
		
		//Multipart file uploading
				String path="C:\\Users\\Mausam\\workspace\\frontend\\src\\main\\webapp\\resources\\images\\";
				path=path+String.valueOf(product.getProdId())+".jpg";
				
				File file=new File(path);      //create a blank file  where content can be written
				
				if(!imageFile.isEmpty()){
					try{
						byte[] buffer=imageFile.getBytes();
						FileOutputStream fos=new FileOutputStream(file);
						BufferedOutputStream bs=new BufferedOutputStream(fos);
						bs.write(buffer);
						bs.close();
					}
					
					catch(Exception e){
						System.out.println("Exception arised:"+e);
					}
					
				}
				else{
					m.addAttribute("ErrorInfo", "There is system problem. No Image Insertion");
				}
				
				
				
				
				//Multipart file uploading ends
			
		
		m.addAttribute("productList",productDAO.listprod());
		m.addAttribute("flag", flag);
		return "ManageProduct";
	}
	
	public LinkedHashMap<Integer,String> getCategories(){
		flag=false;
		List<Category> listcategories=categoryDAO.listcateg();
		LinkedHashMap<Integer,String> categoryData=new LinkedHashMap<Integer,String>();
		for (Category category:listcategories){
			categoryData.put(category.getCategoryId(), category.getCategoryName());
		}
			return categoryData;
	}
	
public LinkedHashMap<Integer,String> getSuppliers(){
	flag=false;
		List<Supplier> listsuppliers=supplierDAO.listsupplier();
		LinkedHashMap<Integer,String> supplierData=new LinkedHashMap<Integer,String>();
		for (Supplier supplier:listsuppliers){
			supplierData.put(supplier.getSuppId(), supplier.getSupName());
		}
			return supplierData;
	}
	
}
