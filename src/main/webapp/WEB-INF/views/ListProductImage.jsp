<%@page import="com.google.bean.ProductImageBean"%>
<%@page import="com.google.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eComApp | List Product Image</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSideBar.jsp"></jsp:include>


	<main id="main" class="main">
	<div class="pagetitle">
		<h1>ProductImage</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item">ProductImage</li>
				<li class="breadcrumb-item active">List</li>
			</ol>
		</nav>
	</div>


	<%
		List<ProductImageBean> list = (List<ProductImageBean>) request.getAttribute("productimages");
	%>

	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">
							List Product Image <a href="newproductimage"><i
								class="bi bi-plus-circle-fill"></i></a>
						</h5>


						<!-- Table with stripped rows -->

						<div class="datatable-container">
							<table class="table datatable" id="listcategory">
								<thead>
									<tr>

										<th>ProductName</th>
										<th>ImageUrl</th>
										<th>Image</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<%
										for (ProductImageBean cb : list) {
									%>
									<tr>

										<td><%=cb.getName()%> </td>
										<td><%=cb.getImageUrl() %> </td>
										<td> <img src="<%=cb.getImageUrl()%>" style="height:100px;width:100px;"></td>
										<td><a
											href="deleteproductimage?productImageId=<%=cb.getProductImageId()%>"><i
												class="bi bi-trash"></i> </a></td>
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
		</div>
	</section>
	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AllJs.jsp"></jsp:include>
	<script type="text/javascript">
		function changeStatus(categoryId, currentStatus) {
			location.href = "deletecategory/" + categoryId + "/"
					+ currentStatus;

		}
	</script>

</body>
</html>