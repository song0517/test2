<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 입니다.</title>
<title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    
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
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
* { 
	font-family: 'Gowun Dodum' !important;
}
</style>
</head>
<body>
<!-- 공통으로 메뉴 & 사진 뜨는 -->
<div class="hero-wrap hero-bread" style="background-image: url('images/co3.jpg');">
	<div class="container">
	  <div class="row no-gutters slider-text align-items-center justify-content-center">
		<div class="col-md-9 ftco-animate text-center">
			<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>MY PAGE</span></p>
		  <h1 class="mb-0 bread">MY PAGE</h1>
		</div>
	  </div>
	</div>
  </div>

  <section class="ftco-section ftco-degree-bg">
	<div class="container">
	  <div class="row">
		<div class="col-lg-8 ftco-animate">  <!-- 사이드바 위치조정에꼭필요 -->
			<h3 class="heading">${message }</h3>
			<div style="margin: 10px">
			<label onclick="location.href='customerLoginForm.do'" class="mr-3">로그인 하러가기</label>
			</div>
		</div> <!-- .col-md-8 -->
		<div class="col-lg-4 sidebar ftco-animate">
		  <div class="sidebar-box ftco-animate">
			  <h3 class="heading">My page</h3>
			<ul class="categories">
				<c:if test="${auth eq 'user'}">
					<li><a href="customerUpdateForm.do">내 정보 수정</a></li>
					<li><a href="farmerJoinForm.do">농업인 등록 신청</a></li>
					<li><a href="#">내 주문</a></li>
					<li><a href="#">내가 쓴 리뷰</a></li>
				</c:if>
				<c:if test="${auth eq  'farmer'}">
					<li><a href="customerUpdateForm.do">내 정보 수정</a></li>
					<li><a href="#">내 농장 정보</a></li>
					<li><a href="placeInsertFrm.do">내 농장 정보 등록하기</a></li>
					<li><a href="farmerUpdateForm.do">농장 정보 수정</a></li>
					<li><a href="#">내 상품 보기</a><br/></li>
				</c:if>
				<c:if test="${auth eq 'admin'}">
					<li><a href="customerList.do">고객 리스트</a></li>
					<li><a href="farmerAcceptList.do">농업인 승인 대기 리스트</a></li>
					<li><a href="#">장터 등록하기</a></li>
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

<script type="text/javascript">
	
</script>
</body>
</html>