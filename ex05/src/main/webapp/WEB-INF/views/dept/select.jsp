<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>부서조회</h3>
<ul>
	<li>부서번호 : ${dept.departmentId}</li>
	<li>부서이름 : ${dept.departmentName}</li>
	<li>매니저 : ${dept.managerId}</li>
	<li>지역 : ${dept.locationId}</li>
</ul>
<button id="btnUpdate">부서수정페이지</button>
<form name = "frm" method="post" action="delete">
<input type="hidden" name="id" value="${dept.departmentId}">
<button id="btnDelete">부서삭제</button>
</form>

<script>
	//get방식
	btnUpdate.addEventListener("click", ev => {
		location.assign('./update?id=${dept.departmentId}');
	});
	
	//post방식
	btnDelete.addEventListener("click", ev => {
		//location.assign('./delete?id=${emp.employeeId}');
		frm.submit();
	})
	
</script>
</body>
</html>