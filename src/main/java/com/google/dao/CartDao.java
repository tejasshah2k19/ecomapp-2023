package com.google.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
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

	public List<CartBean> myCart(Integer userId) {

		return stmt.query(
				"select p.productId , p.price , p.name  , c.qty , c.cartId from products p , cart c where c.userId = ? and c.productId = p.productId",
				new BeanPropertyRowMapper<>(CartBean.class), new Object[] { userId });
	}

	public void removeItemsFromCart(Integer userId) {
		stmt.update("delete from cart where userId = ?",userId);
		
	}
}
