package com.google.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

//annotation 
@Controller
public class SessionController {

	// jsp open

	@GetMapping("/signup")
	public String signup() {

		return "Signup";
	}

	// jsp input process

}
