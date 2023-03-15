
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<h3>질문등록하기</h3>
<form action="./question.do" method="post">
	ID: <input type="text" name="id"><br>
	CONTENTS: <input type="text" name="contents"><br>
	Name: <input type="text" name="name"><br>
	Email: <input type="text" name="email"><br>
	<input type="submit" value="등록">
</form>