<%@page import="com.google.bean.OrderDetailBean"%>
<%@page import="com.google.bean.OrderBean"%>
<%@page import="com.google.bean.CartBean"%>
<%@page import="com.google.bean.ProductImageBean"%>
<%@page import="com.google.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My Cart</title>

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link rel="stylesheet" href="assets/users/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="assets/users/css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="assets/users/css/owl.carousel.css">
<link rel="stylesheet" href="assets/users/style.css">
<link rel="stylesheet" href="assets/users/css/responsive.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="user-menu">
						<ul>
							<li><a href="login"><i class="fa fa-user"></i> My
									Account</a></li>
							<li><a href="login"><i class="fa fa-heart"></i> Wishlist</a></li>
							<li><a href="login"><i class="fa fa-user"></i> My Cart</a></li>
							<li><a href="login"><i class="fa fa-user"></i> Checkout</a></li>
							<li><a href="login"><i class="fa fa-user"></i> Login</a></li>
						</ul>
					</div>
				</div>


			</div>
		</div>
	</div>
	<!-- End header area -->

	<div class="site-branding-area">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="logo">
						<h1>
							<a href="./"><img src="assets/users/img/logo.png"></a>
						</h1>
					</div>
				</div>


			</div>
		</div>
	</div>
	<!-- End site branding area -->


	<jsp:include page="BuyerMenu.jsp"></jsp:include>




	<%
		List<OrderDetailBean> myorderdetail = (List<OrderDetailBean>) request.getAttribute("myorderdetail");
		OrderBean order = (OrderBean) request.getAttribute("order");
	%>
	<div class="product-big-title-area">

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>
							Your Order Detail For
							<%=order.getOrderId()%>
						</h2>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- End main content area -->



	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single-sidebar">
						<h2 class="sidebar-title">Search Products</h2>
						<form action="#">
							<input type="text" placeholder="Search products..."> <input
								type="submit" value="Search">
						</form>
					</div>

					<div class="single-sidebar">
						<h2 class="sidebar-title">Products</h2>
						<div class="thubmnail-recent">
							<img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
							<h2>
								<a href="single-product.html">Sony Smart TV - 2015</a>
							</h2>
							<div class="product-sidebar-price">
								<ins>$700.00</ins>
								<del>$800.00</del>
							</div>
						</div>
						<div class="thubmnail-recent">
							<img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
							<h2>
								<a href="single-product.html">Sony Smart TV - 2015</a>
							</h2>
							<div class="product-sidebar-price">
								<ins>$700.00</ins>
								<del>$800.00</del>
							</div>
						</div>
						<div class="thubmnail-recent">
							<img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
							<h2>
								<a href="single-product.html">Sony Smart TV - 2015</a>
							</h2>
							<div class="product-sidebar-price">
								<ins>$700.00</ins>
								<del>$800.00</del>
							</div>
						</div>
						<div class="thubmnail-recent">
							<img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
							<h2>
								<a href="single-product.html">Sony Smart TV - 2015</a>
							</h2>
							<div class="product-sidebar-price">
								<ins>$700.00</ins>
								<del>$800.00</del>
							</div>
						</div>
					</div>

					<div class="single-sidebar">
						<h2 class="sidebar-title">Recent Posts</h2>
						<ul>
							<li><a href="#">Sony Smart TV - 2015</a></li>
							<li><a href="#">Sony Smart TV - 2015</a></li>
							<li><a href="#">Sony Smart TV - 2015</a></li>
							<li><a href="#">Sony Smart TV - 2015</a></li>
							<li><a href="#">Sony Smart TV - 2015</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-8">
					<div class="product-content-right">
						<div class="woocommerce">
							<form method="post" action="#">
								<table cellspacing="0" class="shop_table cart">
									<thead>
										<tr>
											<th class="product-name">Order Num</th>
											<th class="product-price">Date</th>
											<th>Product</th>
											<th class="product-quantity">Price</th>
											<th class="product-quantity">Qty</th>
											<th class="product-quantity">Total Price</th>
											<th class="product-subtotal">Status</th>

										</tr>
									</thead>
									<tbody>

										<%
											int totalQty = 0;
											Float totalPrice = 0.0f;
											for (OrderDetailBean c : myorderdetail) {
												totalPrice = totalPrice + (c.getPrice()*c.getQty());
												%>
										<tr class="cart_item">

											<td class="product-thumbnail"><%=c.getOrderId()%></td>

											<td class="product-name"><%=order.getOrderDate() %></td>
											<td><%=c.getName() %></td>
											<td class="product-price"><span class="amount"><%=c.getPrice()%></span>
											</td>
											<td><%=c.getQty() %></td>


											<td><%=c.getQty()*c.getPrice() %></td>


											<td class="product-quantity"><%=c.getStatusName().toUpperCase()%></td>

										</tr>
										<%} %>
									</tbody>
								</table>
							</form>

							<div class="cart-collaterals">
								<div class="cart_totals ">
									<h2>Cart Totals</h2>
									<table cellspacing="0">
										<tbody>
											<tr class="cart-subtotal">
												<th>Cart Subtotal</th>
												<td><span class="amount"><%=totalPrice %></span></td>
											</tr>

											<tr class="shipping">
												<th>Shipping and Handling</th>
												<td>Free Shipping</td>
											</tr>

											<tr class="order-total">
												<th>Order Total</th>
												<td><strong><span class="amount"><%=totalPrice %></span></strong>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- End brands area -->

	<!-- End product widget area -->

	<div class="footer-top-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="footer-about-us">
						<h2>
							e<span>com</span>
						</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Perferendis sunt id doloribus vero quam laborum quas alias
							dolores blanditiis iusto consequatur, modi aliquid eveniet
							eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit,
							debitis, quisquam. Laborum commodi veritatis magni at?</p>
						<div class="footer-social">
							<a href="#" target="_blank"><i class="fa fa-facebook"></i></a> <a
								href="#" target="_blank"><i class="fa fa-twitter"></i></a> <a
								href="#" target="_blank"><i class="fa fa-youtube"></i></a> <a
								href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">User Navigation</h2>
						<ul>
							<li><a href="#">My account</a></li>
							<li><a href="#">Order history</a></li>
							<li><a href="#">Wishlist</a></li>
							<li><a href="#">Vendor contact</a></li>
							<li><a href="#">Front page</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">Categories</h2>
						<ul>
							<li><a href="#">Mobile Phone</a></li>
							<li><a href="#">Home accesseries</a></li>
							<li><a href="#">LED TV</a></li>
							<li><a href="#">Computer</a></li>
							<li><a href="#">Gadets</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-newsletter">
						<h2 class="footer-wid-title">Newsletter</h2>
						<p>Sign up to our newsletter and get exclusive deals you wont
							find anywhere else straight to your inbox!</p>
						<div class="newsletter-form">
							<form action="#">
								<input type="email" placeholder="Type your email"> <input
									type="submit" value="Subscribe">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer top area -->

	<div class="footer-bottom-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="copyright">
						<p>
							&copy; 2015 uCommerce. All Rights Reserved. <a
								href="http://www.freshdesignweb.com" target="_blank">freshDesignweb.com</a>
						</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="footer-card-icon">
						<i class="fa fa-cc-discover"></i> <i class="fa fa-cc-mastercard"></i>
						<i class="fa fa-cc-paypal"></i> <i class="fa fa-cc-visa"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer bottom area -->

	<!-- Latest jQuery form server -->
	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="assets/users/js/owl.carousel.min.js"></script>
	<script src="assets/users/js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="assets/users/js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="assets/users/js/main.js"></script>

	<!-- Slider -->
	<script type="text/javascript" src="assets/users/js/bxslider.min.js"></script>
	<script type="text/javascript" src="assets/users/js/script.slider.js"></script>
</body>
</html>