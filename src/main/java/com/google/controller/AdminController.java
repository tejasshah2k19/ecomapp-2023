package com.google.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.google.dao.AdminDao;

@Controller
public class AdminController {

	@Autowired
	AdminDao adminDao;
	
	@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {
		System.out.println("InSide admindashboard--url-metho--");
		
		//totalOrderCount-Today
		Integer totalOrderCount = adminDao.getTotalOrderCountForCurrentDate();
		Integer totalUserCount = adminDao.getTotalUserCountForCurrentYear();
		Integer sumOfOrderAmount = adminDao.getSumOfOrderAmountForCurrentDate();
		
		model.addAttribute("totalSales",totalOrderCount);
		model.addAttribute("totalRevenue",sumOfOrderAmount);
		model.addAttribute("totalUsers",totalUserCount);
		return "AdminDashboard";
	}
}
