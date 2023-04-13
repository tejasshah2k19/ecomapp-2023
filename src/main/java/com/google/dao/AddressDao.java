package com.google.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.google.bean.AddressBean;

@Repository
public class AddressDao {

	@Autowired
	JdbcTemplate stmt;

	public void addAddress(AddressBean address) {
		stmt.update(
				"insert into address (userId,addressLine,landMark,pincode,city,state,defaultInd) values (?,?,?,?,?,?,?)",
				address.getUserId(), address.getAddressLine(), address.getLandMark(), address.getPincode(),
				address.getCity(), address.getState(), address.getDefaultInd());
	}

	public List<AddressBean> getAllAddressByUser(Integer userId) {
		// TODO Auto-generated method stub
		return stmt.query("select * from address where userId = ?", new BeanPropertyRowMapper<>(AddressBean.class),
				new Object[] { userId });
	}
}
