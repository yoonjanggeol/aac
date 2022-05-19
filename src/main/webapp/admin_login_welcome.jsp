<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("userid");
	String name = (String)session.getAttribute("username");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%=id %>(<%=name %>)님 안녕하세요

	<a href="logout.jsp">로그아웃</a><br/>
	<a href="listItem.jsp">상품목록</a><br/>
	<a href="insertItem.jsp">상품등록</a><br/>
	
</body>
</html>