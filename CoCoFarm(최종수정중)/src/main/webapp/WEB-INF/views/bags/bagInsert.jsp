<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardUpdateForm</title>
</head>
<body>
	<div>
		<div><h1>장바구니 추가</h1></div>
		<div>
		<form action="baginsert.do"?productName=${insertbag.productName}&quantity=${insertbag.quantity}&sum=${insertbag.sum}" method="post">
			작성자:세션
			카테고리:<select id="select" name="category">

			상품:<input type="text" id="title" name="productName" value="${insertbag.productName}"><br/>
			수량:<input type="file" id="avatar" name="quantity" value="${insertbag.quantity}"></inpuut><br/>
			합계:<input type="file" id="avatar" name="sum" value="${insertbag.sum}"></inpuut><br/>
			<input type="submit" value="확인">
			</form>
			<form action="baglist.do">
			<input type="submit" value="취소">
			</form>
		</div>
	</div>
</body>
</html>