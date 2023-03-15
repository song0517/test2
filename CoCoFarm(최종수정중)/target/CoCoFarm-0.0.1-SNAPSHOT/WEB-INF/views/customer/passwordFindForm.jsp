<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/4bca2c978c.js" crossorigin="anonymous"></script>
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
<title>Send Password CoCoFarm</title>
</head>
<body>
	<div class="hero-wrap hero-bread" style="background-image: url('images/bg_3.jpg');">
		<div class="container">
		  <div class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
			  <p class="breadcrumbs"><span class="mr-2" ><a href="main.do" style="color: black;">Home</a></span> <span style="color: black;">LOGIN</span>
			  </p>
			  <h1 class="mb-0 bread" style="color: black;">SEND PASSWORD</h1>
			</div>
		  </div>
		</div>
	  </div>

	  <section class="ftco-section">
		<div class="container">
		  <div class="row justify-content-center">
			<div class="col-xl-3 ftco-animate">
			  <form id="frm" action="passwordFind.do" class="billing-form" method="post">
				<h3 class="mb-3 billing-heading">비밀번호 찾기</h3>
				<label class="mr-3">비밀번호를 찾을 아이디를 입력하세요.</label>
				<div class="row align-items-end">
				  <div class="col-md-12">
					<div class="form-group">
					  <label for="id">아이디</label>
					  <input  type="text" class="form-control" placeholder=""
						type="text" id="id" name="id" required="required">
					</div>
				  </div>
				  <div class="w-100"></div>
				  <div class="col-md-12">
					<div class="form-group mt-4">
						<input type="submit" class="btn btn-primary py-3 px-4" value="Send Password to Email">&nbsp;&nbsp;&nbsp;
					  </div>
					  <div class="w-100"></div>
					  <label onclick="location.href='customerLoginForm.do'" class="mr-3">다시 로그인 하기</label>
				  </div>
				</div>
			  </form><!-- END -->
			</div>
			<!-- .col-md-8 -->
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