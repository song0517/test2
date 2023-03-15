<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 폼</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"	rel="stylesheet">
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
</head>
<body>
	<div class="hero-wrap hero-bread"
		style="background-image: url('images/bg_1.jpg');">
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="main.do">Home</a></span> <span>UPDATE MY INFO</span>
					</p>
					<h1 class="mb-0 bread">UPDATE MY INFO</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section ftco-degree-bg">
		<div class="container">
		  <div class="row">
			<div class="col-lg-8 ftco-animate">  <!-- 사이드바 위치조정에꼭필요 -->
					<form id="frm" action="customerUpdate.do" class="billing-form" style="width: 600px;"
						onsubmit="return formSubmit()" method="post">
						<h3 class="mb-4 billing-heading">내 정보 수정</h3>
						<div class="row align-items-end">
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">아이디</label> 
									<input type="text" class="form-control" type="text" 
									id="id" name="id" value="${id }" readonly="readonly">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-group">
										<label for="firstname">이름</label> 
										<input type="text" class="form-control" value="${name }"
										id="name" name="name" required="required">
									</div>
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="passwd">비밀번호</label> 
									<input type="password" class="form-control" placeholder="" 
									id="passwd" name="passwd" required="required">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="passwd1">비밀번호 확인</label> 
									<input type="password" class="form-control" placeholder=""
										id="passwd1" name="passwd1" required="required">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="phone">전화번호</label> 
									<input type="text" class="form-control" value="${phone }" 
									id="phone" name="phone" required="required">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="email">이메일</label> 
									<input type="text" class="form-control" placeholder="" 
									id="email" name="email" value="${email }" required="required">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="sample6_postcode">우편번호</label> <input
										type="text" class="form-control" placeholder=""
										id="sample6_postcode" name="postcode" required="required">
								</div>
							</div>
							<div class="col-md-5">
								<div class="form-group">
									<button type="button" class="btn btn-primary py-3 px-4"
										onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="sample6_address">주소</label> 
									<input type="text" class="form-control"
									id="sample6_address" name="address" required="required">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="sample6_detailAddress">상세 주소</label>
									<input type="text" class="form-control"
									placeholder="detail Address etc: (optional)"
									id="sample6_detailAddress" name="detailAddress" required="required">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="sample6_extraAddress">추가 주소</label> <input
										type="text" class="form-control" 
										id="sample6_extraAddress" name="extraAddress">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="w-100"></div>
							<div class="col-md-12">
								<div class="form-group mt-4">
									<input type="submit" class="btn btn-primary py-3 px-4"
										value="submit">&nbsp;&nbsp;&nbsp; <input type="reset"
										class="btn btn-primary py-3 px-4" value="reset">
								</div>
							</div>
						</div>
					</form>
			</div> <!-- .col-md-8 -->
					<div class="col-lg-4 sidebar ftco-animate">
		  <div class="sidebar-box ftco-animate" style="margin-bottom: 50px;">
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
					<li><a href="placeInsertFrm.do">농장 정보 등록하기</a></li>
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
	  
	<script type="text/javascript">
		function formSubmit() {
			console.log(document.getElementById("passwd").value);
			console.log(document.getElementById("passwd1").value);
			if (document.getElementById("passwd").value != document
					.getElementById("passwd1").value) {
				alert("패스워드가 같지 않습니다.")
				frm.passwd.value = "";
				frm.passwd1.value = "";
				frm.passwd.focus();
				return false;
			}
		}
	</script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("sample6_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample6_postcode').value = data.zonecode;
							document.getElementById("sample6_address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("sample6_detailAddress")
									.focus();
						}
					}).open();
		}
	</script>
</body>
</html>