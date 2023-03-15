<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세보기</title>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
	*{
      font-family: 'Gowun Dodum' !important;
   	}
	/* reply Btn */
	.replyBtn {
	  overflow: hidden;
	  transition: all 0.3s ease;
	  border : 0;
	  outline : 0;
	  border-radius: 10px;
	  color : gray;
	  width : 50px;
	  height : 30px;
	}
	.replyBtn:hover {
	   background: #b5cfb0;
	  color: #fff;
	}
	.replyBtn:before {
	    position: absolute;
	    content: '';
	    display: inline-block;
	    top: -180px;
	    left: 0;
	    width: 30px;
	    height: 100%;
	    background-color: #fff;
	    animation: shiny-btn1 3s ease-in-out infinite;
	}
	.replyBtn:active{
	  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),
	              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
	    inset -4px -4px 6px 0 rgba(255,255,255,.2),
	    inset 4px 4px 6px 0 rgba(0,0,0, .2);
	}
	
	
	@-webkit-keyframes shiny-btn1 {
	    0% { -webkit-transform: scale(0) rotate(45deg); opacity: 0; }
	    80% { -webkit-transform: scale(0) rotate(45deg); opacity: 0.5; }
	    81% { -webkit-transform: scale(4) rotate(45deg); opacity: 1; }
	    100% { -webkit-transform: scale(50) rotate(45deg); opacity: 0; }
	}
	
	/*테이블*/
	table {
	  border: 1px #a39485 solid;
	  font-size: .9em;
	  box-shadow: 0 2px 5px rgba(0,0,0,.1);
	  width: 800px;
	  border-collapse: collapse;
	  border-radius: 5px;
	  overflow: hidden;
	  margin : 50px;
	}

	th {
	  text-align: center;
	}
	  
	thead {
	  font-weight: bold;
	  font-size : large;
	  color: #fff;
	  background: rgba(177, 207, 137, 0.8);
	}
	  
	 td, th {
	  padding: 1em .5em;
	  text-align: center;
	  vertical-align: middle;
	}
	  
	 td {
	  border-bottom: 1px solid rgba(0,0,0,.1);
	  background: #fff;
	}
	
	a {
	  color: #73685d;
	}
	  
	 @media all and (max-width: 768px) {
	    
		  table, thead, tbody, th, td, tr {
		    display: block;
		  }
		  
		  th {
		    text-align: right;
		  }
		  
		  table {
		    position: relative; 
		    padding-bottom: 0;
		    border: none;
		    box-shadow: 0 0 10px rgba(0,0,0,.2);
		  }
		  
		  thead {
		    float: left;
		    white-space: nowrap;
		  }
		  
		  tbody {
		    overflow-x: auto;
		    overflow-y: hidden;
		    position: relative;
		    white-space: nowrap;
		  }
		  
		  tr {
		    display: inline-block;
		    vertical-align: top;
		  }
		  
		  th {
		    border-bottom: 1px solid #a39485;
		  }
		  
		  td {
		    border-bottom: 1px solid #e5e5e5;
		  }	  
	  }
	  
	  /*리뷰쓰기 qna쓰기 버튼*/
	  .btns {
		  flex: 1 1 auto;
		  margin: 0px;
		  padding: 0px;
		  width : 100px;
		  height : 60px;
		  text-align: center;
		  text-transform: uppercase;
		  transition: 0.5s;
		  background-size: 200% auto;
		  background: #b5cfb0;
		  color: white;
		 /* text-shadow: 0px 0px 10px rgba(0,0,0,0.2);*/
		  box-shadow: 0 0 20px #eee;
		  border-radius: 10px;
		  border : 0;
	 	  outline : 0;
 		}
 		
		.btns:hover {
			 background: #b3b93c;
	  		color: #fff;
 			 background-position: right center; /* change the direction of the change here */
		}
		
	.cgColor{
		font-weight : bold;
		color : rgb(84, 77, 67);
		margin : 10px;
	}
	
	#qnaContent{
		text-align : center();
	}
	  
	
