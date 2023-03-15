<%@page import="java.util.List"%>
<%@page import="co.cofarm.prj.bag.vo.BagVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id=(String) session.getAttribute("id");
%>

<!-- 장바구니 추가 -->
<%
ArrayList<BagVO> list = null;

Object obj = session.getAttribute("list");

if(obj==null){
	list = new ArrayList<BagVO>();
}else{
	list=(ArrayList<BagVO>)obj;
}

int count= -1;

if(count == -1){
	List<BagVO> dao = new ArrayList();
	//BagVO vo = new BagVO();

	
	

}

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>