<%@page import="javax.tools.DocumentationTool.Location"%>
<%@page import="java.io.Console"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/admin.js"></script>
<script>
	window.onload = function() {
		var flag = location.search.split("=")
		if (flag[0] === "?fileName") {
			$(document.forms[0]).hide()
			$("#imgtr").show()
			$("#itemImg").val(flag[1])
		}

	}
</script>

<title>Add a Product</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
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

<style type="text/css">
a {
	text-decoration: none;
	cursor: pointer;
}
</style>

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
		<script src="js/respond.min.js"></script>
		<![endif]-->

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
					<li class="dropdown"><a class="dropdown-toggle" id="dropdownMenuButton1" style="" data-bs-toggle="dropdown" aria-expanded="false">Category</a>
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
					<li><a href="insertItem.jsp"><b>Add a Product</b></a></li>
					<li><a onclick="location.href='?logout=yes'">Log Out</a></li>
					<%
					} else if (!idCheck.equals("admin")) {
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
	<div class="panel-body" align="center">
		<div class="row">
			<div class="col-lg-12">
				<h2>Add a Product</h2>
				<!-- 파일업로드를 위해 추가하는 타입 -->
				<form action="./insertItem" method="post" enctype="multipart/form-data">

					<table align="center">
						<tr id="imgtr" style="display: none">
							<td>Image Name</td>
							<td>
								<input type="text" name="itemImg" id="itemImg" readonly>
							</td>
						</tr>
						<tr>
							<td>Type</td>
							<td>
								<input name="itemType" id="itemType">
							</td>
						</tr>
						<tr>
							<td>Product Name</td>
							<td>
								<input name="itemName" id="itemName">
							</td>
						</tr>
						<tr>
							<td>Price</td>
							<td>
								<input name="itemPrice" id="itemPrice">
							</td>
						</tr>
						<tr>
							<td>Details</td>
							<td>
								<textarea rows="5" cols="60" name="description" id="itemContent"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="file" name="filename" />
								<br />
						</tr>
					</table>
					<input class="btn btn-primary" type="submit" value="Add Product" style="background-color: white; color: black; padding: 7px; border: 3px solid #ffcfba; border-radius: 10px">
				</form>
				<br>


			</div>
		</div>
	</div>

	<footer id="fh5co-footer" role="contentinfo">
		<div class="container-fluid">
			<div class="footer-content">
				<div class="copyright">
					<small>&copy; 2022 AAC. All Rights Reserved. <br>Project by 3조. <br>전화번호: 02-1234-5678 | 주소: 서울특별시 종로구 삼일대로 385-1.
					</small>
				</div>
			</div>
		</div>
	</footer>
	<!-- END #fh5co-footer -->
</body>
</html>


