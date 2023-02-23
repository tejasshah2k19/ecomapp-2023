package com.google.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BuyerController {

	@GetMapping("/home")
	public String home() {
		return "Home";
	}
}
