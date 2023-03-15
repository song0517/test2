<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
	<div align="center">
		<div>
			<h1>직거래 목록보기</h1>

		</div>
		
		<table border='1'>
		<thead>
			<tr><th>이름</th><th>전화번호</th><th>주소</th></tr>
		
		<tbody id="list">
			<c:forEach items="${markets }" var="m">
				<tr lat="${m.marketLat }" lon="${m.marketLon }" onClick="location.href='marketDetail.do?marketNo=${m.marketNo}'">
					<td>${m.marketName }</td>
					<td>${m.marketPhone }</td> 
					<td>${m.marketAdress }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<script>
		//document.querySelectorAll('#list>tr').addEventListener('click', openInfoWindow);
		
		//document.querySelectorAll('#list>tr').forEach(tr => {addEventListener('click', openInfoWindow)});
		
		//function openInfoWindow(e) {
		//	console.log('클릭OK');
		//	console.log(e);
		//	let lng = e.target.parentElement.getAttribute('lat');
		//	let lat = e.target.parentElement.getAttribute('lon');
		//	console.log(lng);
		//	console.log(lat);
		//	window.location.href = 'infoWindow.html?x=' + lng + '&y=' + lat;
		//}
	</script>
</body>
</html>