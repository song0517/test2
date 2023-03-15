<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qna입력폼</title>
</head>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
	*{
      font-family: 'Gowun Dodum' !important;
   	}
	.btn {
	  background-color : rgba(177, 207, 137, 0.8);
	  overflow: hidden;
	  margin : 0;
	  padding : 0;
	  transition: all 0.3s ease;
	  border : 0;
	  outline : 0;
	  border-radius: 10px;
	  color : gray;
	  width : 100px;
	  height : 50px;
	  text-weight : bold;
	}
	.btn:hover {
	   background: #b5cfb0;
	  color: #fff;
	}
	.btn:before {
	    position: absolute;
	    content: '';
	    display: inline-block;
	    top: -180px;
	    left: 0;
	    width: 30px;
	    height: 100%;
	    background-color: #fff;
	    animation: shiny-btn1 3s ease-in-out infinite;
	}
	.btn:active{
	  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),
	              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
	    inset -4px -4px 6px 0 rgba(255,255,255,.2),
	    inset 4px 4px 6px 0 rgba(0,0,0, .2);
	}
	
	#divReview{
		width: 600px;
		margin: 20px;
		padding-bottom : 0px;
		
	}
	
	#reviewContent{
		margin-bottom : 40px;
	}
	
	#frm{
		margin : 30px;
	}
	
	#frmTitle{
		font-weight : bold;
		color : rgb(84, 77, 67);
	}
</style>
<body>
	<div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Products</span></p>
            <h1 class="mb-0 bread">${type}</h1>
          </div>
        </div>
      </div>
    </div>
    
    
    <div class="comment-form-wrap pt-5" id="divReview">
    	<h3 class="mb-5" id="frmTitle">Reply QnA</h3>
        	<form id="frm" action="qnaReplyInput.do?productCode=${productCode}&farmerId=${farmerId}&qnaCode=${qnaCode}" class="p-5 bg-light" method="post">
                  <div class="form-group">
                    <label for="id">Id *</label>
                    <input type="text" class="form-control" id="id" name="id" value="${id}" readonly>
                  </div>
                  <div class="form-group">
                    <label for="reviewContent">Reply Content</label>
                    <textarea id = "replyContent" name="replyContent" rows="10" cols="20" class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <input type="submit" value="답변 등록" class="btn">&nbsp;&nbsp;
					<input type="reset" value="취소" class="btn" onClick="history.go(-1)">&nbsp;&nbsp;	
                  </div>
			</form>
     </div>
	
</body>
</html>