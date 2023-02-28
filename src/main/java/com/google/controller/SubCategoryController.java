package com.google.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.bean.SubCategoryBean;
import com.google.dao.CategoryDao;

@Controller
public class SubCategoryController {

	@Autowired
	CategoryDao categoryDao;

	@GetMapping("/newsubcategory")
	public String newSubCategory(Model model) {
		model.addAttribute("list", categoryDao.getAllCategory());

		return "NewSubCategory";
	}
	
	
	@PostMapping("/savesubcategory")
	public String saveSubCategory(SubCategoryBean subCategoryBean) {
		System.out.println(subCategoryBean.getSubCategoryName());
		System.out.println(subCategoryBean.getCategoryId());
		
		//dao 
		//insert 
		
		return "NewCategory";
	}

}
