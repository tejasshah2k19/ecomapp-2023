package com.google.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.bean.SubCategoryBean;
import com.google.dao.CategoryDao;
import com.google.dao.SubCategoryDao;

@Controller
public class SubCategoryController {

	@Autowired
	CategoryDao categoryDao;

	@Autowired
	SubCategoryDao subCategoryDao; 
	
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
		subCategoryDao.addSubCategory(subCategoryBean);
		return "redirect:/listsubcategory";
	}

	//listsubcategory 
	
	@GetMapping("/listsubcategory")
	public String listSubCategory(Model model) {
		List<SubCategoryBean> listSubCategory = subCategoryDao.getAllSubCagetgory();
		model.addAttribute("listSubCategory",listSubCategory);
		return "ListSubCategory";
	}



}



