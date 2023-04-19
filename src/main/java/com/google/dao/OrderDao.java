package com.google.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.google.bean.CartBean;
import com.google.bean.OrderBean;
import com.google.bean.OrderDetailBean;

@Repository
public class OrderDao {

	@Autowired
	JdbcTemplate stmt;

	public void addOrder(OrderBean orderBean) {

		stmt.update("insert into orders (userId,orderId,orderDate,totalAmount,addressId,status) values (?,?,?,?,?,?) ",
				orderBean.getUserId(), orderBean.getOrderId(), orderBean.getOrderDate(), orderBean.getTotalAmount(),
				orderBean.getAddressId(), orderBean.getStatus());
	}

	public List<OrderBean> getOrdersByUser(Integer userId) {
		return stmt.query(
				"select o.*, s.status as statusName, a.addressLine,a.state,a.city,a.pincode   from orders o ,status s,address a  where o.userId = ? and o.status = s.statusId and o.addressId = a.addressId ",
				new BeanPropertyRowMapper<>(OrderBean.class), new Object[] { userId });
	}

	public void addOrderDetail(CartBean cart, Integer orderId) {
		stmt.update("insert into orderDetail(orderId,userId,productId,price,qty,status) values (?,?,?,?,?,?)", orderId,
				cart.getUserId(), cart.getProductId(), cart.getPrice(), cart.getQty(), 7);
	}

	public List<OrderDetailBean> getOrderDetailByOrder(Integer orderId) {
		return stmt.query(
				"select o.*,p.name, s.status as statusName   from orderDetail o ,status s,products p  where o.orderId = ? and o.status = s.statusId and o.productId = p.productId ",
				new BeanPropertyRowMapper<>(OrderDetailBean.class), new Object[] { orderId });
	}

	public  OrderBean  getOrdersByOrderId(Integer orderId) {
		return stmt.queryForObject(
				"select o.*, s.status as statusName, a.addressLine,a.state,a.city,a.pincode   from orders o ,status s,address a  where o.orderId = ? and o.status = s.statusId and o.addressId = a.addressId ",
				new BeanPropertyRowMapper<>(OrderBean.class), new Object[] { orderId });
	}

	
}
