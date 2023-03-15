<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>부서등록</h3>
<form method="post" action="${pageContext.request.contextPath}/dept/insert">
	부서번호 : <input name="departmentId"><br/>
	부서이름 : <input name="departmentName"><br/>
	매니저 : <select name="managerId">
			<option value="">선택</option>
			<c:forEach var="id" items="${ids}">
				<option value="${id.employeeId}">${id.firstName}</option>
			</c:forEach>
		</select><br/>
	지역 : <select name="locationId">
			<option value="">선택</option>
			<c:forEach var="loca" items="${locations}">
				<option value="${loca.locationId}">${loca.city}</option>
			</c:forEach>
		</select><br/>
	<button>등록</button>
</form>
</body>
</html>