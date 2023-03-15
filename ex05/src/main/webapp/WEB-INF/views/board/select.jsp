<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	let path = '${pageContext.request.contextPath}';
	$(function() {
		replyList();
		replyInsert();
		
		//등록
		function replyInsert(){
			$("#repInsert").on("click", function(){				
				$.ajax({
					url : path + '/replys',
					method : "post",
					data : $("#form1").serialize()
				}). then(res => {
					alert("등록완료");
					$("tbody").append(makeTr(res));
				})
			})
		}
		
		//수정
		function userUpdate(){
			$("#repUpdate").on("click", function(){
				let rno = $('[name="rno"]').val();
				let tr = $('[data-rno=' + rno + ']');
				$.ajax({
					url : path + '/replys',
					method : "put",
					data : JSON.stringify($("#form1").serializeObject()),
					contentType : "application/json"
				}). then(res => {
					alert("수정완료");
					tr.replaceWith(makeTr(res));
				})
			})
		}
		
		//삭제
		function userDelete(){
			$("tbody").on("click", "#repDelete", function(){
				let tr = $(this).closest("tr");
				let id = $(this).closest("tr").data("id");
				$.ajax({
					url : path + '/users/' + encodeURIComponent(id),
					method : "delete"
					//data : 
					//contentType : 
				}).then(res => {
					alert("삭제완료");
					tr.remove();
				})
			})
		}
		
		//전체조회
		function replyList() {
			let bno = ${board.bno};
			
			$.ajax({
				url : path + '/replys/' + encodeURIComponent(bno) 
			}).then(res => {
				for(reply of res){
					$("tbody").append(makeTr(reply));
				}
			})
		}
		
		function makeTr(reply){
			let tag = `<tr data-rno="\${reply.rno}">
				<td>\${reply.replyer}</td>
				<td>\${reply.reply}</td>
				<td>\${reply.replydate}</td>
				<td><button type="button" id="repUpdate">수정</button></td>
				<td><button type="button" id="repDelete">삭제</button></td>
			</tr>`
			return tag;
		}
	})
</script>

<h3>게시글조회</h3>
<ul>
	<li>게시판번호 : ${board.bno}</li>
	<li>제목 : ${board.title}</li>
	<li>내용 : ${board.content}</li>
	<li>작성자 : ${board.writer}</li>
	<li>작성일자 : ${board.regdate}</li>
</ul>
<button id="btnUpdate">내용수정페이지</button>
<form name = "frm" method="post" action="delete">
<input type="hidden" name="bno" value="${board.bno}">
<button type="button" id="btnDelete">게시글삭제</button>
</form>

<h3>댓글리스트</h3>
<form id="form1">
	<div class="form-group">		
			댓글번호 : <input type="text"  class="form-control" name="rno" >
	</div>
	<div class="form-group">		
			작성자 : <input type="text"  class="form-control" name="replyer" >
	</div>
	<div class="form-group">		
			내용 : <input type="text"  class="form-control" name="content" >
	</div>
	<button type="button" id="repInsert">댓글등록</button>
</form>

<table class="table table-hover">
		<thead>
		<tr><th>작성자</th><th>댓글내용</th><th>작성일자</th><th>수정</th><th>삭제</th></tr>
		</thead>
		
		<tbody>
			
		</tbody>
	</table>

<script>
	//get방식
	btnUpdate.addEventListener("click", ev => {
		location.assign('./update?bno=${board.bno}');
	});
	
	//post방식
	btnDelete.addEventListener("click", ev => {
		//location.assign('./delete?id=${emp.employeeId}');
		frm.submit();
	})
	
</script>
</body>
</html>