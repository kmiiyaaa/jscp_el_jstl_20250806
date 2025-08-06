<%@page import="com.kmii.cart.ProductDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 추가</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
	
	  String product = request.getParameter("product"); 
	  String color = request.getParameter("color");
	  // String quantity = request.getParameter("quantity");
	  int quantity = Integer.parseInt(request.getParameter("quantity"));
	  // ProductDto를 만들자!
	  
	 
	  ArrayList<ProductDto> cart = (ArrayList<ProductDto>)session.getAttribute("cart");
	  //cart라는 arraylist가 있는지 확인 -> 존재하면 가져오기
	 
	  
	  if (cart == null) {  // cart가 null값일 때만 ArrayList 새로 생성
		  cart = new ArrayList<ProductDto>();  // 새 장바구니 생성
	  }	  
	 
	  //객체단위로 넣어줘야하니까 생성자 호출해서 바로넣어준다
	  cart.add(new ProductDto(product,color,quantity));
	  
	  
	  request.setAttribute("product", new  ProductDto(product,color,quantity));
	  
	  // 세션에 상품 목록 저장
	  session.setAttribute("cart", cart);  
	
	%>
	
	<h2>장바구니에 ${product.product} ${product.color}이(가) ${product.quantity}개 추가되었습니다.</h2>
	<a href = "productList.jsp"> 상품 더 담기 </a><br>
	<a href = "viewCart.jsp"> 장바구니 보기 </a>
	


</body>
</html>