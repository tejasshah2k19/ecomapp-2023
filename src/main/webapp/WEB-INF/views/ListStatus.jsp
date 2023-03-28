<%@page import="com.google.bean.StatusBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eComApp | List Status</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSideBar.jsp"></jsp:include>


	<main id="main" class="main">
	<div class="pagetitle">
		<h1>Status</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item">Status</li>
				<li class="breadcrumb-item active">List</li>
			</ol>
		</nav>
	</div>


	<%
		List<StatusBean> list = (List<StatusBean>) request.getAttribute("list");
	%>

	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">List Status 
						
							<a href="newstatus"><i class="bi bi-plus-circle-fill"></i></a>
						</h5>


						<!-- Table with stripped rows -->

						<div class="datatable-container">
							<table class="table datatable" id="listStatus">
								<thead>
									<tr>
										 
										<th>StatusName</th>
										<th>Action</th>
										 
									</tr>
								</thead>
								<tbody>
									<%
										for (StatusBean cb : list) {
									%>
									<tr>
										 
										<td><%=cb.getStatus()%></td>
										 <td>
										 	<a href="deletestatus/<%=cb.getStatusId() %>" class="btn btn-danger" type="button">DELETE</a>
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
	 

</body>
</html>