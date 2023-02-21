package com.google.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.bean.UserBean;

 

//annotation 
@Controller
public class SessionController {

	// jsp open

	@GetMapping("/signup")
	public String signup() {
		return "Signup";
	}

	// jsp input process
	@PostMapping("/saveuser")
	public String saveUser(UserBean user) {
		System.out.println("jai Hind....");
		System.out.println(user.getFirstName());
		System.out.println(user.getEmail());
		return "Login";
	}
	
	
	
	@GetMapping("/login")
	public String login() {

		return "Login";
	}
	
	@GetMapping("/")
	public String root() {
		return "Login";
	}
	
	

	@GetMapping("/forgetpassword")
	public String forgetPsassword() {
		return "ForgetPassword";
	}
}
