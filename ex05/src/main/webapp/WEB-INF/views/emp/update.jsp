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
<h3>사원수정</h3>
<form name="searchFrm" method="post" action="${pageContext.request.contextPath}/emp/update">
	employeeId : <input name="employeeId" value="${emp.employeeId}" readonly="readonly"><br/>
	firstName : <input name="firstName" value="${emp.firstName}"><br/>
	lastName : <input name="lastName" value="${emp.lastName}"><br/>
	email : <input name="email" value="${emp.email}"><br/>
	hireDate : <input type="date" name="hireDate" value="${emp.hireDate}"><br/>
	jobId : <select name="jobId">
				<option value="">선택</option>
			<c:forEach var="job" items="${jobs}">
				<option value="${job.jobId}">${job.jobTitle}</option>
			</c:forEach>
		</select><br/>
	departmentId : <select name="departmentId">
			<option value="">선택</option>
			<c:forEach var="department" items="${departments}">
				<option value="${department.DEPARTMENT_ID}">${department.DEPARTMENT_NAME}</option>
			</c:forEach>
		</select><br/>
	managerId : <select name="managerId">
			<option value="">선택</option>
			<c:forEach var="id" items="${ids}">
				<option value="${id.employeeId}">${id.firstName}</option>
			</c:forEach>
		</select><br/>
	<button>수정</button>
</form>

<script>
	searchFrm.jobId.value = '${emp.jobId}'
	searchFrm.departmentId.value = '${emp.departmentId}'
	searchFrm.managerId.value = '${emp.managerId}'	
</script>
</body>
</html>