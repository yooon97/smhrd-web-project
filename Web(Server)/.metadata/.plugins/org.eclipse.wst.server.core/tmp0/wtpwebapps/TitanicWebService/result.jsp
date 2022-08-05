<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	String pre = request.getParameter("predict"); 
	String result = pre.equals("0") ? "사망" : "생존";
%>
<h1>당신은 타이타닉호에서 <%= result %> 하셨습니다.</h1>
</body>
</html>




