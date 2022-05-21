<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/admin.js"></script>

<link rel="shortcut icon" href="favicon.ico">
	
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700" rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">
<!-- Flexslider  -->
<link rel="stylesheet" href="css/flexslider.css">

<link rel="stylesheet" href="css/style.css">


<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>

<!-- ajax -->
<title>상품목록 페이지</title>
</head>
<script>
	window.onload = function() {
		listItem()

	}
</script>
<body>

	<header id="fh5co-header" role="banner">
				<div class="container text-center">
					<div id="fh5co-logo">
						<a href="index.jsp"><img src="images/logo.png" alt="Present Free HTML5 Bootstrap Template"></a>
					</div>
					<nav>
					<hr>
						<ul>
							<li><a href="home.jsp">Home</a></li>
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
							
							<li><a href="contact.jsp">Contact</a></li>
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
									
								<li><a href="listItem.jsp">상품목록</a></li>
								<li><a href="insertItem.jsp">상품등록</a></li>
							<%
									} else {}
								} else {}
							%>
							
						</ul>
					</nav>
					<hr>
				</div>
				
				<div align="right">
					<%@ include file="./loginFormSmall.jsp" %>
				</div>
				
			</header>
		<!-- END #fh5co-header -->
		
	<table style="margin: 0 auto; border: solid 1px black">
		<thead>
			<tr>
				<th colspan="3">상품목록</th>
			</tr>
			<tr>
				<th>상품번호</th>
				<th>상품종류</th>
				<th>상품명</th>
				<th>상품가격</th>
				<th>상품설명</th>
			</tr>
		</thead>
		
		<tbody id="tbody">
		</tbody>
	</table>
	<br>
	<div style="text-align: center">
	<button type="button" onclick="goAdminPage()">관리자 페이지</button>
	<button type="button" onclick="goModifyItem()">상품수정 페이지</button>
	</div>
	
		<footer id="fh5co-footer" role="contentinfo">
			<div class="container-fluid">
				<div class="footer-content">
					<div class="copyright"><small>&copy; 2022 AAC. All Rights Reserved. <br>Project by 3조.</small></div>
					
				</div>
			</div>
		</footer>
		<!-- END #fh5co-footer -->
			
		<!-- jQuery -->
		<script src="js/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
		<!-- masonry -->
		<script src="js/jquery.masonry.min.js"></script>
		<!-- MAIN JS -->
		<script src="js/main.js"></script>
	
</body>
</html>