// 장바구니 등록 함수
function selectItem() {
	let id = '<%=(String)session.getAttribute("userid")%>';
	let name = '<%=(String)session.getAttribute("userName")%>';
	let iNum = document.querySelector('#itemNum').innerText;
	let iName = document.querySelector('#itemName').innerText;
	let iPrice = document.querySelector('#itemPrice').innerText;
	let iContent = document.querySelector('#itemContent').innerText;
	let iType = document.querySelector('#itemType').innerText;
	let iImg = document.getElementById('itemImg').getAttribute('src');
	let iCount = document.getElementById('iCount').getAttribute('value')
	
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
			if(iCount > 0){
				if (res === "1") {
				alert("장바구니에 추가되었습니다.")
				location.href = "./showListItem.jsp"
				}	
			}
			else {
				alert("수량을 정해주세요!!!")
			}
			
		}
	})
}

// 이미 있는 제품 장바구니 등록 함수
function selectItem2() {
	let id = '<%=(String)session.getAttribute("userid")%>';
	console.log(id);
	let name = '<%=(String)session.getAttribute("userName")%>';
	console.log(name);
	let iNum = document.querySelector('#itemNum').innerText;
	console.log(iNum);	
	let iName = document.querySelector('#itemName').innerText;
	console.log(iName);	
	let iPrice = document.querySelector('#itemPrice').innerText;
	console.log(iPrice);
	let iContent = document.querySelector('#itemContent').innerText;
	console.log(iContent);
	let iType = document.querySelector('#itemType').innerText;
	console.log(iType);
	let iImg = document.getElementById('itemImg').getAttribute('src');
	console.log(iImg);
	let iCount = document.getElementById('iCount').getAttribute('value')
	console.log(iCount);
	let pageName = document.getElementById('pageName').innerText;
	
	$.ajax({
		type: 'POST',
		url: './' + pageName + '.jsp',
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
			if(iCount >0){
				if (res === "1") {
				alert("장바구니에 추가되었습니다.")
				location.href = "../showListItem.jsp"
				}	
			}
			else {
				alert("수량을 정해주세요!!!")
			}
			
		}
	})
}




// 장바구니 목록 함수
function shoppingItem() {
	$.ajax({
		type: 'GET',
		url: './showListItem',
		success: function(res) {
			$("#tbody").empty();
			var items = JSON.parse(res);
			
			/*
			var names = items.name + '의 장바구니'
			$("name").html(names);
			*/	
			
			$.each(items, function(idx, data) {
				var html =
					"<tr>"
					+ "<td><a href=javascript:goProduct(" + data.iNum + ")>" + data.iNum + "</a></td>"
					+ "<td>" + data.iType + "</td>"
					+ "<td>" + data.iName + "</td>"
					+ "<td>" + data.iPrice + "</td>"
					+ "<td>" + data.iContent + "</td>"
					+ "<td class='img_class'><img class='d-block w-100' src=" + data.iImg.substr(9,100) + "></td>"
					+ "<td>" + data.iCount + "</td>";
					+ "</tr>";
				$("#tbody").append(html);
			})

		}

	})
}

// 상품 정보를 product.jsp에 입력하기
function goProduct(dataNum) {
	location.href = "/aac/products.jsp?pNum=" + dataNum;
}






