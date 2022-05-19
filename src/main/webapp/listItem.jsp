<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/admin.js"></script>
<!-- ajax -->
<title>상품목록 페이지</title>
</head>
<script>
	window.onload = function() {
		listItem()

	}
</script>
<body>
	<table style="margin: 0 auto; border: solid 1px black">
		<thead>
			<tr>
				<th colspan="3">상품목록</th>
			</tr>
			<tr>
				<th>상품번호</th>
				<th>상품종류</th>
				<th>상품명</th>
				<th>상품가격</th>
				<th>상품설명</th>
			</tr>
		</thead>
		
		<tbody id="tbody">
		</tbody>
	</table>
	<button type="button" onclick="goAdminPage()">관리자 페이지</button>
</body>
</html>