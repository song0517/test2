<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
	h3, h2, button {
		font-family: 'Gowun Dodum';
	}

	#backCover{
		margin: 40px;
		padding: 15px;
		width: 800px;
		background-color: rgb(236, 243, 233);
		
		
  		box-shadow: 5px 5px 5px rgba(0,0,0,.6);
 		border-radius: 10px;
	}
	
	button {
		margin-bottom: 20px;
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

	<div id="backCover">
	<h3>직거래마켓 등록 완료!!</h3>
	</div>
	
	<button type="submit" class="btn btn-primary py-3 px-4" onClick="location.href='marketList.do'">직거래마켓 보기</button>
	
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