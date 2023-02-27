package com.google.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.google.bean.CategoryBean;

@Repository
public class CategoryDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addCategory(CategoryBean categoryBean) {
		String insertQuery = "insert into category (categoryName,deleted) values (?,?) ";

		stmt.update(insertQuery, categoryBean.getCategoryName(), false);// insert //update //delete
	}

	public List<CategoryBean> getAllCategory() {

		String selectQuery = "select * from category where deleted = false";

		List<CategoryBean> list =  stmt.query(selectQuery, new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class));
		
		//c1 c2 c3 
		
		return list;
	}

	// list

	// update

	// delete

}
