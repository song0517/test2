<%@page import="co.cofarm.prj.bag.vo.BagVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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

th{
text-align: center;

}
</style>

</head>

<body>
<!--  <b>'<%= session.getAttribute("name") %>'의 구매내역</b>	-->



	<div align="center">
		<div>
		
		<c:if test="&{not empty id}">
				<h1>${name}님 구매내역</h1>
		</c:if>
		
		</div>
		<div>
		
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
         
          	<p class="breadcrumbs">
          	
          	<span>Cart</span></p>
           <h1 class="mb-0 bread">My Cart</h1>
          </div>
        </div>
      </div>
    </div>
      			 <section class="ftco-section ftco-cart">
				<div class="container">
				<div class="row">
  
<!--  테이블 th부분! -->
						
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						      	<h1> 구매내역 </h1>
						        <th> 　Product name</th>
						        <th>  Image</th>
						        <th> 　Price</th>
						        <th> 　Quantity</th>
						        <th> 　Price</th>
						      </tr>
						    </thead>
						    
				
			<form id="shop" action="mypage.do" method="post">
				<tbody>
					<c:forEach var="bag" items="${bags}">
					<tr>
					
						<td>
						${bag.productName }
						</td>
						<td>
						<img width="150px" src="${bag.image}" alt="iamge">
						</td>
						<td>
						${bag.productPrice }
						</td>
						<td class="quantity">
						${bag.quantity}
						</td>
						<td class="price">
						${bag.sum }
						</td>
						</tr>
					</c:forEach>
    				</tbody>
    				
				</table>
						<div class="cart-total mb-3">
    					<h3>Cart Totals</h3>
    						<p>￦ ${sum }</p>
    					
    					</div>
    					<a href="main.do" id="removeBtn" class="btn btn-primary py-3 px-4">다시 돌아가기</a>
			</div>
			</form>
			
			
<script type="text/javascript">
 