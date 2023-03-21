<%@page import="com.google.bean.CategoryBean"%>
<%@page import="com.google.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eComApp | View Category</title>
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
				<li class="breadcrumb-item active">View</li>
			</ol>
		</nav>
	</div>




	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">View Category</h5>

						<%
							CategoryBean categoryBean = (CategoryBean) request.getAttribute("categoryBean");
						%>
						<div class="row">
							<div class="col-lg-3 col-md-4 label "><b>Category Name</b></div>
							<div class="col-lg-9 col-md-8"><%=categoryBean.getCategoryName()%></div>
						</div>
						<div class="row">
							<div class="col-lg-3 col-md-4 label "><b>Category Status</b></div>
							<div class="col-lg-9 col-md-8"><%=categoryBean.getDeleted()==true?"ACTIVE":"DISABLE"%></div>
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