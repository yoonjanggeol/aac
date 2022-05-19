// 상품등록 함수
function insertItem() {
	let itemName = $('#itemName').val();
	let itemPrice = $('#itemPrice').val();
	let itemContent = $('#itemContent').val();

	$.ajax({
		type: 'POST',
		url: './insertItem',
		data: {
			itemName: itemName,
			itemPrice: itemPrice,
			itemContent: itemContent
		},
		success: function(res) {
			if (res === "1") {
				alert("등록 되었습니다.")
				location.href = "/z_aac/listItem.jsp"
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
				var html = "<tr><td>" + data.itemNum + "</td><td>" + data.itemName + "</td><td>" + data.itemPrice + "</td><td>" + data.itemcontent + "</td></tr>";
				$("#tbody").append(html);
			})

		}

	})
}



function goAdminPage(){
	location.href="/z_aac/admin_login_welcome.jsp"
}