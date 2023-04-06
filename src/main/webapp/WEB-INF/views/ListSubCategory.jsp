<%@page import="com.google.bean.SubCategoryBean"%>
<%@page import="com.google.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eComApp | List SubCategory</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSideBar.jsp"></jsp:include>


	<main id="main" class="main">
	<div class="pagetitle">
		<h1>SubCategory</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item">SubCategory</li>
				<li class="breadcrumb-item active">List</li>
			</ol>
		</nav>
	</div>


	<%
		List<SubCategoryBean> listSubCategory = (List<SubCategoryBean>) request.getAttribute("listSubCategory");
	%>


	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">List SubCategory
													<a href="newsubcategory"><i class="bi bi-plus-circle-fill"></i></a>
						
						</h5>


						<!-- Table with stripped rows -->

 							<table class="table datatable">
								<thead>
									<tr>
										<th>SubCategoryName</th>
										<th>CategoryName</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<%
										for (SubCategoryBean sb : listSubCategory) {
									%>
									<tr>
										<td><%=sb.getSubCategoryName()%></td>
										<td><%=sb.getCategoryName()%>
										<td>
										<a href="deletesubcategory/<%=sb.getSubCategoryId()%>"><i class="bi bi-trash text-danger"></i> </a>
										<a href="editsubcategory?subCategoryId=<%=sb.getSubCategoryId() %>"><i class="bi bi-pencil text-primary"></i></a>  
										
										</td>
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