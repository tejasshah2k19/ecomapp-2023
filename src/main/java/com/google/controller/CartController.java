package com.google.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.bean.CartBean;
import com.google.bean.UserBean;
import com.google.dao.CartDao;

@Controller
public class CartController {
	@Autowired
	CartDao cartDao;

	@GetMapping("/addtocart")
	public String addToCart(@RequestParam("productId") Integer productId, HttpSession session,HttpServletRequest request) {

		System.out.println("REferer = > "+request.getHeader("referer"));
		Integer userId = -1;
		CartBean cart = new CartBean();
		UserBean user = (UserBean) session.getAttribute("user");
		userId = user.getUserId();
		cart.setProductId(productId);
		cart.setQty(1);
		cart.setUserId(userId);
		cartDao.addToCart(cart);
		return "";
	}
}
