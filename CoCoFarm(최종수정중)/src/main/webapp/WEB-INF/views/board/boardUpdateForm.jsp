<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
    String ctx = request.getContextPath();    //콘텍스트명 얻어오기.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardUpdateForm</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');

	*{
	font-family: 'Gowun Dodum'; 
	}
	#show{
		width: 900px;
		height: 850px;
		margin-bottom: 80px;
	}
	#writetable{
	width: 900px;
	border-left: 0;
	border-right: 0;
	}
	.title{
	background-color: #82ae46;
	opacity: 0.6;
	
	}
	#textarea{
		margin-top: 10px;
	}
	p{
		text-align: center;
		margin: 15px;
		color: #fff;
		font-weight: bolder;
	}
	#select{
		margin:10px;
	}
	#title{
		margin:10px;
		width : 785px
	}
	#avatar{
		margin:10px;
	}
	span{
		margin-left: 10px;
	}
	#okbutton{
		position: relative;
		top: 795px;
		left: -30px;
	}
	#notbutton{
		position: relative;
		top: 25px;
		left:35px;
	}
	.witerbtn{
		border: 1px solid #82ae46;
		outline: none;
		background-color: #fff;
		color: #82ae46;
		cursor: pointer;
		padding: 10px;
	}
	.witerbtn:hover{
		background-color: #82ae46;
		color: #fff;
	}
	</style>
</head>
<body>
	<div id="show">
		<div>
			<form id="form" action="boardUpdate.do?date=${updateboard.boardDate}
			&view=${updateboard.boardView}
			&code=${updateboard.boardCode}
			&ofilename=${updateboard.boardOfileName}
			&pfilename=${updateboard.boardPfileName}" method="post">
				<table id="writetable" border="1">
					<tr><td class="title"><p>작성자:</p></td><td><span>${id}</span></td></tr>
					<tr><td class="title"><p>카테고리:</p></td><td><select id="select" name="category">
								<c:if test="${id =='admin'}">
								<option>공지사항</option>
								</c:if>
								<option>자유주제</option>
								<option>Q&A</option>
								<option>이벤트</option>
								<option>기타</option>
							</select></td></tr>
					<tr><td class="title"><p>제목:</p></td><td><input type="text" id="title" name="title" value="${updateboard.boardTitle}"></td></tr>
					<tr><td class="title"><p>첨부:</p></td><td><input type="file" id="avatar" name="file"></inpuut></td></tr>
					<tr><td colspan="2" id="textarea"><textarea id=textarea2 cols="124.5" rows="15" name="content">${vo.boardContent}</textarea></td></tr>
					<input class="witerbtn" type="submit" value="확인" id="okbutton">
				</table>
			</form>
			<form action="board.do">
			<input class="witerbtn" type="submit" value="취소" id="notbutton">
			</form>
		</div>
	</div>
	
	<script type="text/javascript" src="<%=ctx %>/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
var oEditors = []


	  nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors,
	    elPlaceHolder: "textarea2",
	    sSkinURI:"/CoCoFarm/smarteditor/SmartEditor2Skin.html",
	    htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,             
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : false,     
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : false,         
            fOnBeforeUnload : function(){
                 
            }
        }, 
	    fCreator:"createSEditor2"
	  })
	
	
	  //저장버튼 클릭시 form 전송
	  $("#okbutton").click(function(){
		  oEditors.getById["textarea2"].exec("UPDATE_CONTENTS_FIELD", []);
		  $("#form").submit();
	  });    
			

</script>
</body>
</html>