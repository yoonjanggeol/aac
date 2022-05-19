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

<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/admin.js"></script>
<!-- ajax -->
<title>상품등록</title>
</head>
<body>

	<h2>상품 등록</h2>
	<form id="form1" name="form1" method="post"
		enctype="multipart/form-data">
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

</body>
</html>