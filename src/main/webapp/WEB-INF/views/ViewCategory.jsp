<%@page import="com.google.bean.CategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
	<h2>View Category</h2>

	<%
		CategoryBean categoryBean = (CategoryBean) request.getAttribute("categoryBean");
	%>

	CategoryId :
	<%=categoryBean.getCategoryId()%><br> CategoryName :<%=categoryBean.getCategoryName()%>
	<br> Deleted :
	<%=categoryBean.getDeleted()%><br>

</body>
</html>