</style>
</head>
<body>
	<div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Products</span></p>
            <h1 class="mb-0 bread">Products</h1>
          </div>
        </div>
      </div>
    </div>
    
	<!--상품상세보기 시작-->
	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 mb-5 ftco-animate">
					<a href="${selectProduct.productImage1}" class="image-popup"><img src="${selectProduct.productImage1}" class="img-fluid"
						alt="Colorlib Template"></a>
				</div>
				<div class="col-lg-6 product-details pl-md-5 ftco-animate">
					<h3>${selectProduct.productName}</h3>
					<!--상품명-->
					<p class="price">
						<span>₩${selectProduct.productPrice}</span>
					</p>
					<!--가격-->
					<p>${selectProduct.productContent}</p>
					<!--설명-->
					<div class="input-group col-md-6 d-flex mb-3">
							<span class="input-group-btn mr-2">
								<button type="button" class="quantity-left-minus btn"
									data-type="minus" data-field="">
									<i class="ion-ios-remove"></i>
								</button>
							</span> <input type="text" id="quantity" name="quantity"
								class="form-control input-number" value="1" min="1" max="100">
							<span class="input-group-btn ml-2">
								<button type="button" class="quantity-right-plus btn"
									data-type="plus" data-field="">
									<i class="ion-ios-add"></i>
								</button>
							</span>
						</div>
					
					<div class="row mt-4">

						<div class="w-100"></div>
						
					</div>
					<p>
						<a href="#" onclick="bagAdd()" class="btn btn-black py-3 px-5">Add to Cart</a>
						 <a href="order.do" class="btn btn-black py-3 px-5">Buy Now</a>
					</p>
				</div>
			</div>
		</div>

		<!-- 리뷰보기 -->
		<div class="pt-5 mt-5">
			<h3 class="cgColor">Review</h3>
			<c:if test="${empty reviewProductList}">
				<p>리뷰가 없습니다</p>
			</c:if>
			<c:if test="${not empty reviewProductList}">
				<table>
				<thead>
					<tr>
						<th>no</th>
						<th>작성자</th>
						<th>content</th>
						<th>Date</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${reviewProductList}" var="r">
						<tr>
							<td>${r.reviewCode}</td>
							<td>${r.customerId}</td>
							<td>${r.reviewContent}</td>
							<td>${r.reviewDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>	
			</c:if>
			
		</div>

		<!-- 리뷰쓰기 -->
		<input type="button" class="btns" value="리뷰 쓰기" name="reviewInput"
			onClick="customerCheck()">
		
		
		<!-- qna보기 -->
		<div class="pt-5 mt-5">
			<h3 class="cgColor" >QnA</h3>
			<c:if test="${empty qnaList}">
				<p>QnA가 없습니다</p>
			</c:if>
			<c:if test="${not empty qnaList}">
				<table class="fold-table">
				<thead>
					<tr>
						<th>No</th>
						<th>Title</th>
						<th>Customer</th>
						<th>Reply</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${qnaList}" var="q">
						<tr class="view">
							<td>${q.qnaCode}</td>
							
							<c:if test="${id eq q.farmerId or id eq q.customerId}">
								<td>
									<a id="on" onclick="onDisplay()" style="display: on;">${q.qnaTitle}</a>
									<a id="hide" onclick="offDisplay()" style="display : none;">${q.qnaTitle}</a>
								</td>
							</c:if>
							
							<c:if test="${id ne q.farmerId and id ne q.customerId}">
								<td>${q.qnaTitle}</td>
							</c:if>
							<td>${q.customerId}</td>

							<c:if test="${q.farmerId eq id}">
								<td><input type="button" class="replyBtn" value="답변" name="replyBtn"
									onClick="location.href='qnaReplyInputForm.do?qnaCode=${q.qnaCode}&farmerId=${q.farmerId}&productCode=${selectProduct.productCode}'"></input></td>
							</c:if>
							<c:if test="${q.farmerId ne id}">
								<td></td>
							</c:if>
						</tr>
						<tr id="noneDiv" style="display: none;">
							<td colspan="4">
								<p class="row-md-5"> 『 ${q.qnaContent} 』</p>
								<input type="button" class="replyBtn" value="QnA 답변 확인" name="qnaReplyBtn"
										onClick="location.href='qnaReplySelect.do?qnaCode=${q.qnaCode}&farmerId=${q.farmerId}&productCode=${selectProduct.productCode}'"></input>
									<c:if test="${not empty qnaReplyCk}">
										<p>👩‍🌾${qnaReplyCk.farmerId}로부터의 답: ${qnaReplyCk.replyContent}</p>
									</c:if>
									<c:if test="${empty qnaReplyCk}">
										<p>👩‍🌾 답변을 준비 중이에요😥. 버튼을 눌러 확인을 해보세요!</p>
									</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</c:if>
		
		<input type="button" class="btns" value="Qna작성" name="qnaInput"
			onClick="location.href='qnaInputForm.do?productCode=${selectProduct.productCode}&farmerId=${selectProduct.farmerId}'">		
		</div>
		
	</section>
	<!-- end of 상세보기 -->




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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

	<script>
	<!--딸깍 딸깍-->
	function onView(){
		let on = document.getElementById('on');
		
		if(on.style.display !== 'none'){
			on.style.display = 'none';
			$('#noneDiv').show();
			$('#hide').show();
		}
		else{
			on.style.display='block';
		}
	};
	
	function offView(){
		let off= document.getElementId('hide');
		if(off.style.display !== 'none'){
			off.style.display='none';
			$('#noneDiv').hide();
			$('#on').show();
		}
		else{
			hide.style.display='block';
		}
	}
	
	<!--딸각딸각-->
	function onDisplay(){
		$('#noneDiv').show();
		$('#nonebutton').show();
		$('#on').hide();
		$('#hide').show();
	
	}
	function offDisplay(){
		$('#noneDiv').hide();
		$('#nonebutton').hide();
		$('#on').show();
		$('#hide').hide();
	}
	
	
		$(document).ready(function() {

			var quantitiy = 0;
			$('.quantity-right-plus').click(function(e) {

				// Stop acting like a button
				e.preventDefault();
				// Get the field name
				var quantity = parseInt($('#quantity').val());

				// If is not undefined

				$('#quantity').val(quantity + 1);

				// Increment

			});

			$('.quantity-left-minus').click(function(e) {
				// Stop acting like a button
				e.preventDefault();
				// Get the field name
				var quantity = parseInt($('#quantity').val());

				// If is not undefined

				// Increment
				if (quantity > 0) {
					$('#quantity').val(quantity - 1);
				}
			});
				

		});
		
		function bagAdd() {
			let productName = "${selectProduct.productName }";
			let productCode = "${selectProduct.productCode }";
			let id = "${id}";
			let productPrice = ${selectProduct.productPrice};
			let count = quantity.value;
			let farmerId = "${selectProduct.farmerId }";
			let url = "bagItemInput.do?productName=" + productName + "&productCode=" + productCode + "&id=" + id + "&productPrice=" + productPrice + "&count=" + count + "&farmerId=" + farmerId;
			
			fetch(url)
			.then(response => response.text())
			.then(data => {
				if(data != null){
					alert("장바구니에 추가했습니다.");
				}
			});
		}
		
		function customerCheck(){
			 let productCode = "${selectProduct.productCode}";
	         let id = '${id}';
	         let url = "customerCheck.do?productCode="+productCode+"&id="+ id;
	         fetch(url)
	         .then(response=> response.text())
	         .then(data => {
	        	if(data == '0'){
	        		location.href='inputReviewForm.do?productCode='+productCode;
	        	}else{
	        		alert("구매한 이력이 없어 리뷰 작성이 불가능 합니다.")
	        	} 
	         });

		 		
		 } 	
		  </script>
	</script>
</body>
</html>