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

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;


@Controller
public class CategoryController {

	boolean flag=false;
	@Autowired
	CategoryDAO categoryDAO;
	@RequestMapping(value="/category")
	public String showCategoryPage(Model m){
	
		flag=false;
		List<Category> listcategories=categoryDAO.listcateg();
		
		m.addAttribute("categorylist", listcategories);
		m.addAttribute("flag",flag);
		return "Category";
	}
	
	
	@RequestMapping(value="/InsertCatgory",method=RequestMethod.POST)
	public String insertCategory(Model m ,@RequestParam("catname")String categoryName,@RequestParam("cimage")MultipartFile imageFile,@RequestParam("catDesc")String categoryDesc){
		flag=false;
		System.out.println("we are in insert category methd");
		Category category=new Category();
		category.setCategoryName(categoryName);
		category.setCategoryDesc(categoryDesc);
		
		categoryDAO.addCategory(category);
		
		List<Category> listcategories=categoryDAO.listcateg();
		//Multipart file uploading
				String path="C:\\Users\\Mausam\\workspace\\frontend\\src\\main\\webapp\\resources\\images\\";
				path=path+String.valueOf(category.getCategoryId())+".jpg";
				
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
				
		m.addAttribute("categorylist", listcategories);
		m.addAttribute("flag",flag);
		return "Category";
	}
	
	@RequestMapping(value="/deleteCategory/{categoryID}")
	public String deleteCategory(@PathVariable("categoryID") int categoryId,Model m){
		flag=false;
		Category category=categoryDAO.getCategory(categoryId);
		categoryDAO.deleteCategory(category);
		List<Category> listcategories=categoryDAO.listcateg();
		m.addAttribute("categorylist", listcategories);
		m.addAttribute("flag", flag);
		return "Category";
	}
	
	@RequestMapping(value="/editCategory/{categoryID}")
	public String editCategory(@PathVariable("categoryID") int categoryId,Model m){
		
		flag=true;
		Category category=categoryDAO.getCategory(categoryId);
		
		
		m.addAttribute("categoryData",category);
		m.addAttribute("flag",flag);
		return "Category";
	}
	
	@RequestMapping(value="/updateCategory", method=RequestMethod.POST)
	public String updateCategory(@RequestParam("catId")int categoryId,@RequestParam("catname")String categoryName,@RequestParam("cimage")MultipartFile imageFile,@RequestParam("catDesc")String categoryDesc, Model m){
		flag=false;
		Category category=categoryDAO.getCategory(categoryId);
		category.setCategoryName(categoryName);
		category.setCategoryDesc(categoryDesc);
		categoryDAO.updateCategory(category);
		List<Category> listcategories=categoryDAO.listcateg();
		
		//Multipart file uploading
				String path="C:\\Users\\Dell\\Downloads\\frontend-master\\src\\main\\webapp\\resources\\images1\\category\\";
				path=path+String.valueOf(category.getCategoryId())+".jpg";
				
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
				
		m.addAttribute("categorylist", listcategories);
		m.addAttribute("flag", flag);
		return "Category";

	}
	
}