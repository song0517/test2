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



</style>




</head>

<body>
<!--  <b>'<%= session.getAttribute("name") %>'의 판매내역</b>	-->



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
<div class="font">
  <h1>Order</h1>
  <span>${name }님</span>
</div>
	
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
							<th>  Consumer</th>
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