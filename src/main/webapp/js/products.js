// 상품 정보를 product.jsp에 입력하기
function productInfo() {
	var itemNum = location.search.substr(6, 7)
	$.ajax({
		type: 'POST',
		url: './getProduct',
		data: {
			itemNum: itemNum
		},
		success: function(res) {
			var items = JSON.parse(res);
			$("#itemNum").html(items.itemNum)
			$("#itemName").html(items.itemName)
			$("#itemPrice").html(items.itemPrice)
			$("#itemContent").html(items.itemContent)
			$("#itemType").html(items.itemType)
		}

	})
}