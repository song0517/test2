<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
    
    <link rel="stylesheet" type="text/css" href="https://www.chef1.co.kr/wp-content/themes/chefone/assets/css/custom/fonts.css" media="none" onload="this.media='all';" />
   
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="https://www.chef1.co.kr/wp-content/themes/chefone/style.css?v=20220622042105" />
	<link rel="stylesheet" type="text/css" href="https://www.chef1.co.kr/wp-content/themes/chefone/assets/css/custom/header.css?v=20220628035552" />
	<link rel="stylesheet" type="text/css" href="https://www.chef1.co.kr/wp-content/themes/chefone/assets/css/custom/footer.css?v=20220624020804" />
	<link rel="stylesheet" type="text/css" href="https://www.chef1.co.kr/wp-content/themes/chefone/assets/css/custom/page.css?v=20220802052249" />

    <style>
    
	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
	body {
		font-family: 'Gowun Dodum';
	}

	
	td, a, h2, th, div, p, button, span{
		font-family: 'Gowun Dodum';
	}
	
	.ProdSingleHeader-title{
		font-family: 'Gowun Dodum';
	}
	
	.sidebar-box h3.heading{
		font-family: 'Gowun Dodum';
	}

			.site {
				padding: 0;
				width : 750px;
				float : left;		
			}
			
			.sidebar-box{
				float : right;
			}
			
			.ProdSingleDetailThumb {
        		width: 700px;
				height: 500px;
        		margin: 10px;
			}

		     .ProdSingleDetailCont{
		        padding: 10px;
		        margin: 10px;
		        width: 700px;
		     }
		     
		     .ProductCategoryTitle{
		     	margin-bottom: 20px;
		     }
		     
		     .site{
		     	width: 1500px;
		     	padding-left: 50px;
		     }
		     
		     .ftco-section{
		     	padding: 50px 0px;
		     }
		</style>
  </head>
  <body>
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p>
            <h1 class="mb-0 bread">Blog</h1>
          </div>
        </div>
      </div>
    </div>
    
     <c:if test="${empty farms }">
  	<p><br><br></p>
  	<h3>등록한 농장 정보가 없습니다. 추가해 주시기 바랍니다.</h3>
  </c:if>

<c:if test="${not empty farms }">
   <section class="ftco-section ftco-degree-bg">
    
      <div class="row">
        <div class="site">
	<div class="ProductCategoryTitle"><h2 style="text-align: center;" class="ProdSingleHeader-title">농장상세조회</h2></div>
	<!-- .ProductList -->
	<article class="post-335 post type-post status-publish format-standard hentry category-prod-sauce" id="post-335"> 
		<div class="siteSingle">
			<div class="ProdSingle">
				<div class="ProdSingleDetail">
					<!-- 제품 이미지 -->
					<div class="ProdSingleDetailThumb">
						<img id = "image" src="${farms.farmImage }">
					</div>
					
					<!-- .제품 이미지 -->
					<!-- 제품 상세 -->
					<div class="ProdSingleDetailCont">

						<div class="ProdSingleDetailCont-header">
							<div class="ProdSingleHeader">
								<h2 style="text-align: center;" class="ProdSingleHeader-title">${place.farmPlace }</h2>
							</div>
						</div>
						
						<div class="ProdSingleDetailCont-cont">
							<div class="ProdSingleInfo">
								<table class="ProdSingleInfo-table">
									<colgroup>
										<col style="width:21.62%">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<th>농장이름</th>
											<td>${farms.farmPlace }</td></td>
										</tr>
										<tr>
											<th>주소</th>
											<td>${farms.farmAddress }</td></td>
										</tr>
										<tr>
											<th>연락처</th>
											<td>${farms.farmPhone }</td>
										</tr>
										<tr>
											<th>주요판매품목</th>
											<td>${farms.farmProduct }</td>
										</tr>
										<tr>
											<th>농장소개</th>
											<td>${farms.farmContent }</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					
				</div>
				<p><br></p>
				<button type="submit" class="btn btn-primary py-3 px-4" onClick="location.href='placeDelete.do?farmCode=${farms.farmCode }'">삭제</button>
			</div>
		</div>
	</article>
</div>
         

        </div>
      
    </section> <!-- .section -->
	</c:if>
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