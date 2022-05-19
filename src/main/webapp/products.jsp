<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Welcome to AAC!!</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />


<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="../favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="../css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="../css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="../css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="../css/superfish.css">
<!-- Flexslider  -->
<link rel="stylesheet" href="../css/flexslider.css">

<link rel="stylesheet" href="../css/style.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>

<!-- Modernizr JS -->
<script src="../js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
		<script src="js/respond.min.js"></script>
		<![endif]-->
<script type="text/javascript" src="./js/products.js"></script>
<script type="text/javascript" src="./js/admin.js"></script>
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>

</head>
<script>
	window.onload = function() {
		productInfo()

	}
</script>

<body>
	<header id="fh5co-header" role="banner">
		<div class="container text-center">
			<div id="fh5co-logo">
				<a href="../index.jsp"><img src="../images/logo.png"
					alt="AAC Free HTML5 Bootstrap Template"></a>
			</div>
			<nav>
				<ul>
					<li><a href="../about.jsp" class="text-decoration-none">About</a></li>
					<li class="dropdown"><a href="#"
						class="dropdown-toggle text-decoration-none"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> Category </a>
						<ul class="dropdown-menu">
							<li><a href="../category/a.jsp" class="text-decoration-none">상의</a></li>
							<li><a href="../category/b.jsp" class="text-decoration-none">하의</a></li>
							<li><a href="../category/c.jsp" class="text-decoration-none">아우터</a></li>
							<li><a href="../category/d.jsp" class="text-decoration-none">신발</a></li>
							<li><a href="../category/e.jsp" class="text-decoration-none">액세서리</a></li>
						</ul></li>
					<li><a href="../contact.jsp" class="text-decoration-none">Contact</a></li>
					<li><a href="../loginForm.jsp" class="text-decoration-none">Login/Sign
							Up</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- END #fh5co-header -->

	<!-- Main -->
	<main class="mt-3">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div id="carouselExampleIndicators"
						class="carousel carousel-dark slide" data-bs-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="../images/img_1.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="../images/img_2.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="../images/img_3.jpg" class="d-block w-100" alt="...">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-bs-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="visually-hidden">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button"
							data-bs-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="visually-hidden">Next</span>
						</a>
					</div>
				</div>
				<div class="col-md-7">
					<div class="card shadow-sm">
						<div class="card-body">
							<div id="ITEMNAME">
								<h5 class="card-title" id="itemName"></h5>
							</div>
							<div id="ITEMPRICE">
								<h5 class="card-title pt-3 pb-3 border-top" id="itemPrice"></h5>
							</div>

							<p class="card-text border-top pt-3">
								<span class="badge bg-dark">신규</span> <span
									class="badge bg-dark">인기</span> <span class="badge bg-dark">세일</span>
							</p>
							<p class="card-text pb-3">배송비 2,500원 | 도서산간(제주도) 배송비 추가
								5,000원 | 택배배송 | 5일 이내 출고 (주말,공휴일 제외)</p>
							<p class="card-text border-top pb-3">
							<div class="row">
								<div class="col-auto">
									<label class="col-form-label">구매수량</label>
								</div>
								<div class="col-auto">
									<div class="input-group">
										<span class="input-group-text">-</span> <input type="text"
											class="form-control" style="width: 40px;" value="1">
										<span class="input-group-text">+</span>
									</div>
								</div>
							</div>
							</p>
							<div class="row pt-3 pb-3 border-top">
								<div class="col-6">
									<h3>총 상품 금액</h3>
								</div>
								<div class="col-6" style="text-align: right;">
									<h3>19,000</h3>
								</div>
							</div>
							<div class="d-flex justify-content-between align-items-center">
								<div class="col-6 d-grid p-1">
									<button type="button" class="btn btn-lg btn-dark">장바구니
										담기</button>
								</div>
								<div class="col-6 d-grid p-1">
									<button type="button" class="btn btn-lg btn-danger">주문하기</button>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<img src="../images/img_20.jpg" />
				</div>
			</div>
		</div>
	</main>


	<!-- footer -->
	<footer id="fh5co-footer" role="contentinfo">
		<div class="container-fluid">
			<div class="footer-content">
				<div class="copyright">
					<small>&copy; 2022 AAC. All Rights Reserved. <br>Designed
						by <a href="http://freehtml5.co/">FreeHTML5.co</a> Images: <a
						href="http://graphicburger.com/">GraphicBurger</a></small>
				</div>
				<!-- 
							<div class="social">
								<a href="#"><i class="icon-facebook3"></i></a>
								<a href="#"><i class="icon-instagram2"></i></a>
								<a href="#"><i class="icon-linkedin2"></i></a>
							</div>
						-->
			</div>
		</div>
	</footer>
	<!-- END #fh5co-footer -->

	<!-- jQuery -->
	<script src="../js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- masonry -->
	<script src="../js/jquery.masonry.min.js"></script>
	<!-- MAIN JS -->
	<script src="../js/main.js"></script>

</body>
</html>

