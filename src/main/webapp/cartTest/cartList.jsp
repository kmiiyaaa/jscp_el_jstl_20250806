<%@page import="com.kmii.cart.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table {
		width: 800px;
		border-collapse: collapse;
		background-color: white;
		box-shadow: 0 0 10px rgba(0,0,0,0.1);
	}
	</style>
<title>장바구니 목록</title>
</head>
<body>
<% 

	request.setAttribute("cartList", session.getAttribute("cart"));
	
	%>
	
	<h2>장바구니 목록</h2>
	<hr>
	<table>
		<tr>
			<th>번호</th>
			<th>상품 종류</th>
			<th>색상</th>
			<th>수량</th>
		</tr>
		
		<c:forEach var="boardDto" items="${cartList}"  varStatus="loop">
			<tr>
				<td>${loop.index + 1}</td>
				<td>${boardDto.product}</td>
				<td>${boardDto.color}</td>
				<td>${boardDto.quantity}</td>
			</tr>
		</c:forEach>
		
		
		
	</table>

</body>
</html>