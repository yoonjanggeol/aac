<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품수정</title>
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/modify.js"></script>
</head>
<script>
	window.onload = function() {
		$("#modifyDIv").hide()
	}
</script>
<body>
	<!-- 상품 조회 -->
	<div style="text-align: center">
		상품번호 : <input type="text" id="searchItemNum" size="20">
	</div>
	<br>
	<div style="text-align: center">
		<button type="button" onclick="goSearchItem()">상품검색</button>
	</div>
	<br>
	<br>
	<div id="modifyDIv">
		<table style="margin: 0 auto">
			<tr>
				<td>상품번호</td>
				<td><input type="text" id="itemNum" readonly
					style="background-color: #c8c8c8;"></td>
			</tr>
			<tr>
				<td>상품종류</td>
				<td><input type="text" id="itemType"></td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input type="text" id="itemName"></td>
			</tr>
			<tr>
				<td>상품가격</td>
				<td><input type="text" id="itemPrice"></td>
			</tr>
			<tr>
				<td>상품설명</td>
				<td><input type="text" id="itemContent"></td>
			</tr>
		</table>
		<br>
		<div style="text-align: center">
			<button type="button" onclick="doModify()">상품수정</button>
			<button type="button" onclick="doDelete()">상품삭제</button>
		</div>
	</div>
</body>
</html>