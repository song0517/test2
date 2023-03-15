<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
body {
  padding:1.5em;
  background: #fff
}

#radioBtn{
	margin: 20px
}
table {
  border: 1px rgba(0,0,0,.1) solid;
  font-size: .9em;
  box-shadow: 0 2px 5px rgba(0,0,0,.25);
  width: 100%;
  border-collapse: collapse;
  border-radius: 5px;
  overflow: hidden;
  margin-bottom: 50px
}

th {
  text-align: center;
}
  
thead {
  font-weight: bold;
  color: white;
  background: #82ae46;
}
  
tbody tr:hover {
	background-color: #ddd;
}

 td, th {
  padding: 1em .5em;
  vertical-align: middle;
}
  
 td {
  border-bottom: 1px solid rgba(0,0,0,.1);
}

a {
  color: #e5e5e5;
}

 @media all and (max-width: 768px) {
    
  table, thead, tbody, th, td, tr {
    display: block;
  }
  
  th {
    text-align: right;
  }
  
  table {
    position: relative; 
    padding-bottom: 0;
    border: none;
    box-shadow: 0 0 10px rgba(0,0,0,.2);
  }
  
  thead {
    float: left;
    white-space: nowrap;
  }
  
  tbody {
    overflow-x: auto;
    overflow-y: hidden;
    position: relative;
    white-space: nowrap;
  }
  
  tr {
    display: inline-block;
    vertical-align: top;
  }
  
  th {
    border-bottom: 1px solid #e5e5e5;
  }
  
  td {
    border-bottom: 1px solid #e5e5e5;
  }
 }
</style>
</head>
<body>
	<!-- 공통으로 메뉴 & 사진 뜨는 -->
	<div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
		<div class="container">
		  <div class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>My Page</span></p>
			  <h1 class="mb-0 bread">My Page</h1>
			</div>
		  </div>
		</div>
	  </div>
	<section class="ftco-section ftco-degree-bg">
	<div class="container">
	  <div class="row">
		<div class="col-lg-8 ftco-animate">  <!-- 사이드바 위치조정에꼭필요 -->
			<div id="show" align="center">
		<div id="title">
			<h1>회원 리스트</h1>
		</div>
		<div>
			<table id="table" border='1'>
			<div id="radioBtn">
				<input type="radio" name="auth" onclick=showList() value="all" checked>전체회원 &nbsp;&nbsp;
				<input type="radio" name="auth" onclick=showList() value="user">일반회원&nbsp;&nbsp;
				<input type="radio" name="auth" onclick=showList() value="farmer">농업인
			</div>
				<thead>
					<tr align="center">
						<th width="60px">아이디</th>
						<th width="70px">이름</th>
						<th width="130px">이메일</th>
						<th width="100px">전화번호</th>
						<th width="300px">주소</th>
						<th width="65px">권한</th>
					</tr>
				</thead>
				<tbody id="list">
					<c:forEach items="${list }" var="l">
						<tr align="center" >
							<td>${l.id }</td>
							<td>${l.name }</td>
							<td>${l.email }</td>
							<td>${l.phone }</td>
							<td>${l.address }</td>
							<td>${l.auth }</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
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
	<script type="text/javascript">	
		
	function showList() {
			let radios = document.getElementsByName('auth');
			let auth = null;
			for(let radio of radios){
				if(radio.checked){
					auth = radio.value
					console.log(auth)
				}
			}
			console.log(auth)
			let url = "ajaxcustomerList.do?author=" + auth;
			fetch(url)
			.then(response => response.json())
			.then(data => htmlViews(data));
		}
		
		//티바디로부르기
		function htmlViews(datas) {
				console.log(datas)
				let tbody = document.querySelector('tbody');
				console.log(tbody);
				tbody.remove();
				const container = document.createElement('tbody');
				container.innerHTML = datas.map(data => createHTMLString(data)).join("");
				let table = document.querySelector('#table');
				console.log(table);
				document.querySelector('#table').appendChild(container); 
			}
	

		//tr생성
		function createHTMLString(data) { //html 변화 코드 css, 
			let str = "<tr>"
				str += "<td align = 'center'>" + data.id + "</td>";
				str += "<td align = 'center'>" + data.name + "</td>";
				str += "<td align = 'center'>" + data.email + "</td>";
				str += "<td align = 'center'>" + data.phone + "</td>";
				str += "<td align = 'center'>" + data.address + "</td>";
				str += "<td align = 'center'>" + data.auth + "</td>";
				str += "</tr>";
				return str;
			}
	</script>
</body>
</html>