<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
<html lang="en">
  <head>
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
    
    <style>
	
	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
	body, a, h1 {
		font-family: 'Gowun Dodum';
	}
	
	.h5{
		font-family: 'Gowun Dodum';
		font-weight: bold;
	}

</style>
    
  </head>
  <body class="goto-here">

  

    <div class="hero-wrap hero-bread" style="background-image: url('images/co14.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>FARMS</span></p>
            <h1 class="mb-0 bread">FARMS</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
          <!-- Blog Start -->
        <div class="container">
         <div class="row">
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">함께하는 사람들</h1>
                <p>내 가족도 먹을 수 있는 신선하고 맛있는 농산물을<br> 수확하기 위해 노력하겠습니다!</p>
            </div>
            
            <div class="row g-4">
            	<c:forEach items="${places}" var="p">
              
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <img class="img-fluid" src="${p.farmImage}" onClick="location.href='placeDetail.do?farmCode=${p.farmCode }'" alt="">

                    <div class="bg-light p-4">
                        <a class="d-block h5 lh-base mb-4" href="placeDetail.do?farmCode=${p.farmCode }">${p.farmPlace }</a>
                        <div class="text-muted border-top pt-4">
                            <small class="me-3"><img class="img-fluid" src="images/people.png" alt=""><i class="fa fa-user text-primary me-2"></i>${p.farmName }</small>&nbsp;&nbsp;&nbsp;&nbsp;
                            <small class="me-3"><img class="img-fluid" src="images/phone.png" alt=""><i class="fa fa-calendar text-primary me-2"></i>${p.farmPhone }</small>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            </div>
        </div>
        </div>
      </div>
    </section> <!-- .section -->
    
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