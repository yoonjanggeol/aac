// 장바구니 등록 함수
function selectItem() {
	let id = '<%=(String)session.getAttribute("userid")%>';
	console.log(id)
	let name = '<%=(String)session.getAttribute("userName")%>';
	let iNum = document.querySelector('#itemNum').innerText;
	console.log(iNum)
	// let iName = $('#itemName').innerText;
	let iName = document.querySelector('#itemName').innerText;
	console.log(iName);
	
	let iPrice = document.querySelector('#itemPrice').innerText;
	let iContent = document.querySelector('#itemContent').innerText;
	let iType = document.querySelector('#itemType').innerText;
	let iImg = document.querySelector('#itemImg').innerText;
	let iCount = document.querySelector('#iCount').innerText;
	$.ajax({
		type: 'POST',
		url: './products',
		data: {
			id : id,
			name : name,
			iNum : iNum,
			iName : iName,
			iPrice : iPrice,
			iContent : iContent,
			iType : iType,
			iImg : iImg,
			iCount : iCount
		},
		success: function(res) {
			if (res === "1") {
				alert("장바구니에 추가되었습니다.")
				location.href = "./shoppingList.jsp"
			}
		}
	})
}

// 장바구니 목록 함수
function shoppingItem() {
	$.ajax({
		type: 'GET',
		url: './shoppingList',
		success: function(res) {
			$("#tbody").empty();
			var items = JSON.parse(res);
			
			$("#name").html(items.name);
			
			$.each(items, function(idx, data) {
				var html =
					"<tr>"
					+ "<td><a href=javascript:goProduct(" + data.iNum + ")>" + data.iNum + "</a></td>"
					+ "<td>" + data.iType + "</td>"
					+ "<td>" + data.iName + "</td>"
					+ "<td>" + data.iPrice + "</td>"
					+ "<td>" + data.iContent + "</td>"
					+ "</tr>";
				$("#tbody").append(html);
			})

		}

	})
}








// 이미지 이름 DB에 itemImg에 넣기
/*
$("#itemImg").change(function(){
  	let img = document.getElementsByName('itemImg')[0].src
  	console.log(img) 
  	
});

*/






// 상품수정 페이지 진입
/*
function goModifyItem() {
	location.href = "/z_aac/modifyItem.jsp"
}
*/



