<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">
<!-- Flexslider  -->
<link rel="stylesheet" href="css/flexslider.css">

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>

<!-- ajax -->
<title>Product Lists</title>

<style type="text/css">
a {
	text-decoration: none;
	cursor: pointer;
}

@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100)
	;

body {
	font-family: "Roboto", helvetica, arial, sans-serif;
	font-size: 16px;
}

div.table-title {
	display: block;
	margin: auto;
	max-width: 600px;
	padding: 5px;
	width: 100%;
}

/*** Table Styles **/
.table-fill {
	background: white;
	border-radius: 50px;
	border-collapse: collapse;
	margin: auto;
	max-width: 1200px;
	padding: 5px;
	width: 100%;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
	animation: float 5s infinite;
}

th {
	color: #black;
	background: #ffd6b3;
	border-bottom: 4px solid #9ea7af;
	border-right: 1px solid #343a45;
	font-size: 23px;
	font-weight: 500;
	padding: 10px;
	text-align: center;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	vertical-align: middle;
}

th:first-child {
	border-top-left-radius: 10px;
}

th:last-child {
	border-top-right-radius: 10px;
	border-right: none;
}

tr {
	border-top: 1px solid #C1C3D1;
	border-bottom-: 1px solid #C1C3D1;
	color: #000;
	font-size: 16px;
	font-weight: normal;
	text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}

tr:hover td {
	background: #efffb5;
	color: #000;
	border-top: 1px solid #22262e;
}

tr:first-child {
	border-top: none;
}

tr:last-child {
	border-bottom: none;
}

tr:nth-child(odd) td {
	background: #e3f6fa;
}

tr:nth-child(odd):hover td {
	background: #efffb5;
	color: #000;
}

tr:last-child td:first-child {
	border-bottom-left-radius: 10px;
}

tr:last-child td:last-child {
	border-bottom-right-radius: 10px;
}

td {
	background: #FFFFFF;
	padding: 20px;
	text-align: center;
	vertical-align: middle;
	font-weight: 300;
	font-size: 18px;
	text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
	border-right: 1px solid #C1C3D1;
}

td:last-child {
	border-right: 0px;
}
</style>


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
					<li><a href="listItem.jsp">Product Lists</a></li>
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

					<li><a href="insertItem.jsp">Add a Product</a></li>
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

	<table class="table-fill">
		<thead>
			<tr>
				<th>Product No.</th>
				<th>Type</th>
				<th>Name</th>
				<th>Price</th>
				<th>Details</th>
				<th>Image</th>
			</tr>
		</thead>

		<tbody id="tbody">
		</tbody>
	</table>
	<br>
	<div style="text-align: center">
		<button type="button" onclick="goAdminPage()" style="background-color: white; color: black; padding: 7px; border: 3px solid #ffcfba; border-radius: 10px">Administrator Page</button>
		<button type="button" onclick="goModifyItem()" style="background-color: white; color: black; padding: 7px; border: 3px solid #ffcfba; border-radius: 10px">Modification Page</button>
	</div>
	<br>

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