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
<title>장바구니 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />



<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700"
	rel="stylesheet">


<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/icomoon.css">



<link rel="stylesheet" href="css/superfish.css">
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


<script src="js/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/shoppingList.js"></script>
<script>
	window.onload = function() {
		shoppingItem()

	}
</script>

<style type="text/css">
a {
	text-decoration: none;
	cursor: pointer;
}

table {
	width: 76%;
	margin: 0 auto;
	border: solid 1px black;
	text-align: center;
	margin: 0 auto;
}

th, td {
	border: solid 1px black;
}

.img_class img {
	top: 0;
	left: 0;
	width: 20%;
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
					<li class="dropdown">
						<a class="dropdown-toggle"
						id="dropdownMenuButton1" style="" data-bs-toggle="dropdown"
						aria-expanded="false">Category</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="../category/a.jsp">상의</a></li>
							<li><a class="dropdown-item" href="../category/b.jsp">하의</a></li>
							<li><a class="dropdown-item" href="../category/c.jsp">아우터</a></li>
							<li><a class="dropdown-item" href="../category/d.jsp">신발</a></li>
							<li><a class="dropdown-item" href="../category/e.jsp">액세서리</a></li>
						</ul></li>
					<li><a href="contact.jsp">About</a></li>
					<%String loginCheck = (String) session.getAttribute("login");
						if (loginCheck != null) {
							
					
							
						}else {
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
							<li><a href="showListItem.jsp">Show Select Lists</a></li>
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
	</header>
	
	
	
	
	
	
	
	
	
	
	<table>
		<colgroup>
			<col width="6%">
			<col width="6%">
			<col width="14%">
			<col width="8%">
			<col width="14%">
			<col width="80%">
			<col width="20%">
		</colgroup>
		<thead>
			<tr>
				<th colspan="7" id="name">장바구니</th>
			</tr>			
			<tr>
				<th>상품번호</th>
				<th>상품종류</th>
				<th>상품명</th>
				<th>상품가격</th>
				<th>상품설명</th>
				<th>상품이미지</th>
				<th>상품수량</th>
			</tr>
		</thead>

		<tbody id="tbody">
		</tbody>
	</table>
	
	<br>
	<div style="text-align: center">
		<button type="button">구매하기</button>
		
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