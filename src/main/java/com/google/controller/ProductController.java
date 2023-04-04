package com.google.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.bean.ProductBean;
import com.google.bean.ProductImageBean;
import com.google.dao.CategoryDao;
import com.google.dao.ProductDao;
import com.google.dao.SubCategoryDao;

@Controller
public class ProductController {

	@Autowired
	ProductDao productDao;

	@Autowired
	CategoryDao categoryDao;

	@Autowired
	SubCategoryDao subCategoryDao;

	@GetMapping("/newproduct")
	public String newProduct(Model model) {
		model.addAttribute("category", categoryDao.getAllCategory());
		model.addAttribute("subCategory", subCategoryDao.getAllSubCagetgory());
		return "NewProduct";
	}

	@PostMapping("/saveproduct")
	public String saveProduct(ProductBean productBean) {
		productBean.setMostValueInd(false);
		if (productBean.getTopSellingInd() == null) {
			productBean.setTopSellingInd(false);
		}
		productDao.addProduct(productBean);

		return "redirect:/listproduct";

	}

	@GetMapping("/listproduct")
	public String listProduct(Model model) {
		List<ProductBean> products = productDao.getAllProducts();
		model.addAttribute("listProduct", products);
		return "ListProduct";
	}

	@GetMapping("/deleteproduct/{productId}")
	public String deleteProduct(@PathVariable("productId") Integer productId) {
		productDao.deleteProduct(productId);
		return "redirect:/listproduct";
	}

	@GetMapping("/viewproduct/{productId}")
	public String viewProduct(@PathVariable("productId") Integer productId, Model model) {
		ProductBean productBean = productDao.getProductById(productId);
		model.addAttribute("product", productBean);
		return "ViewProduct";
	}


}
