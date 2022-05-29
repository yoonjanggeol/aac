<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Present &mdash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700" rel="stylesheet">
	
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

	<!-- 외부파일 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	
	
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	
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
							<li class="dropdown">
								<a class="dropdown-toggle" id="dropdownMenuButton1" style="active" data-bs-toggle="dropdown" aria-expanded="false">
								    Category
								</a>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								  <li><a class="dropdown-item" href="../category/a.jsp">상의</a></li>
								  <li><a class="dropdown-item" href="../category/b.jsp">하의</a></li>
								  <li><a class="dropdown-item" href="../category/c.jsp">아우터</a></li>
								  <li><a class="dropdown-item" href="../category/d.jsp">신발</a></li>
								  <li><a class="dropdown-item" href="../category/e.jsp">액세서리</a></li>
								</ul>
							</li>
							<li><a href="contact.jsp">About</a></li>
							<%
								String loginCheck = (String) session.getAttribute("login");
								if(loginCheck != null) {
									
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

		<div class="page-content">
			<h1 class="mb0">AAC</h1>
			<div class="meta"><span>All About Clothes</div>
			<p>AAC는 All About Clothes의 줄임말로서 2022년 5월 16일부터 2022년 5월 27일(진우 생일ㅎ)까지 진행된 온라인 쇼핑몰 프로젝트입니다.</p>
			<p class="text-center"><img src="images/prototype.jpg" alt="prototype"></p>
			<ul class="square">
				<li>프론트 담당-명인, 진우</li>
				<li>백 담당-장걸, 윤지</li>
			</ul>
		</div>

		
		<!-- END .container-fluid -->

		<footer id="fh5co-footer" role="contentinfo">
			<div class="container-fluid">
				<div class="footer-content">
					<div class="copyright"><small>&copy; 2022 AAC. All Rights Reserved. <br>Project by 3조. <br>전화번호: 02-1234-5678 | 주소: 서울특별시 종로구 삼일대로 385-1.</small></div>
					
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

