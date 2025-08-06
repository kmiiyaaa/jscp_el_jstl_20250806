<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택</title>
</head>
<body>

		<h2>장바구니에 넣을 상품을 선택하세요</h2>
		<hr>
		<form action = "addToCart.jsp">
			상품종류:
			<select name="product">
				<option value="스마트폰">스마트폰</option>
				<option value="노트북">노트북</option>
				<option value="아이패드">아이패드</option>
				<option value="이어폰">이어폰</option>		
			</select>
			<br>
			상품색상 :
			<select name="color">
				<option value="검정">검정</option>
				<option value="파랑">파랑</option>
				<option value="분홍">분홍</option>
			</select>
			<br>
			상품수량 : <input type="text" name="quantity" size="3" min="1" value="1"><br>
		
		 <input type="submit" value="장바구니 담기" >
		</form>
		<hr>
		<a href = "viewCart.jsp"> 장바구니 보기 </a>
	

</body>
</html>