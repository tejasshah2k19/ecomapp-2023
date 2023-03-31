<%@page import="com.google.bean.OrderChartBean"%>
<%@page import="com.fasterxml.jackson.core.io.CharTypes"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>

<jsp:include page="AllCss.jsp"></jsp:include>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSideBar.jsp"></jsp:include>

	<main id="main" class="main">

	<div class="pagetitle">
		<h1>Dashboard</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.html">Home</a></li>
				<li class="breadcrumb-item active">Dashboard</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->

	<section class="section dashboard">
		<div class="row">

			<!-- Left side columns -->
			<div class="col-lg-12">
				<div class="row">

					<!-- Sales Card -->
					<div class="col-xxl-4 col-md-6">
						<div class="card info-card sales-card">

							<div class="filter">
								<a class="icon" href="#" data-bs-toggle="dropdown"><i
									class="bi bi-three-dots"></i></a>
								<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
									<li class="dropdown-header text-start">
										<h6>Filter</h6>
									</li>

									<li><a class="dropdown-item" href="#">Today</a></li>
									<li><a class="dropdown-item" href="#">This Month</a></li>
									<li><a class="dropdown-item" href="#">This Year</a></li>
								</ul>
							</div>

							<div class="card-body">
								<h5 class="card-title">
									Sales <span>| Today</span>
								</h5>

								<div class="d-flex align-items-center">
									<div
										class="card-icon rounded-circle d-flex align-items-center justify-content-center">
										<i class="bi bi-cart"></i>
									</div>
									<div class="ps-3">
										<h6>${totalSales}</h6>
										<span class="text-success small pt-1 fw-bold">12%</span> <span
											class="text-muted small pt-2 ps-1">increase</span>

									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- End Sales Card -->

					<!-- Revenue Card -->
					<div class="col-xxl-4 col-md-6">
						<div class="card info-card revenue-card">

							<div class="filter">
								<a class="icon" href="#" data-bs-toggle="dropdown"><i
									class="bi bi-three-dots"></i></a>
								<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
									<li class="dropdown-header text-start">
										<h6>Filter</h6>
									</li>

									<li><a class="dropdown-item" href="#">Today</a></li>
									<li><a class="dropdown-item" href="#">This Month</a></li>
									<li><a class="dropdown-item" href="#">This Year</a></li>
								</ul>
							</div>

							<div class="card-body">
								<h5 class="card-title">
									Revenue <span>| This Month</span>
								</h5>

								<div class="d-flex align-items-center">
									<div
										class="card-icon rounded-circle d-flex align-items-center justify-content-center">
										<i class="bi bi-currency-dollar"></i>
									</div>
									<div class="ps-3">
										<h6>${totalRevenue==null?0:totalRevenue}</h6>
										<span class="text-success small pt-1 fw-bold">8%</span> <span
											class="text-muted small pt-2 ps-1">increase</span>

									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- End Revenue Card -->

					<!-- Customers Card -->
					<div class="col-xxl-4 col-xl-12">

						<div class="card info-card customers-card">

							<div class="filter">
								<a class="icon" href="#" data-bs-toggle="dropdown"><i
									class="bi bi-three-dots"></i></a>
								<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
									<li class="dropdown-header text-start">
										<h6>Filter</h6>
									</li>

									<li><a class="dropdown-item" href="#">Today</a></li>
									<li><a class="dropdown-item" href="#">This Month</a></li>
									<li><a class="dropdown-item" href="#">This Year</a></li>
								</ul>
							</div>

							<div class="card-body">
								<h5 class="card-title">
									Customers <span>| This Year</span>
								</h5>

								<div class="d-flex align-items-center">
									<div
										class="card-icon rounded-circle d-flex align-items-center justify-content-center">
										<i class="bi bi-people"></i>
									</div>
									<div class="ps-3">
										<h6>${totalUsers}</h6>
										<span class="text-danger small pt-1 fw-bold">12%</span> <span
											class="text-muted small pt-2 ps-1">decrease</span>

									</div>
								</div>

							</div>
						</div>

					</div>
					<!-- End Customers Card -->

					<!-- Reports -->
					<div class="col-12">
						<div class="card">


							<div class="card-body">
								<h5 class="card-title">Orders-Monthly</h5>

								<%
									List<OrderChartBean> chartData = (List<OrderChartBean>) request.getAttribute("chartData");
								%>
								<!-- Line Chart -->
								<div>
									<canvas id="orderchart"></canvas>
								</div>

								<script>
								 colorArray =  [
								      'rgba(255, 99, 132, 0.2)',
								      'rgba(255, 159, 64, 0.2)',
								      'rgba(255, 205, 86, 0.2)',
								      'rgba(75, 192, 192, 0.2)',
								      'rgba(54, 162, 235, 0.2)',
								      'rgba(153, 102, 255, 0.2)',
								      'rgba(201, 203, 207, 0.2)',
								      'rgba(230, 125, 57, 0.2)',
								      'rgba(125, 230, 57, 0.2)',
								      'rgba(112, 150, 110, 0.2)',
								      'rgba(55, 55, 55, 0.2)',
								      'rgba(66, 66, 66, 0.2)'
								      
								    ]
								 
								 bgColor = [];
								 
										<%for(int i=0;i<chartData.size();i++){%>
										
											bgColor.push(colorArray[<%=i%>]);
										<%}%>
								
									const ctx = document
											.getElementById('orderchart');

									new Chart(
											ctx,
											{
												type : 'bar',
												data : {
													labels : [ 
														<%for (OrderChartBean o : chartData) {%>
														 '<%=o.getMonth()%>',
															<%}%>],
													datasets : [ {
														label : '# of OrderAmount',
														data : [
															<%for (OrderChartBean o : chartData) {%>
																	<%=o.getOrderAmount()%>,
															<%}%>
															],
															backgroundColor:bgColor
															,
														borderWidth : 1
													} ]
												},
												options : {
													scales : {
														y : {
															beginAtZero : true
														}
													}
												}
											});
								</script>

							</div>

						</div>
					</div>
					<!-- End Reports -->

					<!-- Recent Sales -->
					<div class="col-12">
						<div class="card recent-sales overflow-auto">

							<div class="filter">
								<a class="icon" href="#" data-bs-toggle="dropdown"><i
									class="bi bi-three-dots"></i></a>
								<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
									<li class="dropdown-header text-start">
										<h6>Filter</h6>
									</li>

									<li><a class="dropdown-item" href="#">Today</a></li>
									<li><a class="dropdown-item" href="#">This Month</a></li>
									<li><a class="dropdown-item" href="#">This Year</a></li>
								</ul>
							</div>

							<div class="card-body">
								<h5 class="card-title">
									Recent Sales <span>| Today</span>
								</h5>

								<div
									class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
									<div class="datatable-top">
										<div class="datatable-dropdown">
											<label> <select class="datatable-selector"><option
														value="5">5</option>
													<option value="10" selected="">10</option>
													<option value="15">15</option>
													<option value="20">20</option>
													<option value="25">25</option></select> entries per page
											</label>
										</div>
										<div class="datatable-search">
											<input class="datatable-input" placeholder="Search..."
												type="search" title="Search within table">
										</div>
									</div>
									<div class="datatable-container">
										<table
											class="table table-borderless datatable datatable-table">
											<thead>
												<tr>
													<th data-sortable="true"
														style="width: 10.911602209944752%;"><a href="#"
														class="datatable-sorter">#</a></th>
													<th data-sortable="true" style="width: 24.03314917127072%;"><a
														href="#" class="datatable-sorter">Customer</a></th>
													<th data-sortable="true"
														style="width: 40.193370165745854%;"><a href="#"
														class="datatable-sorter">Product</a></th>
													<th data-sortable="true" style="width: 9.806629834254144%;"><a
														href="#" class="datatable-sorter">Price</a></th>
													<th data-sortable="true" style="width: 15.05524861878453%;"><a
														href="#" class="datatable-sorter">Status</a></th>
												</tr>
											</thead>
											<tbody>
												<tr data-index="0">
													<td><a href="#">#2457</a></td>
													<td>Brandon Jacob</td>
													<td><a href="#" class="text-primary">At
															praesentium minu</a></td>
													<td>$64</td>
													<td><span class="badge bg-success">Approved</span></td>
												</tr>
												<tr data-index="1">
													<td><a href="#">#2147</a></td>
													<td>Bridie Kessler</td>
													<td><a href="#" class="text-primary">Blanditiis
															dolor omnis similique</a></td>
													<td>$47</td>
													<td><span class="badge bg-warning">Pending</span></td>
												</tr>
												<tr data-index="2">
													<td><a href="#">#2049</a></td>
													<td>Ashleigh Langosh</td>
													<td><a href="#" class="text-primary">At recusandae
															consectetur</a></td>
													<td>$147</td>
													<td><span class="badge bg-success">Approved</span></td>
												</tr>
												<tr data-index="3">
													<td><a href="#">#2644</a></td>
													<td>Angus Grady</td>
													<td><a href="#" class="text-primar">Ut voluptatem
															id earum et</a></td>
													<td>$67</td>
													<td><span class="badge bg-danger">Rejected</span></td>
												</tr>
												<tr data-index="4">
													<td><a href="#">#2644</a></td>
													<td>Raheem Lehner</td>
													<td><a href="#" class="text-primary">Sunt
															similique distinctio</a></td>
													<td>$165</td>
													<td><span class="badge bg-success">Approved</span></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="datatable-bottom">
										<div class="datatable-info">Showing 1 to 5 of 5 entries</div>
										<nav class="datatable-pagination">
											<ul class="datatable-pagination-list"></ul>
										</nav>
									</div>
								</div>

							</div>

						</div>
					</div>
					<!-- End Recent Sales -->

					<!-- Top Selling -->
					<div class="col-12">
						<div class="card top-selling overflow-auto">

							<div class="filter">
								<a class="icon" href="#" data-bs-toggle="dropdown"><i
									class="bi bi-three-dots"></i></a>
								<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
									<li class="dropdown-header text-start">
										<h6>Filter</h6>
									</li>

									<li><a class="dropdown-item" href="#">Today</a></li>
									<li><a class="dropdown-item" href="#">This Month</a></li>
									<li><a class="dropdown-item" href="#">This Year</a></li>
								</ul>
							</div>

							<div class="card-body pb-0">
								<h5 class="card-title">
									Top Selling <span>| Today</span>
								</h5>

								<table class="table table-borderless">
									<thead>
										<tr>
											<th scope="col">Preview</th>
											<th scope="col">Product</th>
											<th scope="col">Price</th>
											<th scope="col">Sold</th>
											<th scope="col">Revenue</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row"><a href="#"><img
													src="assets/img/product-1.jpg" alt=""></a></th>
											<td><a href="#" class="text-primary fw-bold">Ut
													inventore ipsa voluptas nulla</a></td>
											<td>$64</td>
											<td class="fw-bold">124</td>
											<td>$5,828</td>
										</tr>
										<tr>
											<th scope="row"><a href="#"><img
													src="assets/img/product-2.jpg" alt=""></a></th>
											<td><a href="#" class="text-primary fw-bold">Exercitationem
													similique doloremque</a></td>
											<td>$46</td>
											<td class="fw-bold">98</td>
											<td>$4,508</td>
										</tr>
										<tr>
											<th scope="row"><a href="#"><img
													src="assets/img/product-3.jpg" alt=""></a></th>
											<td><a href="#" class="text-primary fw-bold">Doloribus
													nisi exercitationem</a></td>
											<td>$59</td>
											<td class="fw-bold">74</td>
											<td>$4,366</td>
										</tr>
										<tr>
											<th scope="row"><a href="#"><img
													src="assets/img/product-4.jpg" alt=""></a></th>
											<td><a href="#" class="text-primary fw-bold">Officiis
													quaerat sint rerum error</a></td>
											<td>$32</td>
											<td class="fw-bold">63</td>
											<td>$2,016</td>
										</tr>
										<tr>
											<th scope="row"><a href="#"><img
													src="assets/img/product-5.jpg" alt=""></a></th>
											<td><a href="#" class="text-primary fw-bold">Sit
													unde debitis delectus repellendus</a></td>
											<td>$79</td>
											<td class="fw-bold">41</td>
											<td>$3,239</td>
										</tr>
									</tbody>
								</table>

							</div>

						</div>
					</div>
					<!-- End Top Selling -->

				</div>
			</div>
			<!-- End Left side columns -->

			<!-- Right side columns -->
			<!-- End Right side columns -->

		</div>
	</section>

	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>