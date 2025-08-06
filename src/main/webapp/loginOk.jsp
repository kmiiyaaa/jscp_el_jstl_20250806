<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		request.setAttribute("mpw", pw);  
	
		if (id.equals("tiger") && pw.equals("12345")){
			session.setAttribute("user", id);
			
		}
	
	%>
	
	<h2>${sessionScope.user}님 로그인 성공!</h2>
	<h3>입력하신 비밀번호는 ${mpw} 입니다. </h3>
	

</body>
</html>
