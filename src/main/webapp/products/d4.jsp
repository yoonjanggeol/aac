<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Welcome to AAC!!</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />


<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="../favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="../css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="../css/icomoon.css">
<!-- Bootstrap  -->

<!-- Superfish -->
<link rel="stylesheet" href="../css/superfish.css">
<!-- Flexslider  -->
<link rel="stylesheet" href="../css/flexslider.css">

<link rel="stylesheet" href="../css/style.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">


<!-- Modernizr JS -->
<script src="../js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
		<script src="js/respond.min.js"></script>
		<![endif]-->

<style type="text/css">
a {
	text-decoration: none;
	cursor: pointer;
}
</style>

<script>
	var price=24900;
	
	window.onload = function(){
		 document.getElementById("price").innerHTML = priceToString(price)+"원";
	}
	
	function Calculate() {
	    var quantity = parseInt(document.getElementById("quantity").value);
		var total = price * quantity;
	    document.getElementById("total").innerHTML = "<h3>"+priceToString(total)+"원</h3>";
	}
	
	function priceToString(a) {
	    return a.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
</script>
</head>
<body>

	<header id="fh5co-header" role="banner">
		<div class="container text-center">
			<div id="fh5co-logo">
				<a href="../index.jsp"><img src="../images/logo.png" alt="logo"></a>
			</div>
			<nav>
				<hr>
				<ul>
					<li><a href="../index.jsp">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						id="dropdownMenuButton1" style="" data-bs-toggle="dropdown"
						aria-expanded="false">Category</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="../category/a.jsp">상의</a></li>
							<li><a class="dropdown-item" href="../category/b.jsp">하의</a></li>
							<li><a class="dropdown-item" href="../category/c.jsp">아우터</a></li>
							<li><a class="dropdown-item" href="../category/d.jsp">신발</a></li>
							<li><a class="dropdown-item" href="../category/e.jsp">액세서리</a></li>
						</ul></li>
					<li><a href="../contact.jsp">About</a></li>
					<%
								String loginCheck = (String) session.getAttribute("login");
								if(loginCheck != null) {
							%>

					<%
								} else {
							 %>
					<li><a href="../loginForm.jsp">Login/Sign Up</a></li>

					<%
								}
								String idCheck = (String) session.getAttribute("id");
								if(idCheck != null) {
									if(idCheck.equals("admin")) {
							%>

					<li><a href="../listItem.jsp">Product Lists</a></li>
					<li><a href="../insertItem.jsp">Add a Product</a></li>
					<li><a onclick="location.href='?logout=yes'">Log Out</a></li>
					<%
					} else if(!idCheck.equals("admin")) {
						%>
							<li><a href="../showListItem.jsp">Cart</a></li>
							<li><a onclick="location.href='?logout=yes'">Log Out</a></li>
						<%
					}
					} else {
					}
					%>

				</ul>
			</nav>
			<hr>
		</div>
		<div style="display: none;">
			<%@ include file="../loginFormSmallFolder.jsp"%>
	</div>
	</header>
	<!-- END #fh5co-header -->

	<!-- Main -->
	<main class="mt-3">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div id="carouselExampleIndicators"
						class="carousel carousel-dark slide" data-bs-ride="carousel">
						<ol class="carousel-indicators">
							<li data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="0" class="active"></li>
							<li data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="1"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img
									src="../images/d4.jpg"
									class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img
									src="../images/d4_1.jpg"
									class="d-block w-100" alt="...">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-bs-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="visually-hidden">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button"
							data-bs-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="visually-hidden">Next</span>
						</a>
					</div>
				</div>
				<div class="col-md-7">
					<div class="card shadow-sm">
						<div class="card-body">
							<h5 class="card-title">LOVE 레터링 스니커즈</h5>
							<h5 class="card-title pt-3 pb-3 border-top" id="price">24,900원</h5>
							<p class="card-text border-top pt-3">
								<span class="badge bg-dark">SHOES</span>
							</p>
							<p class="card-text pb-3">유니크한 디테일이 매력적인 스니커즈입니다. LOVE 레터링으로 포인트가 있습니다.</p>
							<p class="card-text border-top pb-3">
							<div class="row">
								<div class="col-auto">
									<label class="col-form-label">Quantity</label>
								</div>
								<div class="col-auto">
									<div class="input-group">
										<input type="number" name="quantity" id="quantity" tabindex="1"
											class="form-control" placeholder="0" value="1" min="1"
											max="100" onfocusout="Calculate()">
									</div>
								</div>
							</div>
							</p>
							<div class="row pt-3 pb-3 border-top">
								<div class="col-6">
									<h3>Total</h3>
								</div>
								<div class="col-6" style="text-align: right;" id="total">
									<h3>24,900원</h3>
								</div>
							</div>
							<div class="d-flex justify-content-between align-items-center">
								<div class="col-12 d-grid p-1">
									<button type="button" class="btn btn-lg btn-dark">Add to Cart</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
			</div>
		</div>
	</main>


	<!-- footer -->
	<footer id="fh5co-footer" role="contentinfo">
		<div class="container-fluid">
			<div class="footer-content">
				<div class="copyright">
					<small>&copy; 2022 AAC. All Rights Reserved. <br>Project
						by 3조. <br>전화번호: 02-1234-5678 | 주소: 서울특별시 종로구 삼일대로 385-1.
					</small>
				</div>
			</div>
		</div>
	</footer>
	<!-- END #fh5co-footer -->

	<!-- jQuery -->
	<script src="../js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- masonry -->
	<script src="../js/jquery.masonry.min.js"></script>
	<!-- MAIN JS -->
	<script src="../js/main.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>

