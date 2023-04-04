package com.google.controller;

import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.bean.OrderChartBean;
import com.google.bean.ProfileBean;
import com.google.dao.AdminDao;

@Controller
public class AdminController {

	@Autowired
	AdminDao adminDao;

	@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {
		System.out.println("InSide admindashboard--url-metho--");

		// totalOrderCount-Today
		Integer totalOrderCount = adminDao.getTotalOrderCountForCurrentDate();
		Integer totalUserCount = adminDao.getTotalUserCountForCurrentYear();
		Integer sumOfOrderAmount = adminDao.getSumOfOrderAmountForCurrentDate();
		List<OrderChartBean> chartData = adminDao.getOrderStats();

		model.addAttribute("totalSales", totalOrderCount);
		model.addAttribute("totalRevenue", sumOfOrderAmount);
		model.addAttribute("totalUsers", totalUserCount);
		model.addAttribute("chartData", chartData);

		return "AdminDashboard";
	}

	@GetMapping("/myprofile")
	public String myprofile() {
		return "MyProfile";
	}

	@PostMapping("/saveprofilepic")
	public String saveProfilePic(ProfileBean profileBean) {
		System.out.println(profileBean.getUserId());
		System.out.println(profileBean.getProfileImg().getOriginalFilename());
		try {
			File userDir = new File(
					"E:\\Tejas Shah\\Dropbox\\boot\\ecom-app-23\\src\\main\\resources\\static\\assets\\profiles",
					profileBean.getUserId() + "");
			if (userDir.exists() == false) {
				userDir.mkdir();
			}
			File file = new File(userDir, profileBean.getProfileImg().getOriginalFilename());
			FileUtils.writeByteArrayToFile(file, profileBean.getProfileImg().getBytes());
			profileBean.setImageUrl("assets/profiles/" + profileBean.getUserId() + "/"
					+ profileBean.getProfileImg().getOriginalFilename());
			
			adminDao.updateImageUrl(profileBean);
			
		} catch (Exception e) {

		}
		return "redirect:/myprofile";
	}

}
