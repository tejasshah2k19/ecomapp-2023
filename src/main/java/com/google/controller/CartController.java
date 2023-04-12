package com.google.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String addToCart(@RequestParam("productId") Integer productId, HttpSession session,
			HttpServletRequest request) {
		String ref = request.getHeader("referer");
		String backUrl = ref.substring(22);
		if (backUrl.length() == 0) {
			backUrl = "welcome";

		}
		Integer userId = -1;
		CartBean cart = new CartBean();
		UserBean user = (UserBean) session.getAttribute("user");
		userId = user.getUserId();
		cart.setProductId(productId);
		cart.setQty(1);
		cart.setUserId(userId);
		cartDao.addToCart(cart);
		return "redirect:/" + backUrl;
	}

	@GetMapping("/mycart")
	public String mycart(HttpSession session,Model model) {
		UserBean user = (UserBean) session.getAttribute("user");

		List<CartBean> mycart = cartDao.myCart(user.getUserId());
		
		model.addAttribute("mycart",mycart);
		return "MyCart";
	}

}
