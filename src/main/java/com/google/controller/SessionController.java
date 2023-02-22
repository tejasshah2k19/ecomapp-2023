package com.google.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.bean.ForgetPasswordBean;
import com.google.bean.LoginBean;
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
		return "Login"; // EmployeeLogin.jsp
	}

	// calculateTempSalary()

	@GetMapping("/login") // URL => Browser
	public String login() {
		return "Login";// JSP NAME
	}

	@PostMapping("/authentication")
	public String authentication(LoginBean login) {
		System.out.println(login.getEmail());
		System.out.println(login.getPassword());
		return "Home";
	}

	@GetMapping("/")
	public String root() {
		return "Login";
	}

	@GetMapping("/forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}

	@PostMapping("/sendotpforforgetpassword")
	public String sendOtpForForgetPassword(ForgetPasswordBean forgetPasswordBean) {
		System.out.println(forgetPasswordBean.getEmail());
		return "Login";
	}

}
