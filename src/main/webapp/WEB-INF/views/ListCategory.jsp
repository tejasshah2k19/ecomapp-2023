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
						<h5 class="card-title">List Category 
						
							<a href="newcategory"><i class="bi bi-plus-circle-fill"></i></a>
						</h5>


						<!-- Table with stripped rows -->

						<div class="datatable-container">
							<table class="table datatable" id="listcategory">
								<thead>
									<tr>
										 
										<th>CategoryName</th>
										<th>Active</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<%
										for (CategoryBean cb : list) {
									%>
									<tr>
										 
										<td><%=cb.getCategoryName()%></td>
										<td>
											<div class="form-check form-switch">


												<input class="form-check-input" onclick="changeStatus(<%=cb.getCategoryId()%>,<%=cb.getDeleted() %>)" type="checkbox"
													id="flexSwitchCheckChecked"
													<%=!cb.getDeleted() ? "checked" : ""%>>

											</div>
										</td>
										<td><a
											href="viewcategory?categoryId=<%=cb.getCategoryId()%>"><i class="bi bi-eye"></i>   </a>
											|
											
										<a
											href="editcategory?categoryId=<%=cb.getCategoryId()%>"><i class="bi bi-pencil"></i>   </a>
											
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
		</div>
	</section>
	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AllJs.jsp"></jsp:include>
	<script type="text/javascript">
		function changeStatus(categoryId,currentStatus){
 			location.href="deletecategory/"+categoryId+"/"+currentStatus;
			
		}
	</script>

</body>
</html>