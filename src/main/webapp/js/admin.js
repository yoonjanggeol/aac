// 상품등록 함수
function insertItem() {
	let itemType = $('#itemType').val();
	let itemName = $('#itemName').val();
	let itemPrice = $('#itemPrice').val();
	let itemContent = $('#itemContent').val();
	let itemImg = $('#itemImg').val();
	$.ajax({
		type: 'POST',
		url: './insertItem',
		data: {
			itemName: itemName,
			itemPrice: itemPrice,
			itemContent: itemContent,
			itemType: itemType,
			itemImg: itemImg
		},
		success: function(res) {
			if (res === "1") {
				alert("등록 되었습니다.")
				location.href = "./listItem.jsp"
			}
		}
	})
}

// 상품목록 함수
function listItem() {
	$.ajax({
		type: 'GET',
		url: './listItem',
		success: function(res) {
			$("#tbody").empty();
			var items = JSON.parse(res);

			$.each(items, function(idx, data) {
				var html =
					"<tr>"
					+ "<td><a href=javascript:goProduct(" + data.itemNum + ")>" + data.itemNum + "</a></td>"
					+ "<td>" + data.itemType + "</td>"
					+ "<td>" + data.itemName + "</td>"
					+ "<td>" + data.itemPrice + "</td>"
					+ "<td>" + data.itemContent + "</td>"
					+ "<td class='img_class'><img class='d-block w-100' src=" + data.itemImg + "></td>"
					+ "<td></td>";
				+ "</tr>";
				$("#tbody").append(html);
			})

		}

	})
}





// 관리자 페이지 진입
function goAdminPage() {
	location.href = "/aac/admin_login_welcome.jsp"
}

// 상품수정 페이지 진입
function goModifyItem() {
	location.href = "/aac/modifyItem.jsp"
}

// 상품 정보를 product.jsp에 입력하기
function goProduct(dataNum) {
	location.href = "/aac/products.jsp?pNum=" + dataNum;
}

// 상품수정페이지 상품번호 검색
function goAjax() {
	let itemNum = $('#itemNum').val();
	console.log(itemNum)
}

