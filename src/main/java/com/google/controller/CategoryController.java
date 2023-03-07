package com.google.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.bean.CategoryBean;
import com.google.dao.CategoryDao;

@Controller
public class CategoryController {

	@Autowired
	CategoryDao categoryDao;

	@GetMapping("/newcategory") // url--browser
	public String newCategory(HttpServletRequest request) { // method

		// cookie name
		// cookie userid
		int userId=-1;
		// read all cookies from request
		String firstName="";
		Cookie c[] = request.getCookies();//jSEssionId userId octo firstName 

		for (Cookie x : c) {// jsessionid userId firstname
			if (x.getName().equals("userId")) {
				userId = Integer.parseInt(x.getValue());
			}
			if (x.getName().equals("firstName")) {
				firstName = x.getValue();
			}
		}

		System.out.println("userId -> " + userId);
		System.out.println("firstName -> " + firstName);

		return "NewCategory";// jsp--open
	}

	@PostMapping("/savecategory")
	public String saveCategory(CategoryBean categoryBean) {
		System.out.println(categoryBean.getCategoryName());// categoryName;
		categoryDao.addCategory(categoryBean);
		return "redirect:/listcategories";
	}

	@GetMapping("/listcategories")
	public String listCategories(Model model) {

		// pull all category from db-table
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list", list);
		return "ListCategory";
	}

	@GetMapping("/deletecategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") Integer categoryId) {
		// 12 45
		categoryDao.deleteCategory(categoryId);
		return "redirect:/listcategories";//
	}

	@GetMapping("/viewcategory/{categoryId}")
	public String viewCategory(@PathVariable("categoryId") Integer categoryId, Model model) {
		CategoryBean categoryBean = categoryDao.getCategoryById(categoryId);
		model.addAttribute("categoryBean", categoryBean);
		return "ViewCategory";
	}

}
