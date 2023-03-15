<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>

 <!-- Audio -->
 <!--  되는지 나중에 확인해보기,,,
    <audio 
      class="scene__audio" 
      src="https://files.freemusicarchive.org/storage-freemusicarchive-org/tracks/qxhQtRkkH7S6zhFamfm4QuuegDv6rE503icCqvi4.mp3" 
      preload="auto">
    </audio>
    <div class="scene__grid">
      <header class="scene__header">
        <div>
          <h3 class="scene__title">Kaufmann Desert House</h3> 
          <span class="scene__sep"></span>
          <p class="scene__text">In 1946, Richard Neutra designed the Kaufmann Desert House. A modernist classic, this mostly glass residence incorporated the latest technological advances in building materials, using natural lighting and floating planes and flowing space for proportion and detail.[86] In recent years an energetic preservation program has protected and enhanced many classic buildings.</p>
        </div>
      </header>
      <figure class="scene__media">
        <div class="scene__img" style="background-image: url(https://source.unsplash.com/YIMXYjQoBBU/1400x1800)"/>
      </figure>
    </div>
  </article>
 <audio!-->

<title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
                    button {
                        border: none;
                        border-radius: 200px;
                    }
                </style>


</head>


<body class="goto-here">



	<div class="hero-wrap hero-bread"
		style="background-image: url('images/bg_1.jpg');">
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				
					<p class="breadcrumbs">
						<span class="mr-2"></span> <span>cocofarm</span>
					</p>
						<h1 class="mb-0 bread">Checkout</h1>
			</div>
		</div>
	</div>

	<form action="complete.do?customerId?${id }" class="billing-form">
	
				<br>

				<h3 class="mb-4 billing-heading">${name }님 결제페이지</h3>
	          
	          		<div class="col-md-6">
	                <div class="form-group">Name
	                  <input type="text" class="form-control" name="name" value="${name}">
	                </div>
					</div>
	
		  
	            	<div class="col-md-6">
	                <div class="form-group">Adreess
	                  <input type="text" class="form-control" name="home" required>
	                </div>
					</div>
			
	            
		      
		            <div class="col-md-6">
		            	<div class="form-group">phone
	                  <input type="text" class="form-control" name="phone" value="${phone}" placeholder="Phone number">
	           		 </div>
	              </div>
	              
					<div class="col-md-6">
	                <div class="form-group">Email
	                  <input type="text" class="form-control" name="email" value="${email}">
	                </div>
				</div>
	          </form>
	          		<br>
	          		
	       <div class="col-xl-5">
	          <div class="row mt-5 pt-3">
	          	<div class="col-md-12 d-flex mb-5">
	          		<div class="cart-detail cart-total p-3 p-md-4">
	          			<h3 class="billing-heading mb-4">Cart Total</h3>
	          			<p class="d-flex">
		    						<span>Subtotal</span>
		    						<span>${sum }</span>
		    					</p>
								</div>
	          	</div>
	          	
	              	
	          	<div class="col-md-12">
	          		<div class="cart-detail p-3 p-md-4">
	          			<h3 class="billing-heading mb-4">Payment Method</h3>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="optradio" class="mr-2"> Direct Bank Tranfer</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="checkbox">
											   <label><input type="checkbox" value="" class="mr-2"> I have read and accept the terms and conditions</label>
											</div>
										</div>
									</div>
					<button id="kakaoPayBtn" type="button" onclick="requestPay('20221116-24')"><a href="#" class="btn btn-primary py-3 px-4">KAKAOPAY</a></button>
								<button id="reset" type="button"><a href="main.do" class="btn btn-primary py-3 px-4">RESET</a></button>
								</div>
	          	</div>
	          </div>
          </div>
	          		
	          		
		<div class="button_1">
			<!-- <input id="kakaoPayBtn" type="submit" onclick="requestPay('TEST')" value="결제" > -->
			<button id="kakaoPayBtn" type="button" onclick="requestPay('TEST')">
			</button>
			
		</div>
	 
        
        

	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script>
		var IMP = window.IMP; // 팝업창
		IMP.init("imp50165265");// 아임포트 가맹점 식별코드

		//시간생성
		var today = new Date();
		var hours = today.getHours();
		var minutes = today.getMinutes();
		var seconds = today.getSeconds();
		var milliseconds = today.getMilliseconds();
		var makeMerchantUid = hours + minutes + seconds + milliseconds;

		function requestPay(itemName) {
			console.log(itemName);
			IMP.request_pay({
				pg : 'kakaopay',
				merchant_uid : "IMP" + makeMerchantUid, // 상점에서관리하는 상품번호
				name : itemName, //상품명
				amount : ${sum}, //가격
				buyer_email : '${email}', //구매자 이메일
				buyer_name : '${name}', //구매자 이름
				buyer_tel : '${phone}', //구매자 번호
				buyer_addr : '${address}', //구매자 주소 
				buyer_postcode : '123-456'

			}, function(rsp) { // callback
				if (rsp.success) {
					console.log(rsp);
					var msg = '결제가 완료되었습니다.\n';
					msg += '고유ID : ' + rsp.imp_uid + "\n";
					msg += '상점 거래ID : ' + rsp.merchant_uid + "\n";
					msg += '결제 금액 : ' + rsp.paid_amount + '원\n';
					msg += '카드 승인번호 : ' + rsp.apply_num;
					window.location.href = "complete.do"
				} else {
					console.log(rsp);
					var msg = '결제에 실패하였습니다.\n';
					msg += '에러내용 : ' + rsp.error_msg;
				}
				alert(msg);
			});
		}
	</script>
</body>
</html>