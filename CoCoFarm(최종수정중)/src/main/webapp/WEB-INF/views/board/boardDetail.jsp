<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardDetail</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');

	*{
	box-sizing: border-box;
	font-family: 'Gowun Dodum'; 
	}
	#boardlist{
	width: 800px;
	height: auto;
	display: inline-block;
	}
	#replybox{
	width: 800px;
	height: auto;
	}
	ul{
	list-style: none;
	padding-left: 0;
	border-bottom: 1px solide black;
	}
	.first{
	text-align: left;
	color: black;
	}
	hr{
	margin: 1px;
	}
	#title{
	background-color: rgba(130, 174, 70, 0.5);
	color: black;
	padding: 5px;
	}
	#subcontent{
	text-align: right;
	font-size: small;
	color: gray;
	}
	#content{
	text-align: left;
	height: 300px;
	
	}
	span{
	margin-left: 10px;
	}
	#spantitle{
	font-size: larger;
	font-weight: bold;
	margin-top: 6px;
	}
	.btn{
	width: 50px;
	margin-right: 5px;
	padding: 0;
	}
	#btnbox{
	text-align: right;
	margin-bottom: 10px;
	}
	input{
	padding: 5;
	}
	#boardcontentul{
		overflow: hidden;
		margin-bottom: 8px;
		height: auto;
	}
	#replyul{
	width: 800px;
	padding: 20px;
	}
	#replyul>li{
	text-align: left;
	}
	p{
		display: inline-block;
	}
	#replywriter{
		font-size: large;
		font-weight: bolder;
		color: black;
		margin-right: 20px;
	}
	hr{
	width: 800px;
	}
	#updatebox{
	text-align: left;
	}
	#replyinsert{
	width: 800px;
	height: 160px;
	}
	#replyinsertbox{
	margin-top: 3px;
	text-align: left;
	}
	#replyinsertbtn{
	min-height:113px; 
    min-width: 70px;
	position: relative;
	top: -52px;
	}
	#replytitle{
	margin-top: 50px;
	}
	#replytitleli{
	width: 800px;
	background-color: rgba(130, 174, 70, 0.5);
	color: black;
	font-weight: bold;
	}
	.disbtn{
	margin: 0px;
	cursor: pointer;
	}
	#datespan{
	margin-right: 10px;
	}
	#replydelete{
	margin-left: 1px;
	}
	#on{
	color: #82ae46
	
	}
	#hide{
	color: #82ae46
	}
	input{
		border: 1px solid #82ae46;
		outline: none;
		background-color: #fff;
		color: #82ae46;
		cursor: pointer;
		padding: 10px;
	}
	input:hover{
		background-color: #82ae46;
		color: #fff;
	}
	#nonebutton{
	min-height:88px; 
	position: relative;
	top: -39px;
	}
	.col-md-5{
	max-width: 700px;
	}
</style>
</head>
<body>
<!-- 보드리스트 -->
	<div id="boardlist">

			<ul id="boardcontentul">
				<li class="first"><span>${detailboard.boardCode} | ${detailboard.boardCategory}</span></li>
				<hr>
				<li class="first" id="title"><span id="spantitle">${detailboard.boardTitle}</span></li>
				<hr>
				<li id="subcontent"><span>작성자:${detailboard.boardWriter}<span>|</span><span></span>조회수:${detailboard.boardView}<span>|</span><span></span>${detailboard.boardDate}</span></li>
				<hr>
				<c:if test="${detailboard.boardOfileName.contains('null') == false}">
				<li><td><img src="${detailboard.boardPfileName}" width="700" height="auto"></td></li>
				</c:if>
				<li id="content">${detailboard.boardContent}</li>
			</ul>
			<hr>
	
		
		<div id="btnbox">
			<c:if test="${id == detailboard.boardWriter||id =='admin'}">
				<form class="btn" action="boardupdateform.do?boardCode=${detailboard.boardCode}
				&boardCategory=${detailboard.boardCategory}
				&boardWriter=${detailboard.boardWriter}
				&boardTitle=${detailboard.boardTitle}
				&boardView=${detailboard.boardView}" method="post">
					<input type="submit" value="수정">
				</form>
				<!--<form action="boarddelete.do?bno=${detailboard.boardCode}">-->
				<form class="btn" action="boarddelete.do?bno=${detailboard.boardCode}" method="post">
					<input type="submit" value="삭제">
				</form>
			</c:if>
			<form class="btn" action="board.do">
				<input type="submit" value="목록">
			</form>
			
		</div>
	</div>
	
	
	<!-- 댓글 -->
	<div id="replybox">
	<ul id="replytitle">
		<hr>
		<li id="replytitleli">댓글</li>
		<hr>
	</ul>
	<c:forEach items="${replylist}" var="replylist">
	<ul id="replyul">
		<li id="replyli1"><span id="replywriter">${replylist.boardReplyWriter}</span><span id="datespan">${replylist.boardReplyDate}</span>
			<c:if test="${id == replylist.boardReplyWriter||id =='admin'}">
				<span class="disbtn"><a id="on" onclick="onDisplay()" style="display: on;">수정  |</a></span>
				<span class="disbtn"><a id="hide"onclick="offDisplay()" style="display: none;">수정  |</a></span>
				<span id="replydelete"><a href="boardreplydelete.do?replyCode=${replylist.replyCode}&boardCode=${detailboard.boardCode}">삭제</a></span></li>
				
				<li id="replyli2"><form action="boardreplyupdate.do?replyCode=${replylist.replyCode}&boardCode=${detailboard.boardCode}" method="post">
				<textarea cols="90" rows="3.9" class="col-md-5" id="noneDiv" style="display: none;" name="updateContent">${replylist.boardReplyContent}</textarea>
				<input type="submit" id="nonebutton" style="display: none;" value="등록"></input>
				</form></li>
			</c:if>
			<li id="updatebox"><span>${replylist.boardReplyContent}</span></li>
	</ul>
	<hr>
	</c:forEach>
		
		<form id="replyinsert" action="boardreplyinsert.do?boardCode=${detailboard.boardCode}&boardView=${detailboard.boardView}&id=${id}" method="post">
			<textarea id="replyinsertbox" cols="90" rows="4" name="reply"></textarea>
			<input id="replyinsertbtn" type="submit" value="등록">
		</form> 
	
	</div>
	<script>
		function onDisplay(){
			$('#noneDiv').show();
			$('#nonebutton').show();
			$('#on').hide();
			$('#hide').show();
			$('#updatebox').hide();
		}
		function offDisplay(){
			$('#noneDiv').hide();
			$('#nonebutton').hide();
			$('#on').show();
			$('#hide').hide();
			$('#updatebox').show();
		}
		
		console.log(document.getElementById("category").textContent)
	</script>
</body>
</html>