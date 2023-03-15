<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓 등록 폼</title>
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
    @import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
	body, a, h2, p, span {
		font-family: 'Gowun Dodum';
	}
	
	h2 {
		font-weight: bold;
	}
    	
	.col-xl-7 {
		background-color: rgb(236, 243, 233);
		padding-top: 15px;
		padding-bottom: 15px;
		padding-left: 50px;
		padding-right: 50px;
		
		 
  		transform: translate(-50%, -50%);
  		box-sizing: border-box;
  		box-shadow: 5px 5px 5px rgba(0,0,0,.6);
 		border-radius: 10px;
	}

	.billing-form .form-control{
		color: black !important;
		background: white !important;

	}
	label{
		font-size: 18px !important;
	}

	.col-xl-7 {
		background-color: rgb(236, 243, 233);
		padding-top: 15px;
		padding-bottom: 15px;
		padding-left: 50px;
		padding-right: 50px;
		
		transform: translate(-50%, -50%);
  		box-sizing: border-box;
  		box-shadow: 5px 5px 5px rgba(0,0,0,.6);
 		border-radius: 10px;
	}

	.billing-form .form-control{
		color: black !important;
		background: white !important;

	}

</style>
</head>
<body>
<div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p>
            <h1 class="mb-0 bread">Market</h1>
          </div>
        </div>
      </div>
    </div>


	<div align="center">
		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-xl-7 ftco-animate">
						<form id="place" action="marketInsert.do" class="billing-form" method="post" enctype="multipart/form-data">
							<h3 class="mb-4 billing-heading">직거래등록 PAGE</h3>
							<div class="row align-items-end">
								
								<div class="w-100"></div>
								
								<div class="col-md-12">
									<div class="form-group">
										<label for="firstname" style="font-size: 16px">작성자</label>
										<input type="text" class="form-control" id="id" name="id" value="관리자" readonly>
									</div>
									</div>
									<div class="w-100"></div>
									<div class="col-md-12">
									<div class="form-group">
										<label for="firstname" style="font-size: 16px">마켓이름</label>
										<input type="text" class="form-control" id="marketName" name="marketName">
									</div>
									</div>
									
									<div class="col-md-12">
									<div class="form-group">
										<labe></label>				
									</div>
								</div>
									
								<div class="w-100"></div>
								<div class="col-md-12">
									<div class="form-group">
										<div class="form-group">
											<label for="firstname" style="font-size: 16px">마켓 전화번호</label>
										<input type="text" class="form-control" id="marketPhone" name="marketPhone">
										</div>
									</div>
								</div>
								
								<div class="col-md-12">
									<div class="form-group">
										<labe></label>				
									</div>
								</div>
								
								<div class="col-md-12">
									<div class="form-group">
										<label for="passwd" style="font-size: 16px">마켓 주소</label>				
										<input type="text" class="form-control" id="marketAdress" name="marketAdress">
									</div>
								</div>
								
								<div class="col-md-12">
									<div class="form-group">
										<labe></label>				
									</div>
								</div>
								
								<div class="w-100"></div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="phone" style="font-size: 16px">마켓 정보</label>
										<textarea class="form-control" id="marketContent" name="marketContent" rows="20" cols="100"></textarea><br>
									</div>
								</div>
								
								<div class="w-100"></div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="email" style="font-size: 16px">마켓 이미지</label>
										<input type="file" class="form-control" id = "image" name="image">
									</div>
								</div>
								<div class="w-100"></div>
								
								<div class="col-md-12">
									<div class="form-group">
										<labe></label>				
									</div>
								</div>
								
								<div class="col-md-6">
									<div class="form-group">
										<label for="firstname" style="font-size: 16px">마켓위도</label>
										<input type="text" class="form-control" id="marketLat" name="marketLat">
									</div>
									</div>
									<div class="col-md-6">
									<div class="form-group">
										<label for="firstname" style="font-size: 16px">마켓경도</label>
										<input type="text" class="form-control" id="marketLon" name="marketLon">
									</div>
									</div>
	
								<div class="w-100"></div>
								<div class="w-100"></div> <!--이거왜넣지?-->
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
					<!-- .col-md-8 -->
				</div>
			</div>
		</section> <!-- .section 자스를 안넣어서 그런거였음 ㅎ -->
		
	
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