package com.google.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.google.bean.LoginBean;
import com.google.bean.UserBean;

@Repository
public class UserDao {

	@Autowired
	JdbcTemplate stmt;// new

	// add customer -- signup
	public void insertUser(UserBean userBean) {
		//
		String insertQuery = "insert into users (firstName,lastName,email,password,role) values (?,?,?,?,?)";

		// role -> 2 for customer/buyer/user
		stmt.update(insertQuery, userBean.getFirstName(), userBean.getLastName(), userBean.getEmail(),
				userBean.getPassword(), 2);// query execute

	}

	public UserBean authenticateUser(LoginBean loginBean) {
		try {
			String loginQuery = "select * from users where email = ? and password = ? ";
			UserBean user = stmt.queryForObject(loginQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class),
					new Object[] { loginBean.getEmail(), loginBean.getPassword() });

			return user;
		} catch (Exception e) {
			System.out.println("SMW --> UserDao::authenticateUser()");
			System.out.println(e.getMessage()); 
		}
		return null;
	}
}
