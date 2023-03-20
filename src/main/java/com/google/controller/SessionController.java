package com.google.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.bean.ForgetPasswordBean;
import com.google.bean.LoginBean;
import com.google.bean.UpdatePasswordBean;
import com.google.bean.UserBean;
import com.google.dao.UserDao;
import com.google.service.EmailService;
import com.google.util.OtpGenerator;

//annotation 
@Controller
public class SessionController {

	@Autowired
	UserDao userDao;

	@Autowired
	EmailService emailService;

	// jsp open
	@GetMapping("/signup")
	public String signup() {
		return "Signup"; // JSP
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

	// on submit of Login.jsp
	@PostMapping("/authentication")
	public String authentication(LoginBean login, Model model,HttpServletResponse response,HttpSession session) {
		System.out.println(login.getEmail());
		System.out.println(login.getPassword());

		// validation : true
		// db -> users -> email : password match -> loginBean:email,password
		UserBean userBean = userDao.authenticateUser(login);

		if (userBean == null) {
			// inValid
			model.addAttribute("error", "Invalid Credentials");
			return "Login";
		} else {
			// valid
			
			//cookie 
			Cookie c1 = new Cookie("userId",userBean.getUserId()+"");
			Cookie c2 = new Cookie("firstName", userBean.getFirstName());
			//add cookie 
			response.addCookie(c1);
			response.addCookie(c2);
			
			
			//session 
			session.setAttribute("userId", userBean.getUserId());
			
			//max inactive interval time 
			session.setMaxInactiveInterval(60*5);//second 
			
			if (userBean.getRole() == 1) {
				// admin
				return "redirect:/admindashboard";
			} else if (userBean.getRole() == 2) {
				// buyer
				return "redirect:/home";
			} else {
				return "404";
			}
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
	public String sendOtpForForgetPassword(ForgetPasswordBean forgetPasswordBean, Model model) {
		System.out.println(forgetPasswordBean.getEmail());

		UserBean user = userDao.findUserByEmail(forgetPasswordBean);
		if (user == null) {
			// error
			model.addAttribute("error", "Invalid Email");
			return "ForgetPassword";
		} else {
			// otp
			// generate otp
			// int otp = (int)(Math.random()*1000000);

			String otp = OtpGenerator.generateOTP(6);
			userDao.updateOtp(forgetPasswordBean.getEmail(), otp);
			// user set --> email
			// send mail
			emailService.sendEmailForForgetPassword(forgetPasswordBean.getEmail(), otp);
			return "redirect:/updatepasswordjspopen";

		}

	}

	@GetMapping("/updatepasswordjspopen")
	public String updatePasswordJspOpen() {
		return "UpdatePassword";

	}

	@PostMapping("/updatemypassword")
	public String udpateMyPassword(UpdatePasswordBean upBean) {
		System.out.println(upBean.getEmail());
		System.out.println(upBean.getPassword());
		System.out.println(upBean.getOtp());

		//email otp password confirmpassword  - nt blank
		//password  - confirmpassword 
		// otp == dbOtp

		UserBean user = userDao.verifyOtpByEmail(upBean);
		if (user == null) {
			return "UpdatePassword";
		} else {
			userDao.updateMyPassword(upBean);
			return "Login";
		}
		
	}

  @GetMapping("/logout")
  public String logout(HttpSession session) {
	  session.invalidate();//destroy session
	  return "redirect:/login";
  }
	
}


