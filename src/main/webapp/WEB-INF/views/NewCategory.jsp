<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eComApp | New Category</title>
</head>
<body>

	<form action="savecategory" method="post">
		CategoryName : <input type="text" name="categoryName"/>
		
		<br><br>
		<input type="submit" value="Save Category"/>
	
	</form>
	<a href="listcategories">List Category</a> 
	
</body>
</html>