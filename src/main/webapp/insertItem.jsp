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
					
		<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
		<script type="text/javascript" src="./js/admin.js"></script>

		<title>Welcome to AAC!!</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
		<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
		<meta name="author" content="FREEHTML5.CO" />
	
	
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
		<link rel="stylesheet" href="css/bootstrap.css">
		<!-- Superfish -->
		<link rel="stylesheet" href="css/superfish.css">
		<!-- Flexslider  -->
		<link rel="stylesheet" href="css/flexslider.css">
	
		<link rel="stylesheet" href="css/style.css">
	
	
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
						<a href="index.jsp"><img src="images/logo.png" alt="Present Free HTML5 Bootstrap Template"></a>
					</div>
					<nav>
						<ul>
							<li><a href="home.jsp">Home</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">
									Category<span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li><a href="./category/a.jsp">상의</a></li>
									<li><a href="./category/b.jsp">하의</a></li>
									<li><a href="./category/c.jsp">아우터</a></li>
									<li><a href="./category/d.jsp">신발</a></li>
									<li><a href="./category/e.jsp">액세서리</a></li>
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
									<li><a href="insertItem.jsp">제품등록</a></li>
							<%
									} else {}
								} else {}
							%>
							
						</ul>
					</nav>
				</div>
				
				
			</header>
			<!-- END #fh5co-header -->

		<div class="panel-body">
			<div class="row">
				<div class="col-lg-12">
					<form id="login-form" action="?" method="post" role="form" style="display: block;">
							<h2>상품 등록</h2>
								<!-- 파일업로드를 위해 추가하는 타입 -->
						
								<table>
									<tr>
										<td>상품명</td>
										<td><input id="itemName"></td>
									</tr>
									<tr>
										<td>가격</td>
										<td><input id="itemPrice"></td>
									</tr>
									<tr>
										<td>상품설명</td>
										<td><textarea rows="5" cols="60" name="description"
												id="itemContent"></textarea></td>
									</tr>
									<tr>
										<td>상품이미지</td>
										<td><input type="file" name="file1"></td>
									</tr>
									<tr>
						
										<td colspan="2" align="center">
											<%-- <input type="button" value="등록"
						                    onclick="product_write()"> <!-- "등록" 버튼을 누르면 위쪽에 있는 스크립트문에서 product_write()함수가 호출되서 실행되 insert.do페이지로 자료를 전송한다. -->
						                    <input type="button" value="목록"
						                    onclick="location.href='${path}/admin/product/list.do'"> <!-- "목록 버튼을 누르면 list.do페이지로 이동" --> --%>
											<input class="btn btn-primary" type="button" value="상품등록"
											onclick="insertItem()" />
										</td>
									</tr>
								</table>
						
							
							
								</form>
							</div>
						</div>
					</div>
							
							

	<footer id="fh5co-footer" role="contentinfo">
			<div class="container-fluid">
				<div class="footer-content">
					<div class="copyright"><small>&copy; 2022 Present. All Rights Reserved. <br>Designed by <a href="http://freehtml5.co/">FreeHTML5.co</a> Images: <a href="http://graphicburger.com/">GraphicBurger</a></small></div>
					<!-- 
							<div class="social">
								<a href="#"><i class="icon-facebook3"></i></a>
								<a href="#"><i class="icon-instagram2"></i></a>
								<a href="#"><i class="icon-linkedin2"></i></a>
							</div>
						-->
				</div>
			</div>
		</footer>
		<!-- END #fh5co-footer -->
</body>
</html>


