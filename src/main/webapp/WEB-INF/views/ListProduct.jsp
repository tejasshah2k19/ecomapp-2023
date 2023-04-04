<%@page import="com.google.bean.ProductBean"%>
<%@page import="com.google.bean.SubCategoryBean"%>
<%@page import="com.google.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eComApp | List Product</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSideBar.jsp"></jsp:include>


	<main id="main" class="main">
	<div class="pagetitle">
		<h1>Product</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item">Product</li>
				<li class="breadcrumb-item active">List</li>
			</ol>
		</nav>
	</div>


	<%
		List<ProductBean> listProduct = (List<ProductBean>) request.getAttribute("listProduct");
	%>


	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">
							List Product <a href="newproduct"><i
								class="bi bi-plus-circle-fill"></i></a>

						</h5>


						<!-- Table with stripped rows -->

						<table class="table datatable">
							<thead>
								<tr>
									<th>Name</th>
									<th>CategoryName</th>
									<th>SubCategoryName</th>
									<th>Qty</th>
									<th>Brand</th>
									<th>Price</th>

									<th>Action</th>

								</tr>
							</thead>
							<tbody>
								<%
									for (ProductBean sb : listProduct) {
								%>
								<tr>
									<td><%=sb.getName()%></td>
									<td><%=sb.getCategoryName()%>
									<td><%=sb.getSubCategoryName()%>
									<td><%=sb.getQty()%>
									<td><%=sb.getBrandName()%>
									<td><%=sb.getPrice()%>
									<td><a class="text-danger"
										href="deleteproduct/productId=<%=sb.getProductId()%>"><i
											class="bi bi-trash"></i> </a> | <a class="text-warning"
										href="uploadimage?productId=<%=sb.getProductId()%>"><i
											class="bi bi-upload"></i> </a></td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>


					</div>
				</div>

			</div>
		</div>
	</section>
	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AllJs.jsp"></jsp:include>


</body>
</html>