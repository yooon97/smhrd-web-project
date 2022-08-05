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
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String name = request.getParameter("name");
	int java = Integer.parseInt(request.getParameter("java"));
	int web = Integer.parseInt(request.getParameter("web"));
	int iot = Integer.parseInt(request.getParameter("iot"));
	int and = Integer.parseInt(request.getParameter("and"));
	float avg = (java+web+iot+and)/4;
	String hak;
	
	if(avg>=95){
		hak="A+";
	}
	else if(95>avg && avg>=90){
		hak="A";
	}
	else if(90>avg && avg>=85){
		hak="B+";
	}
	else if(85>avg && avg>=80){
		hak="B";
	}
	else{
		hak="F";
	}
	%>
	<fieldset>
   <legend>학점확인프로그램</legend>
   <table align="center">
      <tr>
         <td>이름 : <%=name %></td>
      </tr>
      <tr>
         <td>JAVA점수 : <%=java %></td>
      </tr>
      <tr>
         <td>WEB점수 : <%=web %></td>
      </tr>
      <tr>
         <td>IOT점수 : <%=iot %></td>
      </tr>
      <tr>
         <td>ANDROID점수 : <%=and %></td>
      </tr>
      <tr>
         <td>평균 : <%=avg %></td>
      </tr>
      <tr>
         <td>학점 : <b><%=hak %></b></td>
      </tr>
   </table>
</fieldset>
</body>
</html>