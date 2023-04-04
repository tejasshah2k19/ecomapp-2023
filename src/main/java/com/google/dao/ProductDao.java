package com.google.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.google.bean.ProductBean;
import com.google.bean.ProductImageBean;

@Repository
public class ProductDao {

	@Autowired
	JdbcTemplate stmt;

	public void addProduct(ProductBean productBean) {

		String insertQuery = "insert into products (name,description,categoryId,subCategoryId,qty,price,topSellingInd,mostValueInd,brandName,productDetailDescriptionURL,deleted) "
				+ "values (?,?,?,?,?,?,?,?,?,?,false)";
		stmt.update(insertQuery, productBean.getName(), productBean.getDescription(), productBean.getCategoryId(),
				productBean.getSubCategoryId(), productBean.getQty(), productBean.getPrice(),
				productBean.getTopSellingInd(), productBean.getMostValueInd(), productBean.getBrandName(),
				productBean.getProductDetailDescriptionURL());
	}

	 

	public ProductBean getProductById(Integer productId) {
		return stmt.queryForObject("select * from products where productId = ?",
				new BeanPropertyRowMapper<ProductBean>(ProductBean.class), new Object[] { productId });
	}

	public List<ProductBean> getAllProducts() {
		return stmt.query("select p.*,c.categoryName,sc.subCategoryName from products p,category c,subCategory sc where p.deleted = false and p.categoryId = c.categoryId and p.subCategoryId = sc.subCategoryId",
				new BeanPropertyRowMapper<ProductBean>(ProductBean.class));
	}

	public void deleteProduct(Integer productId) {
		stmt.update("update products set deleted = true where productId = ? ", productId);
	}




}
