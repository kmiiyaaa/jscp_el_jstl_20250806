<%@page import="com.kmii.cart.ProductDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 장바구니</title>
<style>
table {
		width: 400px;
		border-collapse: collapse;
		background-color: white;
		box-shadow: 0 0 10px rgba(0,0,0,0.1);
	}
th, td {
		border: 1px solid #ccc;
		padding: 12px;
		text-align: center;
		font-size: 15px;
	}

	th {
		background-color: #004080;
		color: white;
	}

	tr:nth-child(even) {
		background-color: #f2f6fb;
	}

	tr:hover {
		background-color: #dce6f1;
	}

	a {
		text-decoration: none;
		color: #004080;
		font-weight: bold;
	}

	a:hover {
		color: #00264d;
		text-decoration: underline;
	}	
	
	</style>
</head>
<body>
	<%
	 // 세션에 들어있는 상품목록 cart 가져오기(ArrayList 타입)	
		ArrayList<ProductDto> cart	= (ArrayList<ProductDto>) session.getAttribute("cart");
	  request.setAttribute("cart", cart);
	
	 %>
	
	<c:choose>
	<c:when test="${cart==null }"> <!--  test="${Empty sessionScope,cart} 가능-->
		<h2>장바구니가 비었습니다.</h2>
	</c:when>
	<c:otherwise>
	<h2>장바구니 목록</h2>
	<hr>
	<table>
		<tr>
			<th>번호</th>
			<th>상품 종류</th>
			<th>색상</th>
			<th>수량</th>
		</tr>
		
	<!--  	<c:forEach var="productDto" items="${cart}"  varStatus="status">  이방법이 더 좋다
			<tr>
				<td>${status.index + 1}</td>       status index값이 0부터 시작 / 인덱스값으로 대신 쓸 수 있다   status.count쓰면 1부터 나온다  
				<td>${productDto.product}</td>     EL표기법은 이렇게하면 getter호출  
				<td>${productDto.color}</td>
				<td>${productDto.quantity}</td>
			</tr>
		</c:forEach> -->
		
			<c:set var="count" value="0"/>
			<c:forEach var="productDto" items="${cart}">  <!-- 위에 request 없는경우) items="${sessionScope.cart}"쓰면 바로 쓸 수 있다 -->
					<tr>
						<td>${count=count+1}</td>      
						<td>${productDto.product}</td>    
						<td>${productDto.color}</td>
						<td>${productDto.quantity}</td>
					</tr>
		</c:forEach>
	
	</table>
	</c:otherwise>
	</c:choose>
	
		<a href = "removeCart.jsp">장바구니 비우기</a><br>
    <a href = "productList.jsp">상품 선택 페이지로 돌아가기</a>
    
</body>
</html>