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
	// application 영역에 값 가져오기
	String nick = (String) application.getAttribute("nick");
	%>
	<%=nick%>
	${nick}
</body>
</html>