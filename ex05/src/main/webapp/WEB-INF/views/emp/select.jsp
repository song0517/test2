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
<h3>사원조회</h3>
<ul>
	<li>사번 : ${emp.employeeId}</li>
	<li>이름 : ${emp.firstName} ${emp.lastName}</li>
	<li>부서번호 : ${emp.departmentId}</li>
	<li>입사일 : ${emp.hireDate}</li>
	<li>job : ${emp.jobId}</li>
</ul>
<button id="btnUpdate">사원수정페이지</button>
<form name = "frm" method="post" action="delete">
<input type="hidden" name="id" value="${emp.employeeId}">
<button id="btnDelete">사원삭제</button>
</form>

<script>
	//get방식
	btnUpdate.addEventListener("click", ev => {
		location.assign('./update?id=${emp.employeeId}');
	});
	
	//post방식
	btnDelete.addEventListener("click", ev => {
		//location.assign('./delete?id=${emp.employeeId}');
		frm.submit();
	})
	
</script>
</body>
</html>