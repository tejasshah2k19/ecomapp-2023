package com.google.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.bean.ForgetPasswordBean;
import com.google.bean.LoginBean;
import com.google.bean.UserBean;
import com.google.dao.UserDao;

//annotation 
@Controller
public class SessionController {

	@Autowired
	UserDao userDao;

	// jsp open
	@GetMapping("/signup")
	public String signup() {
		return "Signup";
	}

	// jsp input process
	@PostMapping("/saveuser")
	public String saveUser(UserBean user) {
		System.out.println(user.getFirstName());
		System.out.println(user.getEmail());

		// validation
		// dbValidation
		// insert
		userDao.insertUser(user);
		return "Login"; // EmployeeLogin.jsp
	}

	// calculateTempSalary()

	@GetMapping("/login") // URL => Browser
	public String login() {
		return "Login";// JSP NAME
	}

	@PostMapping("/authentication")
	public String authentication(LoginBean login,Model model) {
		System.out.println(login.getEmail());
		System.out.println(login.getPassword());

		// validation : true
		// db -> users -> email : password match -> loginBean:email,password
		UserBean userBean = userDao.authenticateUser(login);

		if (userBean == null) {
			// inValid
			model.addAttribute("error","Invalid Credentials");
			return "Login";
		} else {
			// valid
			return "Home";
		}

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
