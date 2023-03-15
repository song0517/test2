<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">


    <title>Cocofarm</title>
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
  </head>

<style>
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
   body{
      font-family: 'Gowun Dodum';
   }


th{
text-align: center;

}

.btn-three {
  color: #FFF;
  transition: all 0.5s;
  position: relative;
}
.btn-three::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 1;
  background-color: rgba(255,255,255,0.1);
  transition: all 0.3s;
}
.btn-three:hover::before {
  opacity: 0 ;
  transform: scale(0.5,0.5);
}
.btn-three::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 1;
  opacity: 0;
  transition: all 0.3s;
  border: 1px solid rgba(255,255,255,0.5);
  transform: scale(1.2,1.2);
}
.btn-three:hover::after {
  opacity: 1;
  transform: scale(1,1);
}

</style>




</head>

<body>
<!--  <b>'<%= session.getAttribute("name") %>'의 구매내역</b>	-->



	<div align="center">
		<div>
		
		<c:if test="&{not empty id}">
				<h1>${name} 구매내역 </h1>
		</c:if>
		
		</div>
		<div>
		
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
         
          	<p class="breadcrumbs">
          	
          	<span>Cart</span></p>
           <h1 class="mb-0 bread">My Order</h1>
          </div>
        </div>
      </div>
    </div>
	<div class="sidebar-box ftco-animate fadeInUp ftco-animated">
			<h3 class="heading">CoCoFarm은</h3>
			많은 분들의 정직한 땀과 정성어린 손길이 함께 했기에, 이렇게 알찬 열매을 맺을 수 있었습니다 
		  </div>

<c:if test="${auth eq  'user'}">

	
		<!-- 테스트!   -->
		<section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate fadeInUp ftco-animated">
    				
	    				<table class="table">
						    <thead class="thead-primary">
						<tr class="text-center">
							<th> 　Product</th>
							<th>  Image</th>
							<th>  Count</th>
							<th>  Farmer Id</th>
						</tr>
						    </thead>
							<tbody>
	
		<c:forEach var="item" items="${items}"> <!-- 구매자 구매내역/ 판매자 판매내역! -->
				<tr>
						<td>
						${item.productName}
						</td>
						<td>
						<img width="150px" src="${item.image}" alt="iamge">
						</td>
						<td>
						${item.productCount}
						</td>
						<td>
						${item.farmerId }
					 </td>
					</tr>
					</c:forEach>
					
					</tbody>
						  </table>
		
		</div>
						 
						  
						  
					  </div>
    			</div>
    		</div>
		</section>
</c:if>
	
	<c:if test="${auth eq  'farmer'}">

		
		<!-- 테스트!   -->
		<section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate fadeInUp ftco-animated">
    				
	    				<table class="table">
						    <thead class="thead-primary">
						<tr class="text-center">
							<th> 　Product</th>
							<th>  Image</th>
							<th>  Count</th>
							<th>  Farmer Id</th>
						</tr>
						    </thead>
							<tbody>
	
		<c:forEach var="item" items="${items}"> <!-- 구매자 구매내역/ 판매자 판매내역! -->
				<tr>
						<td>
						${item.productName}
						</td>
						<td>
						<img width="150px" src="${item.image}" alt="iamge">
						</td>
						<td>
						${item.productCount}
						</td>
						<td>
						${item.farmerId }
					 </td>
					</tr>
					</c:forEach>
					
					</tbody>
						  </table>
					  </div>
    			</div>
    		</div>
		</section>
</c:if>
	
	
	

</body>
</html>