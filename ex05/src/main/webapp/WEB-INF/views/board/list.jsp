<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	$(function(){
		let result = '${result}';
		let result2 = '${param.result2}';
		if(result){
			//alert(result);
			$(".modal-body").html(result);
			/*//모달 생성
			const myModal = new bootstrap.Modal('#exampleModal', {
				 keyboard: false
			})
			//모달 show
			exampleModal = document.querySelector("#exampleModal");
			mymodal.show(exampleModal);*/
			$('#exampleModal').modal();
			$("#exampleModal").modal('show');
		}
	})
</script>

<h3>게시판목록</h3>
<a href="./insert">>>게시글입력<<</a>

<!-- 검색조건 시작 -->
	<form name="searchFrm">
		제목 : <input name="title" value="${boardVO.title}">
		작성자 : <input name="writer" value="${boardVO.writer}">
		<input type="hidden" name="page" value="1">
		<button>검색</button>
	</form>
<!-- 검색조건 종료 -->
	
<!-- 목록 시작 -->
	<table class="table table-hover">
		<thead>
		<tr><th>NO</th><th>제목</th><th>작성자</th><th>작성일자</th></tr>
		</thead>
		
		<tbody>
			<c:forEach var="board" items="${boards}" varStatus="st">
				<tr>
					<td>${st.count }</td>
					<td><a href="./select?bno=${board.bno}">${board.title }</a></td>
					<td>${board.writer }</td>
					<td>${board.regdate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<!-- 목록 끝 -->

<!-- 페이징 시작 -->
<my:paging paging="${paging}" jsFunc="gopage"></my:paging>
<!-- 페이징 끝 -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>

<script>
	function gopage(i){
		searchFrm.page.value = i;
		searchFrm.submit();
	}
</script>
</body>
</html>