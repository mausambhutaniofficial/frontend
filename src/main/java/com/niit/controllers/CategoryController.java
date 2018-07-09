package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String insertCategory(Model m ,@RequestParam("catname")String categoryName,@RequestParam("catDesc")String categoryDesc){
		flag=false;
		System.out.println("we are in insert category methd");
		Category category=new Category();
		category.setCategoryName(categoryName);
		category.setCategoryDesc(categoryDesc);
		
		categoryDAO.addCategory(category);
		
		List<Category> listcategories=categoryDAO.listcateg();
		
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
	public String updateCategory(@RequestParam("catId")int categoryId,@RequestParam("catname")String categoryName,@RequestParam("catDesc")String categoryDesc, Model m){
		flag=false;
		Category category=categoryDAO.getCategory(categoryId);
		category.setCategoryName(categoryName);
		category.setCategoryDesc(categoryDesc);
		categoryDAO.updateCategory(category);
		List<Category> listcategories=categoryDAO.listcateg();
		m.addAttribute("categorylist", listcategories);
		m.addAttribute("flag", flag);
		return "Category";

	}
	
}
 