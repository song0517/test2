<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>
<body>
		<div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
			<div class="container">
				<div class="row no-gutters slider-text align-items-center justify-content-center">
					<div class="col-md-9 ftco-animate text-center">
						<p class="breadcrumbs"><span class="mr-2"><a href="main.do">Home</a></span> <span>JOIN</span>
						</p>
						<h1 class="mb-0 bread">JOIN</h1>
					</div>
				</div>
			</div>
		</div>
	
		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-xl-7 ftco-animate">
						<form id="frm" action="customerJoin.do" class="billing-form" onsubmit="return formSubmit()" method="post">
							<h3 class="mb-4 billing-heading">JOIN PAGE</h3>
							<div class="row align-items-end">
								<div class="col-md-6">
									<div class="form-group">
										<label for="firstname">ID</label>
										<input type="text" class="form-control" placeholder=""
											type="text" id="id" name="id" required="required">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<button type="button" class="btn btn-primary py-3 px-4"
										id="btn" value="No" onclick="idCheck()">Double check</button></td>
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-md-12">
									<div class="form-group">
										<div class="form-group">
											<label for="firstname">NAME</label>
											<input type="text" class="form-control" placeholder=""
											 id="name" name="name" required="required">
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="passwd">PASSWORD</label>
										<input type="password" class="form-control" placeholder=""
										id="passwd" name="passwd" required="required">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="passwd1">PASSWORD CHECK</label>
										<input type="password" class="form-control" placeholder=""
										id="passwd1" name="passwd1" required="required">
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="phone">PHONE</label>
										<input type="text" class="form-control" placeholder=""
										id="phone" name="phone" required="required">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="email">EMAIL</label>
										<input type="text" class="form-control" placeholder=""
										id="email" name="email" required="required">
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="sample6_postcode">POST CODE</label>
										<input type="text" class="form-control" placeholder=""
										id="sample6_postcode" name="postcode">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<button type="button" class="btn btn-primary py-3 px-4"
										onclick="sample6_execDaumPostcode()">Search Postcode</button></td>
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="sample6_address">Address</label>
										<input type="text" class="form-control" placeholder="Address"
										id="sample6_address" name="address">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="detail Address etc: (optional)"
										id="sample6_detailAddress" name="detailAddress">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="sample6_extraAddress">Extra Address</label>
										<input type="text" class="form-control" placeholder="extraAddress"
										id="sample6_extraAddress" name="extraAddress">
									</div>
								</div>
								<div class="w-100"></div>
								<div class="w-100"></div> <!--이거왜넣지?-->
								<div class="w-100"></div>
								<div class="col-md-12">
									<div class="form-group mt-4">
										<input type="submit" class="btn btn-primary py-3 px-4" value="submit">&nbsp;&nbsp;&nbsp;
										<input type="reset" class="btn btn-primary py-3 px-4" value="reset"></a>
									</div>
								</div>
							</div>
						</form><!-- END -->
					</div>
					<!-- .col-md-8 -->
				</div>
			</div>
		</section> <!-- .section 자스를 안넣어서 그런거였음 ㅎ -->
		<!-- .section -->
	<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
		<div class="container py-4">
		  <div class="row d-flex justify-content-center py-5">
			<div class="col-md-6">
			  <h2 style="font-size: 22px;" class="mb-0">CoCoFarm 의 소식을 보내드립니다</h2>
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
	function formSubmit() {
		console.log(document.getElementById("passwd").value);
		console.log(document.getElementById("passwd1").value);
		if(frm.btn.value == 'No'){
			alert("아이디 중복체크를 하세요");
			return false;
		}
		if(document.getElementById("passwd").value != document.getElementById("passwd1").value){
			alert("패스워드가 같지 않습니다.")
			frm.passwd.value = "";
			frm.passwd1.value ="";
			frm.passwd.focus();
			return false;
		}
	}
	
	function idCheck() { //아이디 중복체크
		let id = frm.id.value;
		let url ="customerIdCheck.do?id=" + id;
		fetch(url)
			.then(response => response.text())
			.then(data => { //결과 처리 함수
				if(data =='1'){
					alert(id + " 사용가능한 아이디입니다.")
					frm.btn.value= 'Yes'; 
				} else{
					alert(id + "은 이미 사용 중인 아이디입니다.")
					frm.id.value="";
					frm.id.focus();
				};
			});
	}
	</script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
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
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
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
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</body>
</html>