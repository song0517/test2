<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FarmerAcceptList</title>
<style type="text/css">
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
		<div id="title" style="margin: 20px; margin-bottom: 20px;">
			<h2>FARMER APPLY LIST</h2>
		</div>
		<div>
			<table border='1'>
			<thead>
				<tr align="center">
					<th>아이디</th>
					<th>농장 이름</th>
					<th>농장 전화번호</th>
					<th>농장 주소</th>
					<th>농장 사업자 번호</th>
					<th>승인</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list }" var="f">
						<tr align="center">
							<td>${f.id }</td>
							<td>${f.farmName }</td>
							<td>${f.farmPhone }</td>
							<td>${f.farmAddress }</td>
							<td>${f.farmAcc }</td>
							<td><button type="button" id="btn" style="border: none;"
							 class="btn btn-primary py-2 px-3" onclick="farmerUpgrade()">승인</button></td>
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
	
<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
  <div class="container py-4">
    <div class="row d-flex justify-content-center py-5">
      <div class="col-md-6">
        <h2 style="font-size: 22px;" class="mb-0">코코팜의 소식을 전해드립니다.</h2>
        <span>Get e-mail updates about our latest shops and special offers</span>
      </div>
      <div class="col-md-6 d-flex align-items-center">
        <form action="#" class="subscribe-form">
          <div class="form-group d-flex">
            <input type="text" class="form-control" placeholder="Enter email address">
            <input type="submit" value="Subscribe" class="submit px-3">
          </div>
        </form>
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
		function farmerUpgrade() {
			let btn = document.getElementById('btn');
			let btnTr = btn.parentElement.parentElement;
			let btnId = btnTr.firstElementChild.textContent;
			console.log(btnId);
			let url = "farmerAccept.do?btnId=" + btnId;
			fetch(url)
				.then(response => response.text())
				.then(data => { 
					if(data == '0'){
						alert(btnId + "님 승인 완료!")
					} else {
						alert("승인 실패!")
					}
				});
			btnTr.remove(); 
		}
		</script>
</body>
</html>