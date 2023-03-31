package com.google.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.google.bean.OrderChartBean;
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
		List<OrderChartBean> chartData = adminDao.getOrderStats();
		
		model.addAttribute("totalSales",totalOrderCount);
		model.addAttribute("totalRevenue",sumOfOrderAmount);
		model.addAttribute("totalUsers",totalUserCount);
		model.addAttribute("chartData",chartData);
		
		return "AdminDashboard";
	}
}
