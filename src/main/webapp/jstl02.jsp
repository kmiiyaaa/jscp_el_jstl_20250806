<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습2</title>
</head>
<body>
		
		<h2>자바 사용</h2>
		<% 
				if(10 >5){
		%>
					<h1>10은 5보다 크다</h1>
		<%	
				} else {
		
		%>
		<h1>10은 5보다 작다</h1>
		<%	
				}
		
		%>
		
		
		<hr>
		
		
		<h2> JSTL 사용</h2>
		<c:if test="${10>5}">  <!-- ""안에 조건쓰기 -> 조건식은 EL 표기법으로 넣어줘야한다 -->
			<h1>10은 5보다 크다</h1>
		</c:if>
		
		
		<!-- JSTL if else 문 -->
		
		<c:choose>
			<c:when test="${10>5}">
				<h1>10은 5보다 크다</h1>
			</c:when>ㄴ
			<c:otherwise>   <!-- else 와 같은 기능 -->
				<h1>10은 5보다 작다</h1>
			</c:otherwise>
		</c:choose>
		
		
		<!-- JSTL if elseif 문 -->
		
		<c:set var="scr" value="85" />
		<c:choose>
			<c:when test="${scr>=90}">
				<h2>수</h2>
			</c:when>
			<c:when test="${scr>=80}">
				<h2>우</h2>
			</c:when>
			<c:when test="${scr>=70}">
				<h2>미</h2>
			</c:when>
			<c:when test="${scr>=60}">
				<h2>양</h2>
			</c:when>
			<c:otherwise>
				<h1>가</h1>
			</c:otherwise>
			
		
		</c:choose>
		
		
		
		
		
		
		

</body>
</html>