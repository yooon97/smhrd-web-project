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
	// 세션 모두 삭제
		session.invalidate();
	
	
	%>
	
	<a href="Ex02Getsession.jsp">세션확인</a>
</body>
</html>