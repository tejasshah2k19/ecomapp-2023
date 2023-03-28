package com.google.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.google.bean.StatusBean;

import ch.qos.logback.core.status.StatusBase;


@Repository
public class StatusDao {
	
	@Autowired
	JdbcTemplate stmt; 
	
	public void addStatus(StatusBean sBean ) {
		
		String insertQuery = "insert into status (status) values (?)";
		stmt.update(insertQuery,sBean.getStatus());
	}

	public void deleteStatus(Integer statusId) {

		stmt.update("delete from status where statusId = ?",statusId);
	}

	public List<StatusBean> getAllStatus() {
		return stmt.query("select * from status", new BeanPropertyRowMapper<StatusBean>(StatusBean.class));
	}
}
