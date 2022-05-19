<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("user_id");
	String password = request.getParameter("password");
	String name = request.getParameter("user_name");
	//인증정보(세션삭제)
	//리다이렉트
	

	
	String logout = request.getParameter("logout");
		if (logout != null && logout.equals("yes")) {
		out.println("<script>");
		out.println("alert('" + session.getAttribute("name") + "님 안녕히가세요');");
		out.println("</script>");
		// 로그아웃 되었으므로 session에서 로그인 정보를 제거한다.
		// removeAttribute(): 영역 변수에 저장된 데이터를 제거한다.
		session.removeAttribute("user_id");
		session.removeAttribute("user_name");
		session.removeAttribute("login");
	}
	
	response.sendRedirect("./index.jsp");

%>