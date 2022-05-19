// 상품 정보를 product.jsp에 입력하기
function productInfo() {

	$.ajax({
		type: 'GET',
		url: './listItem',
		success: function(res) {
			$("#ITEMNAME").empty();
			var items = JSON.parse(res);
			
			
			$.for(items, function(idx, data) {
				var name = "<h5>" + data.itemName + "</h5>"
				$("#ITEMNAME").append(name);
								
				var price = "<h5>" + data.itemPrice + "</h5>"
				$("#ITEMNAME").append(price);
								
				var content = "<h5>" + data.itemContent + "</h5>"
				$("#ITEMNAME").append(content);
				
			})

		}

	})
	
}