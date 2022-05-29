<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품수정</title>
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/modify.js"></script>

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
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>

<style type="text/css">
a {
	text-decoration: none;
	cursor: pointer;
}
</style>

</head>

<script>
	window.onload = function() {
		$("#modifyDIv").hide()
	}
</script>
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
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="./category/a.jsp">상의</a></li>
							<li><a class="dropdown-item" href="./category/b.jsp">하의</a></li>
							<li><a class="dropdown-item" href="./category/c.jsp">아우터</a></li>
							<li><a class="dropdown-item" href="./category/d.jsp">신발</a></li>
							<li><a class="dropdown-item" href="./category/e.jsp">액세서리</a></li>
						</ul></li>

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

	<!-- 상품 조회 -->
	<div style="text-align: center">
		Product No : <input type="text" id="searchItemNum" size="20">
	</div>
	<br>
	<div style="text-align: center">
		<button type="button" onclick="goSearchItem()" style=" background-color: white; color: black; padding: 7px; border: 3px solid #ffcfba; border-radius: 15px">Search</button>
	</div>
	<br>
	<br>
	<div id="modifyDIv">
		<table style="margin: 0 auto">
			<tr>
				<td>Product No.</td>
				<td><input type="text" id="itemNum" readonly
					style="background-color: #c8c8c8;"></td>
			</tr>
			<tr>
				<td>Type</td>
				<td><input type="text" id="itemType"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" id="itemName"></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" id="itemPrice"></td>
			</tr>
			<tr>
				<td>Details</td>
				<td><input type="text" id="itemContent"></td>
			</tr>
		</table>
		<br>
		<div style="text-align: center">
			<button type="button" onclick="doModify()" style=" background-color: white; color: black; padding: 10px; border: 5px solid #ffcfba;">상품수정</button>
			<button type="button" onclick="doDelete()" style=" background-color: white; color: black; padding: 10px; border: 5px solid #ffcfba;">상품삭제</button>
		</div>
	</div>

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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<!-- masonry -->
	<script src="js/jquery.masonry.min.js"></script>
	<!-- MAIN JS -->
	<script src="js/main.js"></script>
</body>
</html>