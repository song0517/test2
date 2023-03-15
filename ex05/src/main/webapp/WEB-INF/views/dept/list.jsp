<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	li {
		display: inline-block;
	}
</style>
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

<a href="./insert">>>부서입력<<</a>

<h3>부서목록</h3>
	<ul>
	<li>부서번호</li>
	<li>부서이름</li>
</ul>

<c:forEach items="${depts}" var="dept">
<ul>
	<li><a href="./select?id=${dept.departmentId}">${dept.departmentId}</a></li>
	<li>${dept.departmentName}</a></li>
</ul>
</c:forEach>

<form name="searchFrm">
<!-- 페이징 시작 -->
<my:paging paging="${paging}" jsFunc="gopage"></my:paging>
<input type="hidden" name="page" value="1">
<!-- 페이징 끝 -->
</form>

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