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
	String result = pre.equals("0") ? "���" : "����";
%>
<h1>����� Ÿ��Ÿ��ȣ���� <%= result %> �ϼ̽��ϴ�.</h1>
</body>
</html>




