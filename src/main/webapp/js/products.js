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
			$("#itemNum").html(items.itemNum);
			$("#itemName").html(items.itemName);
			$("#itemPrice").html(items.itemPrice);
			$("#itemContent").html(items.itemContent);
			$("#itemType").html(items.itemType);
			let a = './upload/' + items.itemImg;
			document.getElementById('itemImg').setAttribute('src', a);
		}
	})
}


function fnCalCount(type, ths){
	console.log('상품 수 계산 실행')
    var input = document.getElementById('iCount');
    var iCount = Number(input.value);
    
    if(type=='p'){
			iCount += 1;
			input.setAttribute('value', iCount)	
		        
    }else{
        if(iCount > 0) {
			iCount -= 1;
			input.setAttribute('value', iCount)
		}    
	}
	
	var price = document.getElementById('itemPrice');
	
	var totalPrice = document.getElementById('totalPrice');
	console.log(iCount)
	console.log(price.innerText)
	totalPrice.innerText = Number(iCount) * Number(price.innerText);
	
}














