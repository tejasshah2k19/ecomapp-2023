package com.google.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.google.bean.UserBean;

@Repository
public class UserDao {

	@Autowired
	JdbcTemplate stmt;//new 
	
	//add customer -- signup 
	public void insertUser(UserBean userBean) {
		//
		String insertQuery = "insert into users (firstName,lastName,email,password,role) values (?,?,?,?,?)";

		//role -> 2 for customer/buyer/user 
		stmt.update(insertQuery,userBean.getFirstName(),userBean.getLastName(),userBean.getEmail(),userBean.getPassword(),2);//query execute 
		
		
	}

}
