<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Loginform.jsp에서 아이디와 비밀번호를 받아오기 
	받아온 값이 test와 12345이면 세션에 닉네임 저장하고 main.jsp로 이동, 값이 다르면 Loginform.jsp로 이동 -->
	
	<%
	// 한글 인코딩
	request.setCharacterEncoding("UTF-8");
	
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//url인코딩
	String nick2 = URLEncoder.encode("쿠키몬스터2", "UTF-8");
	
	if(id.equals("test") && pw.equals("12345")){
		session.setAttribute("nick", "쿠키몬스터");
		//response.sendRedirect("main.jsp?nick2="+nick2);
		
		//forwarding 이동할때 사용하는 객체 - > RequestDispatcher
		RequestDispatcher rd =  request.getRequestDispatcher("main.jsp");
		request.setAttribute("nick3", "쿠키몬스터3");
		rd.forward(request, response);
		
	}
	else{
		response.sendRedirect("Loginform.jsp");
	}
	%>
</body>
</html>