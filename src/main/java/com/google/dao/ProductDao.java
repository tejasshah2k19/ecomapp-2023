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

		String insertQuery = "insert into products (name,description,categoryId,subCategoryId,qty,price,topSellingInd,mostValueInd,brandName,productDetailDescriptionURL,deleted,latestInd) "
				+ "values (?,?,?,?,?,?,?,?,?,?,false,?)";
		stmt.update(insertQuery, productBean.getName(), productBean.getDescription(), productBean.getCategoryId(),
				productBean.getSubCategoryId(), productBean.getQty(), productBean.getPrice(),
				productBean.getTopSellingInd(), productBean.getMostValueInd(), productBean.getBrandName(),
				productBean.getProductDetailDescriptionURL(), productBean.getLatestInd());
	}

	public ProductBean getProductById(Integer productId) {
		return stmt.queryForObject("select p.*,c.categoryName,sc.subCategoryName from products p,category c,subcategory sc  where p.categoryId = c.categoryId and  p.subcategoryid = sc.subcategoryid and productId = ?",
				new BeanPropertyRowMapper<ProductBean>(ProductBean.class), new Object[] { productId });
	}

	public List<ProductBean> getAllProducts() {
		return stmt.query(
				"select p.*,c.categoryName,sc.subCategoryName from products p,category c,subCategory sc where p.deleted = false and p.categoryId = c.categoryId and p.subCategoryId = sc.subCategoryId",
				new BeanPropertyRowMapper<ProductBean>(ProductBean.class));
	}

	public void deleteProduct(Integer productId) {
		stmt.update("update products set deleted = true where productId = ? ", productId);
	}

	public List<ProductBean> getAllLatestProducts() {
		return stmt.query(
				"select p.*,c.categoryName,sc.subCategoryName from products p,category c,subCategory sc where p.deleted = false and p.categoryId = c.categoryId and p.subCategoryId = sc.subCategoryId and p.latestInd = 1 order by p.productId desc",
				new BeanPropertyRowMapper<ProductBean>(ProductBean.class));

	}

	public List<ProductBean> getAllTopSellingProducts() {
		return stmt.query(
				"select p.*,c.categoryName,sc.subCategoryName from products p,category c,subCategory sc where p.deleted = false and p.categoryId = c.categoryId and p.subCategoryId = sc.subCategoryId and p.topSellingInd = 1 order by p.productId desc",
				new BeanPropertyRowMapper<ProductBean>(ProductBean.class));

	}

}
