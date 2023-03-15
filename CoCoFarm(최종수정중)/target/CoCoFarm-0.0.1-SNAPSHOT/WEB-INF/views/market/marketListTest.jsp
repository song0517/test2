<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!doctype html>
    <html lang="ko">

    <head>
        <meta charset="utf-8">
        <link rel="icon" type="image/x-icon" href="/img/newbird/favicon.ico">
        <meta name="viewport" id="meta_viewport"
            content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10">
        <meta name="HandheldFriendly" content="true">
        <meta name="format-detection" content="telephone=no">
        <meta http-equiv="imagetoolbar" content="no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>직거래 리스트</title>
        <link rel="canonical" href="https://eurocave.co.kr/">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/js/font-awesome/css/font-awesome.min.css?ver=220620">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/js/swiper/swiper.min.css?ver=220620">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/js/fade_effects.css?ver=220620">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
            rel="stylesheet">
        <link href="//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/pes_layout.css?ver=220620">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/kdg_layout.css?ver=220620">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/jhj_layout.css?ver=220620">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/trx_layout.css?ver=1668393393">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/pes_layout_1600.css"
            media="(max-width: 1600px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/kdg_layout_1600.css"
            media="(max-width: 1600px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/jhj_layout_1600.css"
            media="(max-width: 1600px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/pes_layout_1440.css"
            media="(max-width: 1440px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/kdg_layout_1440.css"
            media="(max-width: 1440px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/jhj_layout_1440.css"
            media="(max-width: 1440px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/trx_layout_1440.css?ver=1668393393"
            media="(max-width: 1440px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/pes_layout_1200.css"
            media="(max-width: 1200px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/kdg_layout_1200.css"
            media="(max-width: 1200px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/jhj_layout_1200.css"
            media="(max-width: 1200px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/trx_layout_1200.css?ver=1668393393"
            media="(max-width: 1200px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/pes_layout_1024.css"
            media="(max-width: 1024px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/kdg_layout_1024.css"
            media="(max-width: 1024px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/jhj_layout_1024.css"
            media="(max-width: 1024px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/pes_layout_768.css"
            media="(max-width: 768px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/kdg_layout_768.css"
            media="(max-width: 768px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/jhj_layout_768.css"
            media="(max-width: 768px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/trx_layout_768.css?ver=1668393393"
            media="(max-width: 768px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/pes_layout_540.css"
            media="(max-width: 540px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/kdg_layout_540.css"
            media="(max-width: 540px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/jhj_layout_540.css"
            media="(max-width: 540px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/trx_layout_540.css?ver=1668393393"
            media="(max-width: 540px)">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/js/owlcarousel/owl.carousel.css?ver=220620">
        <link rel="stylesheet" href="https://www.eurocave.co.kr/skin/board/gallery/style.css?ver=220620">
        <meta name="description" content="세계 최초의 와인셀러 브랜드 ’유로까브’는 완벽한 와인경험을 선사하는 프랑스 하이엔드 제품으로 최상의 와인 보존과 숙성기술을 구현합니다.">
        <meta property="og:type" content="https://eurocave.co.kr/">
        <meta property="og:title" content="유로까브 EuroCave">
        <meta property="og:description"
            content="세계 최초의 와인셀러 브랜드 ’유로까브’는 완벽한 와인경험을 선사하는 프랑스 하이엔드 제품으로 최상의 와인 보존과 숙성기술을 구현합니다.">
        <meta property="og:image" content="https://eurocave.co.kr/img/newbird/new_main/img_logo.png">
        <meta property="og:url" content="https://eurocave.co.kr/">


        <link rel="stylesheet" href="https://www.eurocave.co.kr/theme/basic/css/default_shop.css?ver=220620">

        <script src="https://www.eurocave.co.kr/js/jquery-1.12.4.min.js?ver=220620"></script>
        <script src="https://www.eurocave.co.kr/js/jquery-migrate-1.4.1.min.js?ver=220620"></script>
        <script src="https://www.eurocave.co.kr/js/jquery.shop.menu.js?ver=220620"></script>
        <script src="https://www.eurocave.co.kr/js/common.js?ver=220620"></script>
        <script src="https://www.eurocave.co.kr/js/wrest.js?ver=220620"></script>
        <script src="https://www.eurocave.co.kr/js/placeholders.min.js?ver=220620"></script>
        <script src="https://www.eurocave.co.kr/js/swiper/swiper.min.js?ver=220620"></script>
        <script src="https://www.eurocave.co.kr/js/fade_effects.js?ver=220620"></script>
        <script src="https://www.eurocave.co.kr/js/owlcarousel/owl.carousel.min.js?ver=220620"></script>
		
		<style>
		 @import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
	body, a, h2, p, span {
		font-family: 'Gowun Dodum';
	}
	
	h2 {
		font-weight: bold;
	}
		
			.mbskin{
				padding: 50px;
				background-color: white;
			}
			
			footer{
				background-color: white;
			}
			
			.mbskin .mbskin_box{
				padding: 10px;
			}
			
			.gall_row .col-gn-3{
				height: 567.17px;
			}
			
			img {
				width: 430px;
				height: 351.17px;
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
        <!-- 전체 콘텐츠 시작 { -->
        <div id="wrapper" class="is_community">
            <!-- #container 시작 { -->
            <div id="container">
                <!-- .shop-content 시작 { -->
                <div class="">
                    <!-- 게시판 목록 시작 { -->
                    <div class="mbskin brdSkin">
                        <div class="mbskin_box brdBox">
                            <!-- 이벤트 타이틀 -->
                            <h2 class="mbrTtl">살펴보아요 <span class="mbrTtlClr">직거래</span></h2>
                            
                            <div id="bo_gall" class="brdGallery" style="width:100%">
                                <ul id="gall_ul" class="gall_row">
                                	
                                <c:forEach items="${markets }" var="m">
                                    <li class="gall_li col-gn-3 eventLst" onClick="location.href='marketDetail.do?marketNo=${m.marketNo}'">
                                        <div class="gall_box">
                                            <div class="gall_con ">
                                                <div class="gall_img" style="">
                                                    <a href="#">
                                                        <img src="${m.marketImage }" alt="" width="1150px"
                                                            height="1150px">
                                                    </a>
                                                </div>

                                                <div class="gall_text_href">
                                                    <a href="marketDetail.do?marketNo=${m.marketNo}" class="bo_tit eventTtl">
                                                        ${m.marketName }
                                                        <i class="fa fa-heart" aria-hidden="true"></i>
                                                    </a>
                                                    <span class="bo_cnt">${m.marketAdress }</span>
                                                </div>
                                                <div class="gall_info">
                                                    <span class="gall_date eventDate">${m.marketPhone }</span>
                                                    <div class="eventCt">
                                                        <a href="marketDetail.do?marketNo=${m.marketNo}"
                                                            class="eventOnly">살펴보기</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    </c:forEach>
                                </ul>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
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