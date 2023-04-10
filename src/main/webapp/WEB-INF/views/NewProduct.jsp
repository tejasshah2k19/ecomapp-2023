<%@page import="com.google.bean.SubCategoryBean"%>
<%@page import="com.google.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eComApp | New Product</title>
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
				<li class="breadcrumb-item active">New</li>
			</ol>
		</nav>
	</div>



	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">New Product</h5>

						<%
							List<CategoryBean> category = (List<CategoryBean>) request.getAttribute("category");
							List<SubCategoryBean> subCategory = (List<SubCategoryBean>) request.getAttribute("subCategory");
						%>

						<form action="saveproduct" method="post">
							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">
									Name </label>
								<div class="col-sm-6">
									<input type="text" name="name" class="form-control">
								</div>
							</div>

							<div class="row mb-3">
								<label class="col-sm-2 col-form-label">Category</label>
								<div class="col-sm-6">
									<select name="categoryId" class="form-select"
										aria-label="Default select example">
										<option selected="">Select Category</option>
										<%
											for (CategoryBean cb : category) {
										%>
										<option value="<%=cb.getCategoryId()%>">
											<%=cb.getCategoryName()%></option>
										<%
											}
										%>
									</select>
								</div>
							</div>

							<div class="row mb-3">
								<label class="col-sm-2 col-form-label">SubCategory</label>
								<div class="col-sm-6">
									<select name="subCategoryId" class="form-select"
										aria-label="Default select example">
										<option selected="">Select SubCategory</option>
										<%
											for (SubCategoryBean cb : subCategory) {
										%>
										<option value="<%=cb.getSubCategoryId()%>">
											<%=cb.getSubCategoryName()%></option>
										<%
											}
										%>
									</select>
								</div>
							</div>


							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">
									Description </label>
								<div class="col-sm-6">
									<textarea name="description" class="form-control"></textarea>
								</div>
							</div>

							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">
									Quantity </label>
								<div class="col-sm-6">
									<input type="text" name="qty" class="form-control">
								</div>
							</div>

							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">
									Price </label>
								<div class="col-sm-6">
									<input type="text" name="price" class="form-control">
								</div>
							</div>

							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">
									BrandName </label>
								<div class="col-sm-6">
									<input type="text" name="brandName" class="form-control">
								</div>
							</div>

							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">
									ProductDetailURL </label>
								<div class="col-sm-6">
									<input type="text" name="productDetailDescriptionURL"
										class="form-control">
								</div>
							</div>

							<div class="row mb-3">
								<legend class="col-form-label col-sm-2 pt-0">Top Selling</legend>
								<div class="col-sm-10">
									<div class="form-check">
										<input class="form-check-input" type="checkbox"
											id="gridCheck2" value="true" name="topSellingInd" > <label
											class="form-check-label" for="gridCheck2">  </label>
									</div>

								</div>
							</div>



							<div class="row mb-3">
								<legend class="col-form-label col-sm-2 pt-0">Latest?</legend>
								<div class="col-sm-10">
									<div class="form-check">
										<input class="form-check-input" type="checkbox"
											id="gridCheck2" value="true" name="latestInd" > <label
											class="form-check-label" for="gridCheck2">  </label>
									</div>

								</div>
							</div>


							
							<div class="row mb-3">
								<div class="col-2"></div>
								<div class="col-2">
									<button class="btn btn-primary w-100" type="submit">Save
										Product</button>

								</div>
								<div class="col-2">
									<a class="btn btn-danger w-100" href="listproduct"
										type="button">Cancel</a>

								</div>

							</div>



						</form>



						<!-- Table with stripped rows -->

						<br> <a href="listsubcategory"> <i
							class="bi bi-arrow-left"></i> BACK
						</a>

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