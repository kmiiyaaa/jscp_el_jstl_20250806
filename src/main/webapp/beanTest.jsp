<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="com.kmii.dto.MemberDto" />  <!-- member : 인스턴스화 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 표기법 이용한 자바 bean 연습 </title>
</head>
<body>
		
		<jsp:setProperty property="id" name="member" value="tiger"/>
		<jsp:setProperty property="pw" name="member" value="12345"/>
		<jsp:setProperty property="name" name="member" value="홍길동"/>
		<jsp:setProperty property="age" name="member" value="17"/>
		
		<h2> 회원 정보 </h2>
		<hr>
		<ul>  <!--  getter 사용하지 않고 더 깔끔하게 가능  ch08 beanTest랑 비교 -->
			<li>아이디 : ${member.id}</li>
			<li>비밀번호 : ${member.pw}</li>
			<li>이름 : ${member.name}</li>
			<li>나이 : ${member.age}</li>
		</ul>
		
</body>
</html>