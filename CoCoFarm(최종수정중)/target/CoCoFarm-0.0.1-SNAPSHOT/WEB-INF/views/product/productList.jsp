<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매 상품 전체 보기</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<style>
	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
	*{
      font-family: 'Gowun Dodum' !important;
   	}
.pagination{
		width: 300px;
		display: inline-block;
		margin : 0, auto;
		font-size : large;
		margin-bottom : 60px;
	}
</style>
</head>
<body>
	<div class="hero-wrap hero-bread"
		style="background-image: url('images/co15.jpg');">
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="main.do">Home</a></span> <span>SHOP</span>
					</p>
					<h1 class="mb-0 bread">shop</h1>
				</div>
			</div>
		</div>
	</div>
	<div align="center">
		<div>
			<section class="ftco-section">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-md-10 mb-5 text-center">
							<ul class="product-category">
								<li><a href="productList.do" >All</a></li>
								<li><a href="productClassList.do?type=fruit" id="fruit"
									name="fruit">Fruit</a></li>
								<li><a href="productClassList.do?type=vegetable"
									id="vegetable" name="vegetable">Vegetable</a></li>
								<li><a href="productClassList.do?type=cereal" id="cereal"
									name="cereal">Cereal</a></li>
								<li><a href="productClassList.do?type=processed"
									id="processed" name="processed">Processed food</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<c:forEach items="${products}" var="p">
							<!-- <img class="img-fluid" src="${p.productImage1}" alt="Colorlib Template"> -->

							<div class="col-md-6 col-lg-3 ftco-animate">
								<div class="product">
									<div id="template" style="display: none;"></div>
									<!-- 여기에 상세 이동 페이지 적는듯-->
									<a href="productSelect.do?productCode=${p.productCode}&farmerId=${p.farmerId}"
										class="img-prod"><img class="img-fluid"
										src="${p.productImage1}" alt="Colorlib Template" style="width:253px; height:202.391px;">
										<div class="overlay"></div> </a>

									<div class="text py-3 pb-4 px-3 text-center">
										<h3>
											<a href="productSelect.do?productCode=${p.productCode}&farmerId=${p.farmerId}">${p.productName }
												<div class="overlay"></div></a>
										</h3>
										<!--상품명-->
										<div class="d-flex">
											<div class="pricing">
												<p class="price">
													<span class="price-sale">￦ ${p.productPrice }</span>
												</p>
												</p>
											</div>
											<!--가격-->
										</div>
										<!--하단 버튼들 둔다면 상세보기 버튼을 하나 만드는 쪽으로? -->
										 <div class="bottom-area d-flex px-3">
									<div class="m-auto d-flex">
										<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
											<span><i class="ion-ios-menu"></i></span>
										</a>
										<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
											<span><i class="ion-ios-cart"></i></span>
										</a>
										<a href="#" class="heart d-flex justify-content-center align-items-center ">
											<span><i class="ion-ios-heart"></i></span>
										</a>
									</div>
								</div> 
									</div>
								</div>
								<!--end of id : template-->
							</div>
							<!--이까지 한 물품-->
						</c:forEach>
					</div>
				</div>
				
				
		</div>
		<!--상품끝-->
			
		<!--밑에 페이지 번호-->
				<div class = 'pagination'>	
						<c:if test="${page.prev}">
							<a href ="productList.do?page=${page.startPage-1}">&laquo;</a>
						</c:if>
						
						<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}" step = "1">
							<c:choose>
								<c:when test="${page.pageNum == i }">
									<a class = 'active' href="productList.do?page=${i}">${i}</a>	
								</c:when>
								<c:otherwise>
									<a href="productList.do?page=${i}">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						
						<c:if test="${page.next }">
							<a href="board.do?page=${page.endPage+1}">&laquo;</a>
						</c:if>
					</div>
		 <!-- end of div pagination -->	
			
	</div>
	</section>

	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>
		
</body>

</html>