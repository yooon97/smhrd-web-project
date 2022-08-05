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
	String id1 = request.getParameter("id");
	String pw1 = request.getParameter("pw");
	
	String id="smart";
	String pw="123";
	
	if(id1.equals(id) && pw1.equals(pw)){
		//로그인성공
		// 리다이렉팅 방식으로 페이지 이동(요청 2번 발생)
		//response.sendRedirect("Ex10LoginSuccess.jsp");
		
		//요청이 1번 일어나는 방법
		//포워딩(forwarding) 방식으로 페이지 이동
		RequestDispatcher rd= request.getRequestDispatcher("Ex10LoginSuccess.jsp");
		request.setAttribute("id" , id );
		rd.forward(request, response);
	}
	else{
		//로그인 실패
		response.sendRedirect("Ex10LoginFail.jsp");
	}
	%>
</body>
</html>