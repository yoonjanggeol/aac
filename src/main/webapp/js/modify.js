function goSearchItem() {
	let itemNum = $("#searchItemNum").val();
	if(itemNum === ""){
		alert("상품번호를 입력해주세요")
		return false;
	}
	$.ajax({
		url: "./searchItem",
		type: "POST",
		data: {
			itemNum: itemNum
		},
		success: function(res) {
			$("#modifyDIv").show()
			var item = JSON.parse(res);
			$("#itemNum").val(item.itemNum)
			$("#itemType").val(item.itemType)
			$("#itemName").val(item.itemName)
			$("#itemPrice").val(item.itemPrice)
			$("#itemContent").val(item.itemcontent)
		}
	})
}

// 상품수정
function doModify(){
	let itemNum = $('#itemNum').val();
	let itemType = $('#itemType').val();
	let itemName = $('#itemName').val();
	let itemPrice = $('#itemPrice').val();
	let itemContent = $('#itemContent').val();
	$.ajax({
		type: 'POST',
		url: './modifyItem',
		data: {
			itemNum: itemNum,
			itemName: itemName,
			itemPrice: itemPrice,
			itemContent: itemContent,
			itemType: itemType,
		},
		success: function(res) {
			if (res === "1") {
				alert("수정 되었습니다.")
				location.href = "./listItem.jsp"
			}
		}
	})
}

// 상품삭제
function doDelete(){
	let itemNum = $("#searchItemNum").val();
	$.ajax({
		url: "./deleteItem",
		type: "POST",
		data: {
			itemNum: itemNum
		},
		success: function(res) {
			if (res === "1") {
				alert("삭제 되었습니다.")
				location.href = "./listItem.jsp"
			}
		}
	})
}