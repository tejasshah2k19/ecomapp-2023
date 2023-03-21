<%@page import="com.google.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eComApp | List Category</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSideBar.jsp"></jsp:include>


	<main id="main" class="main">
	<div class="pagetitle">
		<h1>Category</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item">Category</li>
				<li class="breadcrumb-item active">List</li>
			</ol>
		</nav>
	</div>


	<%
		List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
	%>

	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">List Category</h5>


						<!-- Table with stripped rows -->
						 
							<div class="datatable-container">
								<table class="table datatable" id="listcategory">
									<thead>
										<tr>
											<th>CategoryId</th>
											<th>CategoryName</th>
											<th>Deleted?</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<%
											for (CategoryBean cb : list) {
										%>
										<tr>
											<td><%=cb.getCategoryId()%></td>
											<td><%=cb.getCategoryName()%></td>
											<td><%=cb.getDeleted()%></td>
											<td><a href="deletecategory/<%=cb.getCategoryId()%>">Delete</a>
												| <a href="viewcategory?categoryId=<%=cb.getCategoryId()%>">View</a></td>
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

<jsp:include page="AllJs.jsp"></jsp:include>
 

</body>
</html>