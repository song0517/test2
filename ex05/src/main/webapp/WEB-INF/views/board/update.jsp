<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시글수정</h3>
<form method="post" action="${pageContext.request.contextPath}/board/update">
	글번호 : <input name="bno" value="${board.bno}" readonly="readonly"><br/>
	제목 : <input name="title" value="${board.title}"><br/>
	내용 : <textarea id="content" name="content" rows="5" cols="33">${board.content}</textarea><br/>
	작성자 : <input name="writer" value="${board.writer}"><br/>
	<button>수정</button>
</form>
</body>
</html>