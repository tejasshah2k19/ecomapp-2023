package com.google.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.google.bean.CartBean;

@Repository
public class CartDao {
	@Autowired
	JdbcTemplate stmt;

	public void addToCart(CartBean cart) {
		stmt.update("insert into cart (userId,productId,qty) values (?,?,?) ", cart.getUserId(), cart.getProductId(),
				cart.getQty());
	}

}
