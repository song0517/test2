<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	tr {
		border: 1px solid blue;
	}
	th, td {
		border: 1px dotted red;
	}
</style>
</head>
<body>
	<h3>📑나의 질문들</h3>
	<table boarder='1'>
		<tr><th>아이디</th><th>제목</th><th>게시일자</th></tr>
		<c:forEach var="faq" items="${list }">
			<tr>
				<td>${faq.id }</td><td>${faq.contents }</td><td>${faq.date }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
</head>
<body>
<%
	String info = (String) application.getAttribute("info");
	session.getAttribute("id");

%>

</body>
</html>