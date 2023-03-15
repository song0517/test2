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
		     
		     .ProdSingleHeader-title{
		     	padding-top: 50px;
		     }
		     
		     #left{
		     	text-align: left;
		     }
		     
		     #image {
		     	max-width: 750px;
		     }
		</style>
  </head>
  <body class="goto-here">
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

   <section class="ftco-section ftco-degree-bg">
    <div class="container">
      <div class="row">
        <div class="site">
	<div class="ProductCategoryTitle"><h2 style="text-align: center;" class="ProdSingleHeader-title">직거래상세조회</h2></div>
	<!-- .ProductList -->
	<article class="post-335 post type-post status-publish format-standard hentry category-prod-sauce" id="post-335"> 
		<div class="siteSingle">
			<div class="ProdSingle">
				<div class="ProdSingleDetail">
					<!-- 제품 이미지 -->
					<div class="ProdSingleDetailThumb">
						<img id = "image" src="${market.marketImage }">
					</div>
					
					<!-- 제품 상세 -->
					<div class="ProdSingleDetailCont">
					<p><br></p>
						<div class="ProdSingleDetailCont-header">
							<div class="ProdSingleHeader">
								<h2 style="text-align: center;" class="ProdSingleHeader-title">${market.marketName }</h2>
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
											<th>행사 연락처</th>
											<td>${market.marketPhone }</td>
										</tr>
										<tr>
											<th onclick="openInfoWindow()">주소</th>
											<td onclick="openInfoWindow()">${market.marketAdress }</td>
										</tr>
									</tbody>
								</table>
								
								<div id="left">
								<p><br>  </p>
								<p>${market.marketContent }</p>
								</div>
								
							</div>
						</div>
					</div>
					<!-- .제품 상세 -->
				</div>
				<button type="submit" class="btn btn-primary py-3 px-4" onClick="location.href='marketList.do'">목록으로</button>
			</div>
		</div>
	</article><!-- .post -->
</div>
          <div class="col-lg-4 sidebar ftco-animate">
            <div class="sidebar-box">
              <form action="#" class="search-form">
                <div class="form-group">
                  <span class="icon ion-ios-search"></span>
                  <input type="text" class="form-control" placeholder="Search...">
                </div>
              </form>
            </div>
            <div class="sidebar-box ftco-animate">
            	<h3 class="heading">Categories</h3>
              <ul class="categories">
                <li><a href="#">Fruits <span>(30)</span></a></li>
                <li><a href="#">Vegetable <span>(22)</span></a></li>
                <li><a href="#">Cereal <span>(15)</span></a></li>
                <li><a href="#">Processed Food <span>(25)</span></a></li>
              </ul>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3 class="heading">Blog</h3>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                <div class="text">
                  <h3 class="heading-1"><a href="#">신선한 채소를 이용한 샐러드 만들기</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> April 09, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                <div class="text">
                  <h3 class="heading-1"><a href="#">완두콩이 우리 몸에 필요한 이유는?</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> April 09, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_3.jpg);"></a>
                <div class="text">
                  <h3 class="heading-1"><a href="#">좋은 재료로 맛있는 음식을 만들어요.</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> April 09, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
            </div>

         
            <div class="sidebar-box ftco-animate">
              <h3 class="heading">COCOFARM</h3>
              <p>COCOFARM에서는 항상 신선하고 맛 좋은 농산물들을 여러분들의 집에서 맛볼 수 있도록 노력하겠습니다! <br>항상 신선한 하루되시길 바랍니다!</p>
            </div>
          </div>

        </div>
      </div>
    </section> <!-- .section -->
  
   <script>
	function openInfoWindow() {
		console.log('클릭OK');
		//console.log(e);
		let lng = ${market.marketLat }
		let lat = ${market.marketLon }
		console.log(lng);
		console.log(lat);
		window.location.href = 'infoWindow.html?x=' + lng + '&y=' + lat;
	}
	</script>
	
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