<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 세션삭제
		session.removeAttribute("id");
	
	
	%>
	
	<a href="Ex02Getsession.jsp">세션확인</a>
	<a href="Ex02invalidatesession.jsp">세션모두삭제</a>
</body>
</html>