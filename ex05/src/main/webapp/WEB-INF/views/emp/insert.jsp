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
<h3>사원등록</h3>
<form method="post" action="${pageContext.request.contextPath}/emp/insert">
	firstName : <input name="firstName"><br/>
	lastName : <input name="lastName"><br/>
	email : <input name="email"><br/>
	hireDate : <input type="date" name="hireDate"><br/>
	<!-- 참조키(외래키) : select, radio, checkbox -->
	jobId : <select name="jobId">
			<option value="">선택</option>
			<c:forEach var="job" items="${jobs}">
				<option value="${job.jobId}">${job.jobTitle}</option>
			</c:forEach>
		</select>
	<br/>
	departmentId : <select name="departmentId">
			<option value="">선택</option>
			<c:forEach var="department" items="${departments}">
				<option value="${department.DEPARTMENT_ID}">${department.DEPARTMENT_NAME}</option>
			</c:forEach>
		</select><br/>
	manager : <select name="managerId">
			<option value="">선택</option>
			<c:forEach var="id" items="${ids}">
				<option value="${id.employeeId}">${id.firstName}</option>
			</c:forEach>
		</select><br/>
	<button>등록</button>
</form>
</body>
</html>