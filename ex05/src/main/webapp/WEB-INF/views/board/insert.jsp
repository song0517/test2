<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시글등록</h3>
<form method="post" action="${pageContext.request.contextPath}/board/insert">
	제목 : <input name="title"><br/>
	내용 : <textarea id="content" name="content" rows="5" cols="33"></textarea><br/>
	작성자 : <input name="writer"><br/>
	<button>등록</button>
</form>
</body>
</html>