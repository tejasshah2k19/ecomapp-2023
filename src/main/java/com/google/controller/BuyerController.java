package com.google.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BuyerController {

	
	@GetMapping("/")
	public String welcome() {
		return "Welcome";
	}
	
	
	//login 
	@GetMapping("/home")
	public String home() {
		return "Home";
	}
}
