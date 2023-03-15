<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 템플릿 -->
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
 
<title>LOGIN CoCoFarm</title>
</head>
<body>
  <div class="hero-wrap hero-bread" style="background-image: url('images/bg_3.jpg');">
    <div class="container">
      <div class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 ftco-animate text-center">
          <p class="breadcrumbs"><span class="mr-2" ><a href="main.do" style="color: black;">Home</a></span> <span style="color: black;">LOGIN</span>
          </p>
          <h1 class="mb-0 bread" style="color: black;">LOGIN</h1>
        </div>
      </div>
    </div>
  </div>

  <section class="ftco-section">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-xl-3 ftco-animate">
          <form id="frm" action="customerLogin.do" class="billing-form" method="post" style="color: black;">
            <h3 class="mb-4 billing-heading">LOGIN PAGE</h3>
            <div class="row align-items-end">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="id">ID</label>
                  <input  type="text" class="form-control" 
                    type="text" id="id" name="id" required="required" style="color: black;">
                </div>
              </div>
              <div class="w-100"></div>
              <div class="col-md-12">
                <div class="form-group">
                  <label for="passwd">PASSWORD</label>
                  <input type="password" class="form-control"
                  id="passwd" name="passwd" required="required" style="color: black;">
                </div>
              </div>
              <div class="w-100"></div>
              <div class="w-100"></div>
              <div class="col-md-12" style="height: 300px">
                <div class="form-group mt-4" style="margin-bottom: 30px;, margin-top: 15px;">
                    <input type="submit" class="btn btn-primary py-3 px-4" value="Login">&nbsp;&nbsp;&nbsp;
                    <input type="reset" class="btn btn-primary py-3 px-4" value="reset">
                  </div>
                  
                <!-- 카카오 로그인 . 로그아웃 버튼 -->
                <div style="margin-bottom: 40px;, margin-top: 30px">
                <a id="kakao-login-btn"  href="javascript:kakaoLogin()">
       			 <img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="222" /></a>
                </div>
                  
                <i class="fa-solid fa-key-skeleton"></i>
                <i class="fa-solid fa-key-skeleton"></i>
                <i class="fa-regular fa-stars"></i>
                <label onclick="location.href='passwordFindForm.do'" class="mr-3">비밀번호를 잊으셨나요? </label>
              </div>
            </div>
          </form><!-- END -->
        </div>
        <!-- .col-md-8 -->
      </div>
    </div>
  </section>

 <!-- .section -->
<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
  <div class="container py-4">
    <div class="row d-flex justify-content-center py-5">
      <div class="col-md-6">
        <h2 style="font-size: 22px;" class="mb-0">Subcribe to CoCoFarm Newsletter</h2>
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

  <!-- 카카오 : 113bb5ab93da5f8e260e23daa3038435 -->
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
 <script>
 	Kakao.init("113bb5ab93da5f8e260e23daa3038435");
 	
 	function kakaoLogin() {
        window.Kakao.Auth.login({
           scope: 'profile_nickname, account_email',
           success: function (authObj) {
              console.log(authObj);
              window.Kakao.API.request({
                 url: '/v2/user/me',
                 success: res => {
                    const kakao_account = res.kakao_account;
                    var email = res.kakao_account.email;
                    console.log(email);
                    let url2 = "kakaoLogin.do?kakaoId=" + email;
                    location.href = url2;
                 }
              });
           }
        });
     }
 </script>
</body>
</html>