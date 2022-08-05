<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 세션에 저장된 닉네임을 삭제, Loginform.jsp로 이동 -->
	
	<%
	session.removeAttribute("nick");
	response.sendRedirect("Loginform.jsp");
	
	%>
</body>
</html>