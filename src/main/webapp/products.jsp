<%@page import="javax.tools.DocumentationTool.Location"%>
<%@page import="java.io.Console"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->

<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">
<!-- Flexslider  -->
<link rel="stylesheet" href="css/flexslider.css">

<link rel="stylesheet" href="css/style.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
<script src="js/respond.min.js"></script>
<![endif]-->

<!-- login.register script -->


<script type="text/javascript" src="./js/products.js"></script>
<script type="text/javascript" src="./js/admin.js"></script>
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/admin.js"></script>
<script>
		window.onload = function() {
			productInfo()
	
		}
</script>

<style type="text/css">
a {
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>

<body>

	<header id="fh5co-header" role="banner">
		<div class="container text-center">
			<div id="fh5co-logo">
				<a href="index.jsp"><img src="images/logo.png" alt="logo"></a>
			</div>
			<nav>
				<hr>
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						id="dropdownMenuButton1" style="" data-bs-toggle="dropdown"
						aria-expanded="false">Category</a>
						<ul class="dropdown-menu">
							<li><a href="./category/a.jsp">상의</a></li>
							<li><a href="./category/b.jsp">하의</a></li>
							<li><a href="./category/c.jsp">아우터</a></li>
							<li><a href="./category/d.jsp">신발</a></li>
							<li><a href="./category/e.jsp">액세서리</a></li>
						</ul></li>
					<li><a href="contact.jsp">About</a></li>
					<%
						String loginCheck = (String) session.getAttribute("login");
						if(loginCheck != null) {
					%>

					<%
						} else {
					 %>
					<li><a href="loginForm.jsp">Login/Sign Up</a></li>

					<%
						}
						String idCheck = (String) session.getAttribute("id");
						if(idCheck != null) {
							if(idCheck.equals("admin")) {
					%>

					<li><a href="listItem.jsp">Product Lists</a></li>
					<li><a href="insertItem.jsp">Add a Product</a></li>
					<%
							} else {}
						} else {}
					%>
				</ul>
			</nav>
			<hr>
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
							<li data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img
									src="http://earlyadopter.godohosting.com/goods_earlyadopter_godo_co_kr/162/1578368250170m0.jpg?cache_ver=202012274"
									class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img
									src="http://earlyadopter.godohosting.com/goods_earlyadopter_godo_co_kr/162/1578368250813m2.jpg?cache_ver=202012274"
									class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img
									src="http://earlyadopter.godohosting.com/goods_earlyadopter_godo_co_kr/162/1578368250328m4.jpg?cache_ver=202012274"
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
							<h5 class="card-title">K70 RGB MK.2 BROWN 기계식 게이밍 키보드 갈축</h5>
							<h5 class="card-title pt-3 pb-3 border-top">219,000원</h5>
							<p class="card-text border-top pt-3">
								<span class="badge bg-dark">전자제품</span> <span
									class="badge bg-dark">컴퓨터</span> <span class="badge bg-dark">악세사리</span>
							</p>
							<p class="card-text pb-3">배송비 2,500원 | 도서산간(제주도) 배송비 추가
								5,000원 | 택배배송 | 5일 이내 출고 (주말,공휴일 제외)</p>
							<p class="card-text border-top pb-3">
							<div class="row">
								<div class="col-auto">
									<label class="col-form-label">구매수량</label>
								</div>
								<div class="col-auto">
									<div class="input-group">
										<span class="input-group-text">-</span> <input type="text"
											class="form-control" style="width: 40px;" value="1">
										<span class="input-group-text">+</span>
									</div>
								</div>
							</div>
							</p>
							<div class="row pt-3 pb-3 border-top">
								<div class="col-6">
									<h3>총 상품 금액</h3>
								</div>
								<div class="col-6" style="text-align: right;">
									<h3>219,000</h3>
								</div>
							</div>
							<div class="d-flex justify-content-between align-items-center">
								<div class="col-6 d-grid p-1">
									<button type="button" class="btn btn-lg btn-dark">장바구니
										담기</button>
								</div>
								<div class="col-6 d-grid p-1">
									<button type="button" class="btn btn-lg btn-danger">주문하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<img
						src="http://earlyadopter.godohosting.com/goods_earlyadopter_godo_co_kr/162/0ac90345448ccd5c.jpg"
						class="img-fluid" />
				</div>
			</div>
		</div>
	</main>


	<footer id="fh5co-footer" role="contentinfo">
		<div class="container-fluid">
			<div class="footer-content">
				<div class="copyright">
					<small>&copy; 2022 AAC. All Rights Reserved. <br>Project
						by 3조. <br>전화번호: 02-1234-5678 | 주소: 서울특별시 종로구 삼일대로 385-1
					</small>
				</div>
			</div>
		</div>
	</footer>
	<!-- END #fh5co-footer -->



	<!-- jQuery -->
	<script src="../js/jquery.min.js"></script>
	<!-- Bootstrap -->

	<!-- masonry -->
	<script src="../js/jquery.masonry.min.js"></script>
	<!-- MAIN JS -->
	<script src="../js/main.js"></script>

</body>
</html>











>
