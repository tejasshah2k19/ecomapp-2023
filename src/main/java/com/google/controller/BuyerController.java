package com.google.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.bean.ProductBean;
import com.google.bean.ProductImageBean;
import com.google.dao.ProductDao;
import com.google.dao.ProductImageDao;

@Controller
public class BuyerController {

	@Autowired
	ProductDao productDao;

	@Autowired
	ProductImageDao productImageDao;
	
	@GetMapping("/")
	public String welcome(Model model) {
		List<ProductBean> latestProduct = productDao.getAllLatestProducts();
		List<ProductBean> topSellingProducts = productDao.getAllTopSellingProducts();
		model.addAttribute("latestProducts", latestProduct);
		model.addAttribute("topSellingProducts", topSellingProducts);
		return "Welcome";
	}

	// login
	@GetMapping("/home")
	public String home() {
		return "Home";
	}

	@GetMapping("/seedetails")
	public String seeDetails(@RequestParam("productId") Integer productId, Model model) {
		ProductBean product = productDao.getProductById(productId);
		
		List<ProductImageBean> productImages =productImageDao.getImagesByProductId(productId);
		model.addAttribute("product", product);
		model.addAttribute("productImages",productImages);
		return "ProductDetail";
	}

}
