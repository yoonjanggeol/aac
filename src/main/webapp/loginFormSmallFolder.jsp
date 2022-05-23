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
<meta charset="UTF-8">
<title>로그인/로그아웃</title>
</head>
<body>

	<%

	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	// DB연결에 필요한 변수 선언
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "squidink607";
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
			out.println("window.location = '../index.jsp'");
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
	${id}님 안녕하세요
	<br />
	<br />
	<input type="button" value="관리자페이지"
		onclick="location.href='admin_login_welcome.jsp'" />
	<input type="button" value="로그아웃" onclick="location.href='?logout=yes'" />

	<%
		} else if (login != null && login.equals("yes")) {
	%>
	<!-- 일반 사용자 로그인 상태일 경우 브라우저에 표시될 내용 -->
	${id}님 안녕하세요
	<br />
	<br />
	<input type="button" value="마이페이지" onclick="location.href='myInfo.jsp'" />
	<input type="button" value="로그아웃" onclick="location.href='?logout=yes'" />
	<input type="button" value="찜목록" onclick="location.href='?myWish.jsp'" />
	<%
		}
		else {
	%>

	<!-- 로그아웃 상태일 경우 브라우저에 표시될 내용 -->
	<form action="?" method="post">
		<table width="300" border="1" cellpadding="5" cellspacing="0">
			<!--
			<tr>
				<td colspan="2">
					<label>
						아이디 <input type="text" name="id"/>
					</label>
				</td>
			</tr>
			-->
			<tr>
				<th><label for="id">아이디</label></th>
				<td><input id="id" type="text" name="id" /></td>
			</tr>
			<tr>
				<th><label for="password">비밀번호</label></th>
				<td><input id="password" type="text" name="password" /></td>
			</tr>
			<tr>
				<td colspan="1"></td>
				<td colspan="1" align="center"><input type="submit" value="로그인" />
					<input type="button" value="회원가입"
					onclick="location.href='registerForm.jsp'" /></td>
			</tr>
		</table>
	</form>

	<%
	}
%>

</body>
</html>