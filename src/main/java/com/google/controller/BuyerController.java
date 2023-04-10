package com.google.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.google.bean.ProductBean;
import com.google.dao.ProductDao;

@Controller
public class BuyerController {

	@Autowired
	ProductDao productDao;
	
	@GetMapping("/")
	public String welcome(Model model) {
		List<ProductBean> latestProduct  = productDao.getAllLatestProducts();
		model.addAttribute("latestProducts",latestProduct);
		return "Welcome";
	}
	
	
	//login 
	@GetMapping("/home")
	public String home() {
		return "Home";
	}
}
