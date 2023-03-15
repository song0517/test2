<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>농장정보등록페이지</title>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    
    <style>
    	
	.col-xl-7 {
		background-color: rgb(236, 243, 233);
		padding-top: 15px;
		padding-bottom: 15px;
		padding-left: 30px;
		padding-right: 30px;
		max-width: 100% !important;
		width: 750px !important;
		 
  		transform: translate(-50%, -50%);
  		box-sizing: border-box;
  		box-shadow: 5px 5px 5px rgba(0,0,0,.6);
 		border-radius: 10px;
	}

	.billing-form .form-control{
		color: black !important;
		background: white !important;

	}

	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
	* { 
		font-family: 'Gowun Dodum' !important;
	}
    </style>
</head>
<body>
	<div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
			<div class="container">
				<div class="row no-gutters slider-text align-items-center justify-content-center">
					<div class="col-md-9 ftco-animate text-center">
						<p class="breadcrumbs"><span class="mr-2"><a href="main.do">Home</a></span> <span>JOIN</span>
						</p>
						<h1 class="mb-0 bread">PLACE</h1>
					</div>
				</div>
			</div>
		</div>

  <section class="ftco-section ftco-degree-bg">
	<div class="container">
	  <div class="row">
		<div class="col-lg-8 ftco-animate">  <!-- 사이드바 위치조정에꼭필요 -->
					<c:if test="${empty farmerCheck }">
					<div class="col-xl-7 ftco-animate">
						<form id="place" action="placeInsert.do?id=${id }" class="billing-form" method="post" enctype="multipart/form-data">
							<h3 class="mb-4 billing-heading" style="margin-top: 20px;">내 농장을 소개를 등록하세요.</h3>
							<div class="row align-items-end">
								<div class="col-md-12">
									<div class="form-group">
										<label for="passwd1" style="font-size: 16px">카테고리</label><br>
										<input name="farmProduct" type="radio" value="fruit">과일
										<input name="farmProduct" type="radio" value="vegetable">야채
										<input name="farmProduct" type="radio" value="cereal">곡물
										<input name="farmProduct" type="radio" value="goods">가공물
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="firstname" style="font-size: 16px">농장 이름</label>
										<input type="text" class="form-control" id="farmPlace" name="farmPlace" value="${farmer.farmName }">
									</div>
									</div>
									<div class="col-md-6">
									<div class="form-group">
										<label for="firstname" style="font-size: 16px">농업인 이름</label>
										<input type="text" class="form-control" id="farmName" name="farmName">
									</div>
									</div>
									<div class="col-md-12">
									<div class="form-group">
									<label></label>				
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-md-12">
									<div class="form-group">
										<div class="form-group">
											<label for="firstname" style="font-size: 16px">주소</label>
										<input type="text" class="form-control" id="farmAdress" name="farmAdress" value="${farmer.farmAddress }" readonly>
										<p><small> 농장주소를 변경하고싶다면 마이페이지에서 변경해 주시기 바랍니다. </small></p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
									<label></label>		
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="passwd" style="font-size: 16px">농장 전화번호</label>				
										<input type="text" class="form-control" id="farmPhone" name="farmPhone" value="${farmer.farmPhone }">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
									<label></label>			
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="phone" style="font-size: 16px">농장 소개말</label>
										<textarea class="form-control" id="farmContent" name="farmContent" rows="20" cols="100"></textarea><br>
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="email" style="font-size: 16px">농장 이미지</label>
										<input type="file" class="form-control" id = "image" name="image">
									</div>
								</div>
								<div class="w-100"></div>
								
								<div class="col-md-12">
									<div class="form-group">
									<label></label>		
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="firstname" style="font-size: 16px">농장 위도</label>
										<input type="text" class="form-control" id="farmLat" name="farmLat">
									</div>
									</div>
									<div class="col-md-6">
									<div class="form-group">
										<label for="firstname" style="font-size: 16px">농장 경도</label>
										<input type="text" class="form-control" id="farmLon" name="farmLon">
									</div>
									</div>
								<div class="w-100"></div>
								<div class="w-100"></div> 
								<div class="w-100"></div>
								<div class="col-md-12">
									<div class="form-group mt-4">
										<input type="submit" class="btn btn-primary py-3 px-4" value="등록">&nbsp;&nbsp;&nbsp;
										<input type="reset" class="btn btn-primary py-3 px-4" value="취소"></a>
									</div>
								</div>
							</div>
						</form><!-- END -->
					</div>
				</c:if>
			<c:if test="${not empty farmerCheck }">
			<p><br><br></p>
			<h3>이미 등록을 완료했습니다.</h3>
			<h4>수정을 원하신다면 나의 농장메뉴를 이용해 주세요.</h4>
			</c:if>		
					
					
		</div> <!-- .col-md-8 -->
		<div class="col-lg-4 sidebar ftco-animate">
		  <div class="sidebar-box ftco-animate">
			  <h3 class="heading">My page</h3>
			<ul class="categories">
				<c:if test="${auth eq 'user'}">
					<li><a href="customerUpdateForm.do">내 정보 수정</a></li>
					<li><a href="farmerJoinForm.do">농업인 등록 신청</a></li>
					<li><a href="customerList.do">내 주문</a></li>
				</c:if>
				<c:if test="${auth eq  'farmer'}">
					<li><a href="customerUpdateForm.do">내 정보 수정</a></li>
					<li><a href="customerList.do">내 주문</a></li>
					<li><a href="placeDetailFarmer.do">농장 정보</a></li>
					<li><a href="placeInsertFrm.do">농장 소개 등록하기</a></li>
					<li><a href="inputProductForm.do">농장 상품 등록하기</a></li>
					<li><a href="farmerUpdateForm.do">농장 정보 수정</a></li>
					<li><a href="#">내 농장 주문 보기</a><br/></li>
				</c:if>
				<c:if test="${auth eq 'admin'}">
					<li><a href="customerList.do">회원 리스트</a></li>
					<li><a href="farmerAcceptList.do">농업인 승인 대기 리스트</a></li>
					<li><a href="marketInsertFrm.do">직거래 장터 등록하기</a></li>
					<li><a href="marketList.do">직거래 장터 목록</a></li>
					<li><a href="placeList.do">농장 리스트</a></li>
				</c:if>
			</ul>
		  </div>
		  
		  <div class="sidebar-box ftco-animate">
			<h3 class="heading">CoCoFarm is</h3>
			<p>우리 코코팜은 매일, 농부의 손으로 거둔 자연의 선물을 식탁에 올립니다. 제철이 주는 제 맛을 기쁜 마음으로 먹을 수 있도록, 계절을 느끼며 장을 보고 매일 요리를 하는 맛있는 일상을 꿈꿉니다.</p>
		  </div>
		</div>

	  </div>
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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>	
</body>
</html>