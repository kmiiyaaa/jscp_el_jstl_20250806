<%@page import="com.kmii.dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유 게시판</title>
</head>
<body>
	<!--  게시판 글 리스트 -->
	<%
			//게시판 더미(dummy)데이터 만들기
			
			List<BoardDto> boardList = new ArrayList<BoardDto>();
			//게시글(boardDto)를 여러개 담을 ArrayList 준비(선언)
			
			boardList.add(new BoardDto(1, "박서하", "난 석진부인서하", "2025-08-06"));
			boardList.add(new BoardDto(2, "한승아", "난 뜽아", "2025-08-05"));
			boardList.add(new BoardDto(3, "안세희", "안녕 난 세히안!", "2025-08-04"));
			boardList.add(new BoardDto(4, "전유린", "유링기애오", "2025-08-03"));
			boardList.add(new BoardDto(5, "오진",  "오랑맘 진이에영", "2025-08-02"));
			
			request.setAttribute("boardList", boardList);  
	%>
	
	<h2>자유 게시판 목록</h2>
	<hr>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<th>No.</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>
		
		
		<c:forEach var="boardDto" items="${boardList}">
			<tr>
				<td>${boardDto.bnum}</td>
				<td>${boardDto.btitle}</td>
				<td>${boardDto.bwriter}</td>
				<td>${boardDto.bdate}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>