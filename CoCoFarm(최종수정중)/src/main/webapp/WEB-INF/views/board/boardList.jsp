<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
	*{
		box-sizing: border-box;
		font-family: 'Gowun Dodum'; 
	}
	#show{
		width: 900px;
		height: 650px;
		margin-top:90px
	}
	#list{
		width: 900px;
	}
	.listbutton{
		cursor : pointer;
	}
	.listbutton:hover{
		background-color: rgba(130, 174, 70, 0.5)
	}
	.listbutton:hover{
		color: white;
	}
	tr{
		border-bottom: 1px solid;
	}
	td{
		padding-top: 5px;
		padding-bottom: 5px;
		
	}
	.view{
		width: 80px;
		text-align: center;
		
	}
	.thdate{
		text-align: center;
	}
	.date{
		width: 150px;
		
	}
	.writer{
		width: 100px;
		text-align: center;
		
	}
	.num{
		width: 80px;
		text-align: center;
		
	}
	.pagination{
		width: 300px;
		margin-top: 15px;
		display: inline-block;
		margin-left: 190px;
	}
	a{
		margin-right: 6px;
	}
	th{
		color: black
	}
	.title{
		width: 370px;
	}

.search-wrapper.active {
	display: inline-block;
}

.search-wrapper .input-holder {    
    height: 35px;
    width:70px;
    overflow:hidden;
    background: rgba(255,255,255,0);
    border-radius:6px;
    position: relative;
    transition: all 0.3s ease-in-out;
	margin-bottom: 20px;
}
.search-wrapper.active .input-holder {
    width:450px;
    overflow:visible;
    border-radius: 50px;
    background: #82ae46;
	opacity:0.6;
    transition: all .5s cubic-bezier(0.000, 0.105, 0.035, 1.570);
    
}
.search-wrapper .input-holder .search-input {

    width:100%;
    height: 16px;
    padding:0px 35px 0 10px;
    opacity: 0;
    position: absolute;
    top:0px;
    left:0px;
    background: transparent;
    box-sizing: border-box;
    border:none;
    outline:none;
    font-family:"Open Sans", Arial, Verdana;
    font-size: 16px;
    font-weight: 400;
    line-height: 20px;
    color:#FFF;
    transform: translate(0, 60px);
    transition: all .3s cubic-bezier(0.000, 0.105, 0.035, 1.570);
    transition-delay: 0.3s;
}
.search-wrapper.active .input-holder .search-input {
    opacity: 1;
    transform: translate(0, 10px);
    
}
.search-wrapper .input-holder .search-icon {
    width:10px;
    height:10px;
    border:none;
    border-radius:6px;
    background: #FFF;
    padding:0px;
    outline:none;
    position: relative;
    z-index: 2;
    float:right;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
}
.search-wrapper.active .input-holder .search-icon {
    width: 30px;
    height:30px;
    margin: 2px;
    border-radius: 30px;
}
input::placeholder {
  color: white;
  font-style: italic;
}
.search-wrapper .input-holder .search-icon span {
    width:22px;
    height:22px;
    display: inline-block;
    vertical-align: middle;
    position:relative;
    
    transform: rotate(45deg);
    transition: all .4s cubic-bezier(0.650, -0.600, 0.240, 1.650);
}
.search-wrapper.active .input-holder .search-icon span {
    transform: rotate(-45deg);
}
.search-wrapper .input-holder .search-icon span::before, .search-wrapper .input-holder .search-icon span::after {
    position: absolute; 
    content:'';
}
.search-wrapper .input-holder .search-icon span::before {
    width: 5px;
    height: 11px;
    left: 8px;
    right:20px;
    top: 10px;
    border-radius: 2px;
    background: #82ae46;
}
.search-wrapper .input-holder .search-icon span::after {
    width: 14px;
    height: 14px;
    left: 4px;
    top: -1px;
    border-radius: 16px;
    border: 4px solid #82ae46;
}

/*글쓰기 버튼*/

.button {
color: #82ae46;
text-decoration: none;
text-align: center;
display: block;
height: 40px; line-height: 44px;
width: 150px;
border: 1px solid #82ae46;
position: relative;
left: 0; top: 0; right: 0; bottom: 0;
margin: auto;
}
.button span, .button i {
display: inline-block;
z-index: 100;
font-style: normal;
}
.backgroundHover{
z-index: -1;
position: relative; 
top: 0; left: 0; 
height: 100%; width: 100%;
background: #fff;
}
.btn-wrap{
width: 180px;
margin-top: 10px;
display: inline-block;
position: relative; 
left:375px;
top:-45px;
}

