<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
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

<link rel="stylesheet" href="css/underline.css">
<!-- 외부파일 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
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
					<li><a href="index.jsp"><b>Home</b></a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						id="dropdownMenuButton1" style="" data-bs-toggle="dropdown"
						aria-expanded="false">Category</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="category/a.jsp">상의</a></li>
							<li><a class="dropdown-item" href="category/b.jsp">하의</a></li>
							<li><a class="dropdown-item" href="category/c.jsp">아우터</a></li>
							<li><a class="dropdown-item" href="category/d.jsp">신발</a></li>
							<li><a class="dropdown-item" href="category/e.jsp">액세서리</a></li>
						</ul></li>

					<li><a href="contact.jsp">About</a></li>
					<%
					String loginCheck = (String) session.getAttribute("login");
					if (loginCheck != null) {
					
					} else {
					%>
					<li><a href="loginForm.jsp">Login/Sign Up</a></li>

					<%
					}
					String idCheck = (String) session.getAttribute("id");
					if (idCheck != null) {
					if (idCheck.equals("admin")) {
					%>

					<li><a href="listItem.jsp">Product Lists</a></li>
					<li><a href="insertItem.jsp">Add a Product</a></li>
					<li><a onclick="location.href='?logout=yes'">Log Out</a></li>
					<%
					} else if(!idCheck.equals("admin")) {
						%>
							<li><a href="showListItem.jsp">Cart</a></li>
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
		<%@ include file="./loginFormSmall.jsp"%>
	</div>
	</header>
	<!-- END #fh5co-header -->

	<div class="container">
		<div class="row">
			<div class="col-md-12">
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
							<img src="images/bbb1.PNG" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="images/bbb2.PNG" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="images/bbb3.PNG" class="d-block w-100" alt="...">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-bs-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="visually-hidden">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-bs-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="visually-hidden">Next</span>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid pt70 pb70">
		<div id="fh5co-projects-feed"
			class="fh5co-projects-feed clearfix masonry">
			<div class="fh5co-project masonry-brick">
				<a href="products/a1.jsp"> <img src="images/a1.jpg"
					alt="겜빗 스타디움 자켓" width="300px">
					<h2>겜빗 스타디움 자켓</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/a2.jsp"> <img src="images/a2.jpg"
					alt="톰 후드 자켓" width="300px">
					<h2>톰 후드 자켓</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/a3.jsp"> <img src="images/a3.jpg"
					alt="울 트렌치 코트" width="300px">
					<h2>울 트렌치 코트</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/a4.jsp"> <img src="images/a4.jpg"
					alt="오버핏 무스탕 자켓" width="300px">
					<h2>오버핏 무스탕 자켓</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/b1.jsp"> <img src="images/b1.jpg"
					alt="헤비 오버핏 니트" width="300px">
					<h2>헤비 오버핏 니트</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/b2.jsp"> <img src="images/b2.jpg" alt="퍼스텝 니트"
					width="300px">
					<h2>퍼스텝 니트</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/b3.jsp"> <img src="images/b3.jpg" alt="퍼스텝 니트"
					width="300px">
					<h2>퍼스텝 니트</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/b4.jsp"> <img src="images/b4.jpg"
					alt="스티치 세미오버핏 자켓 (챠콜)" width="300px">
					<h2>스티치 세미오버핏 자켓 (챠콜)</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/c1.jsp"> <img src="images/c1.jpg"
					alt="밴딩 쿨 크롭팬츠" width="300px">
					<h2>밴딩 쿨 크롭팬츠</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/c2.jsp"> <img src="images/c2.jpg"
					alt="히든 밴딩 슬랙스" width="300px">
					<h2>히든 밴딩 슬랙스</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/c3.jsp"> <img src="images/c3.jpg"
					alt="테이퍼드 슬랙스" width="300px">
					<h2>테이퍼드 슬랙스</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/c4.jsp"> <img src="images/c4.jpg"
					alt="딥 컬러 와이드 슬랙스" width="300px">
					<h2>딥 컬러 와이드 슬랙스</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/d1.jsp"> <img src="images/d1.jpg"
					alt="4CM 키높이 팀버스 하이 워커" width="300px">
					<h2>4CM 키높이 팀버스 하이 워커</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/d2.jsp"> <img src="images/d2.jpg"
					alt="허니 더비 슈즈" width="300px">
					<h2>허니 더비 슈즈</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/d3.jsp"> <img src="images/d3.jpg"
					alt="뮬 스니커즈" width="300px">
					<h2>뮬 스니커즈</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/d4.jsp"> <img src="images/d4.jpg"
					alt="LOVE 레터링 스니커즈" width="300px">
					<h2>LOVE 레터링 스니커즈</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/e1.jsp"> <img src="images/e1.jpg"
					alt="이태리 메탈 안경" width="300px">
					<h2>이태리 메탈 안경</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/e2.jsp"> <img src="images/e2.jpg"
					alt="플러피 파일럿 모자" width="300px">
					<h2>플러피 파일럿 모자</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/e3.jsp"> <img src="images/e3.jpg"
					alt="리미 체크머플러" width="300px">
					<h2>리미 체크머플러</h2>
				</a>
			</div>
			<div class="fh5co-project masonry-brick">
				<a href="products/e4.jsp"> <img src="images/e4.jpg"
					alt="링키 투웨이백" width="300px">
					<h2>링키 투웨이백</h2>
				</a>
			</div>
		</div>
		<!--END .fh5co-projects-feed-->
	</div>
	<!-- END .container-fluid -->

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
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->

	<!-- masonry -->
	<script src="js/jquery.masonry.min.js"></script>
	<!-- MAIN JS -->
	<script src="js/main.js"></script>

</body>
</html>

