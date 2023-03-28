package com.google.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.bean.StatusBean;
import com.google.dao.StatusDao;

@Controller
public class StatusController {
	@Autowired
	StatusDao statusDao;

	@GetMapping("/newstatus")
	public String newStatus() {

		return "NewStatus";
	}

	@PostMapping("/savestatus")
	public String saveStatus(StatusBean sBean) {
		statusDao.addStatus(sBean);
		return "redirect:/liststatus";
	}

	@GetMapping("/liststatus") 
	public String listStatus(Model model) {
		List<StatusBean> allStatus  = statusDao.getAllStatus();
		System.out.println(allStatus);
		model.addAttribute("list",allStatus);
		return "ListStatus";
	}
	
	@GetMapping("/deletestatus/{statusId}")
	public String deleteStatus(@PathVariable("statusId") Integer statusId) {
		statusDao.deleteStatus(statusId);
		return "redirect:/liststatus";
	}
	
	
	
	

}