.button:hover{
font-size: 20px;
font-weight: bolder;
line-height: 40px; 
background-color: #82ae46;
color: #FFF;
margin-top: 0px;
	  
}
#notice{
background-color: rgba(214, 214, 214, 0.3);
font-weight: 900;
}
#notice:hover{
color: #fff;
background-color: rgba(130, 174, 70, 0.5)
}
</style>


  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="hero-wrap hero-bread" style="background-image: url('images/co8.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>COMMUNITY</span></p>
            <h1 class="mb-0 bread">COMMUNITY</h1>
          </div>
        </div>
      </div>
    </div>


<div id="show">
		<!-- <form action="bordSearch.do" method="post">
			<input type="text" name="search">
			<input type="submit" name="searchbutton" value="검색"> 
		</form><br> -->
		<div class="search-wrapper">
			<div class="input-holder">
				<form action="bordSearch.do">
					<input type="text" class="search-input" placeholder="Type to search" name="search"/>
					<input type="submit" id="search-icon" class="search-icon" onclick="searchToggle(this, event);" name="searchbutton" value="Q"><span></span></input>

					<span class="close" onclick="searchToggle(this, event);"></span>
				</form>
			</div>
			
		</div>
	<div>

		<table id='list'>
			<thead>
				<tr><th class="num">글번호</th><th>글카테고리</th><th>제목</th><th class="writer">작성자</th><th class="thdate">작성일</th><th class="view">조회수</th></tr>
			</thead>
			 <tbody>
			 	  <c:forEach items="${boards }" var="b">
				 	<c:if test="${b.boardCategory =='공지사항'}">
				 		<tr onClick="location.href='boarddetail.do?dno=${b.boardCode}&boardview=${b.boardView}'" class="listbutton" id="notice"><td class="num">•</td><td>${b.boardCategory}</td><td class="title">${fn:substring(b.boardTitle, 0, 30)}</td><td class="writer">${fn:substring(b.boardWriter, 0, 5)}</td><td class="date">${b.boardDate}</td><td class="view">${b.boardView}</td></tr>
				 	</c:if>
				 </c:forEach>
			 	 
				 <c:forEach items="${boards }" var="b">
				 	<c:if test="${b.boardCategory!='공지사항'}">
				 		<tr onClick="location.href='boarddetail.do?dno=${b.boardCode}&boardview=${b.boardView}'" class="listbutton"><td class="num">${b.boardCode}</td><td>${b.boardCategory}</td><td class="title">${fn:substring(b.boardTitle, 0, 30)}</td><td class="writer">${fn:substring(b.boardWriter, 0, 5)}...</td><td class="date">${b.boardDate}</td><td class="view">${b.boardView}</td></tr>
				 	</c:if>
				 </c:forEach>
				 
			 </tbody>
		 </table>	
		 
		 <!--page-->
		 <div class='pagination'>
			<c:if test="${page.prev }">
				<a href="board.do?page=${page.startPage- 1}">&laquo;</a>
			</c:if>
			
			
		
			<c:forEach var="i" begin="${page.startPage}" end="${page.endPage }" step="1">
				<c:choose>
					<c:when test="${page.pageNum == i }">
						<a class='active' href="board.do?page=${i }"> ${i }</a>
					</c:when>
					<c:otherwise>
						<a href="board.do?page=${i }"> ${i }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
		
		
			<c:if test="${page.next }">
				<a href="board.do?page=${page.endPage+1}">&raquo;</a>
			</c:if>
		 </div>
		 <!--end of page-->
		 
		 <!-- 글쓰기 버튼-->
		 <div class="btn-wrap">
			<a href="boardwriteform.do?" class="button">
			  <span>글</span><span>쓰</span><span>기</span> 
			  
			  <b class="backgroundHover"></b>
			</a>
		  </div>
		 
	</div>
</div>



<script>
	function searchToggle(obj, evt){
    var container = $(obj).closest('.search-wrapper');
        if(!container.hasClass('active')){
            container.addClass('active');
            evt.preventDefault();
        }
        else if(container.hasClass('active') && $(obj).closest('.input-holder').length == 0){
            container.removeClass('active');
            // clear input
            container.find('.search-input').val('');
        }
	}
	document.getElementById("search-icon").click();

	//글쓰기 버튼
	var button = document.querySelector(".button"),
    background = document.querySelector(".backgroundHover"),
    firstWord = document.querySelectorAll(".button span"),
    secondWord = document.querySelectorAll(".button i");

	var tl = new TimelineMax({ paused:true });
	tl.staggerTo(firstWord, 1, {color: "rgba(11,73,156)", rotationX: 360, ease: Expo.easeOut}, 0.03, "#start");
	tl.staggerTo(secondWord, 1, {color: "rgba(11,73,156)", rotationX: 360, ease: Expo.easeOut}, 0.03, "#start");
	tl.from(background, 0.25, {scaleX:"0%", transformOrigin:"left center", ease: Quad.easeImOut}, "#start");
	
	
	button.addEventListener("mouseenter",function(){
	  tl.play();
	});
	
	button.addEventListener("mouseleave",function(){
	  tl.reverse();
	});
	
	
</script>

<script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  
</body>
</html>