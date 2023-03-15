<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 입니다.</title>
</head>
<body>
	<p>${name} ${auth } 님 하이요</p>
	<c:if test="${auth eq 'user'}">
	<a href="customerUpdateForm.do">내 회원정보 수정</a><br/>
	<a href="farmerJoinForm.do">FARMER 등록</a><br/>
	<a href="#">내 주문 목록</a><br/>
	<a href="#">내 후기 보기</a><br/>
	</c:if>

	<c:if test="${auth eq  'farmer'}">
	<a href="customerUpdateForm.do">내 회원정보 수정</a><br/>
	<a href="farmerUpdateForm.do">농장정보 수정</a><br/>
	<a href="#">내 농장 상품보기</a><br/>
	<a href="#">내 주문 목록, 농장주지만 물건 살 수도있어서 ㅎ</a><br/>
	<a href="#">내 후기 보기</a><br/>
	</c:if>
	
	<c:if test="${auth eq 'admin'}">
	<a href="customerList.do">(관리자)CUSTOMER  LIST</a><br/>
	<a href="farmerAcceptList.do">(관리자)농업인 승인 리스트</a><br/>
	</c:if>
</body>
</html>