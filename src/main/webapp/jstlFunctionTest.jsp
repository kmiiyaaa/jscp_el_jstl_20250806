<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> <!--  사용하겠다고 선언하는 지시문 -->
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL function 라이브러리 연습</title>
</head>
<body>

	<%
		String str = "korea";
		
		out.println("문자열의 길이 : "+ str.length());  // 문자열의 길이
	
	%>

	<c:set var="str" value="korea"/>
	<h2>문자열의 길이 : ${fn:length(str)}</h2>
	
	<c:set var="strArr" value= "${['kor','jap','chin']}" />
	<h2>문자열의 길이 : ${fn:length(strArr)}</h2>
	<hr>
	<h2>대문자로 변환 : ${fn:toUpperCase(str)} </h2>
	<h2>소문자로 변환 : ${fn:toLowerCase(str)} </h2>
	<hr>
	<c:set var="str2" value="I love you!!"/>
	<h2>앞 4글자 추출 : ${fn:substring(str2,0,4)} </h2>  <!-- 처음부터하려면0, 4번째 글자까지  -->
	<h2>앞 4글자 추출 : ${fn:substring(str2,2,6)} </h2>  <!-- 인덱스 번호 처럼 / love 출력 -->
	<h2>뒤 5글자 추출 : ${fn:substring(str2,7,12)} </h2>
	
</body>
</html>