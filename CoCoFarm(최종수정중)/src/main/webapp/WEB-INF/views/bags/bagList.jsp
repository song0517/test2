<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<title>Cocofarm</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">
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
@import
	url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap')
	;

body {
	font-family: 'Gowun Dodum';
}

th {
	text-align: center;
}
</style>
</head>

<body>
	<b>${name }의 장바구니</b>
	<div align="center">

		<div>
			<div class="hero-wrap hero-bread"
				style="background-image: url('images/bg_1.jpg');">
				<div class="container">
					<div
						class="row no-gutters slider-text align-items-center justify-content-center">

						<p class="breadcrumbs">

							<span>Cart</span>
						</p>
						<h1 class="mb-0 bread">My Cart</h1>
					</div>
				</div>
			</div>
		</div>

		<section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
					<div>
						<c:if test="${not empty id}">
							<!--  <h3>'${id}'님 장바구니</h3>-->
						</c:if>
					</div>
					<!--  테이블 th부분! -->

					<table class="table">
						<thead class="thead-primary">
							<tr class="text-center">
								<th>choice</th>
								<th>Product</th>
								<th>Image</th>
								<th>Price</th>
								<th>Count</th>
								<th>Sum</th>
							</tr>
						</thead>

						<form id="shop" action="order.do" method="post">
							<tbody>
								<c:forEach var="bag" items="${bags}">
									<tr>
										<td><input type="checkbox" name="check" id="allCheck"
											value="${bag.productCode}"></td>
										<td>${bag.productName }</td>
										<td><img width="150px" src="${bag.image}" alt="iamge">
										</td>
										<td>${bag.productPrice }</td>
										<td class="quantity">${bag.quantity}</td>
										<td class="price">${bag.sum }</td>
									</tr>
									</tr>

								</c:forEach>

								<div class="cart-total mb-3">
									<h3>Cart Totals</h3>
									<p class="d-flex">
										<span>Subtotal</span> <span>${sum}</span>
									</p>

									<tr>
										<td colspan="5">
											<p>
												<a href="main.do" id="removeBtn"
													class="btn btn-primary py-3 px-4" onclick="removeBtn()">다시
													돌아가기</a> <a href="order.do?customerId=${id }" id="submitBtn"
													class="btn btn-primary py-3 px-4">상품 구매하기</a>
											</p>
										</td>
									</tr>
							</tbody>
					</table>
				</div>
			</div>
		</section>

		<script type="text/javascript">

								var priceElement = document.getElementsByClassName('price')

								var sum = 0;
								for (var i = 0; i < priceElement.length; i++) {
									var t = priceElement[i].innerText;
									sum += parseInt(t);
								}

								document.getElementById('sumTd').innerText = sum

								$('#removeBtn').click(function () {
									/*
									if(shop.check.value==checked){
										confirm("선택하신 상품을 삭제합니다.")
											for(var i=0; i<list.length; i++){
												if(list[i].checked){
													list[i].parentElement.parentElemnet.remove();			
											}
									}
									}*/
									//end of formSubmit

									$('input:checkbox[name=check]').each(function (index) {

										if ($(this).is(":checked") == true) {
											var code = $(this).val();
											console.log(code)
											//location.href = "bagDelete.do?code="+code

											//create element (form)
											var newForm = $('<form></form>');
											//set attribute (form) 
											newForm.attr("name", "newForm");
											newForm.attr("method", "get");
											newForm.attr("action", "/CoCoFarm/bagDelete.do");

											// create element & set attribute (input) 
											newForm.append($('<input/>', { type: 'hidden', name: 'code', value: code }));

											// append form (to body) 
											newForm.appendTo('body');

											// submit form
											newForm.submit();

										}
									})

								});

								var allCheck = document.querySelector(".allCheck");// 전체삭제 
								var list = document.queryselectorAll(".check");

								var removeBtn = document.querySelector(".removeBtn"){ //선택삭


									removeBtn.onclick = () => {
										for (var i = 0; i < list.length; i++) {
											if (list[i].checked) {
												list[i].parentElement.parentElemnet.remove();
											}
										}
									}

							</script>
</body>

</html>