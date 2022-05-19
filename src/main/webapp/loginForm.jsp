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
		
		<!-- login.register script -->
		<script type="text/javascript">
		
			$(function() {
			
			    $('#login-form-link').click(function(e) {
					$("#login-form").delay(100).fadeIn(100);
			 		$("#register-form").fadeOut(100);
					$('#register-form-link').removeClass('active');
					$(this).addClass('active');
					e.preventDefault();
				});
				$('#register-form-link').click(function(e) {
					$("#register-form").delay(100).fadeIn(100);
			 		$("#login-form").fadeOut(100);
					$('#login-form-link').removeClass('active');
					$(this).addClass('active');
					e.preventDefault();
				});
			
			});
		
		</script>
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
							
							<li class="active"><a href="loginForm.jsp">Login/Sign Up</a></li>
						</ul>
					</nav>
				</div>
				
				
			</header>
			<!-- END #fh5co-header -->

	<!-- 여기부터 -->
	<!-- bootstrap login form example 검색 후 적당한 폼의 html, css, js를 복사한 후 작업한다. -->
	<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link"><b>Login</b></a>
							</div>
							<div class="col-xs-6">
								<a href="registerForm.jsp" id="register-form-link">Sign Up</a>
							</div>
						</div>
						<hr>
					</div>
					
					
					
				
<%

	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	// DB연결에 필요한 변수 선언
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "tjoeunit";
	String upw = "0000";
	
	String power = "";
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	
	try{
		String sql = "select * from aacregister where userid = ? and userpassword = ?";
		
		// 드라이버 호출
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, password);
		
		// sql실행
		rs = pstmt.executeQuery();
		
		
		if (id != null && password != null) {
		
		out.println("<script>");	
			if (rs.next()) {
				//	id가 "admin" 이고 password가 "0000" 이면 관리자 로그인 처리를 한다.
				if (rs.getString("userid").equals("admin") && rs.getString("userpassword").equals("0000")) {
					// 로그인 처리
					session.setAttribute("id", rs.getString("userid"));
					session.setAttribute("name", rs.getString("username"));
					session.setAttribute("login", "yes"); // 로그인 정보
					power = "yes";
					response.sendRedirect("./index.jsp");
				}
				//	일반 사용자
				else {
					session.setAttribute("id", rs.getString("userid"));
					session.setAttribute("name", rs.getString("username"));
					session.setAttribute("login", "yes"); // 로그인 정보
					response.sendRedirect("./index.jsp");
				}
			} else {
				out.println("alert('아이디 또는 비밀번호가 올바르지 않습니다.');");	
			}
		out.println("</script>");
		} else {
			
		}
		
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("loginForm.jsp"); // 에러가 난 경우도 리다이렉트
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
	//	로그아웃 버튼이 클릭되면 넘어오는 데이터(logout)를 받는다.
		String logout = request.getParameter("logout");
	
	//	로그아웃 정보가 넘어왔으면 로그아웃 처리를 한다.
		if (logout != null && logout.equals("yes")) {
			out.println("<script>");
			out.println("alert('" + session.getAttribute("name") + "님 안녕히가세요');");
			out.println("window.location = './index.jsp'");
			out.println("</script>");
			// 로그아웃 되었으므로 session에서 로그인 정보를 제거한다.
			// removeAttribute(): 영역 변수에 저장된 데이터를 제거한다.
			session.removeAttribute("id");
			session.removeAttribute("name");
			session.removeAttribute("login");
			
		}
	
	//	session에서 로그인 정보를 읽어와서 로그인 상태, 로그아웃 상태의 화면을 브라우저에 표시한다.
		String login = (String) session.getAttribute("login");
		if (login != null && login.equals("yes") && session.getAttribute("id").equals("admin")) {
		
	%>
		<!-- 관리자 로그인 상태일 경우 브라우저에 표시될 내용 -->
		${id}님 안녕하세요<br/><br/>
		<input type="button" value="마이페이지" onclick="location.href='myInfo.jsp'"/>	
		<input type="button" value="상품등록" onclick="location.href='insertItem.jsp'"/>
		<input type="button" value="로그아웃" onclick="location.href='?logout=yes'"/>
		
	<%
		} else if (login != null && login.equals("yes")) {
	%>
		<!-- 일반 사용자 로그인 상태일 경우 브라우저에 표시될 내용 -->
		${id}님 안녕하세요<br/><br/>
		<input type="button" value="마이페이지" onclick="location.href='myInfo.jsp'"/>	
		<input type="button" value="로그아웃" onclick="location.href='?logout=yes'"/>
		<input type="button" value="찜목록" onclick="location.href='?myWish.jsp'"/>
	<%
		}
		else {
	%>
			
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="?" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="id" id="id" tabindex="1" class="form-control" placeholder="ID" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
									</div>
									<!-- 아이디 기억하기
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember"> Remember Id</label>
									</div>
									 -->
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Login">
											</div>
										</div>
									</div>
									<!-- 비밀번호 찾기
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="https://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
									 -->
								</form>
								<form id="register-form" action="?" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="아이디" value="">
									</div>
									<div class="form-group">
										<input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="이메일 주소" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="비밀번호">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="비밀번호 확인">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="회원가입">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					
					
			
<%
	}
%>
					
					
					
					
					
					
					
					
					
					
				</div>
			</div>
		</div>
	</div>
	<!-- 여기까지 loginForm.html에 코딩해 넣는 내용 -->

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











>