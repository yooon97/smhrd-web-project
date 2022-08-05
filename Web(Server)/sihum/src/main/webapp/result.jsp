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
request.setCharacterEncoding("utf-8");
String[] hobbies = request.getParameterValues("hobby");
String name = request.getParameter("name");
%>
<table border="1">
        <h1>선호도 조사 시스템</h1>
        <th>이름</th>
        <th><%=name %></th>
        <tr><!-- 첫번째 줄 시작 -->
            <td>좋아하는 과일</td>
            <td>
               <%
               for (int i = 0; i<hobbies.length; i++){
            	 %>
            	 <%=hobbies[i] %>
            	 <%   
               }
               %>
            </td>
        </tr><!-- 첫번째 줄 끝 -->
       
        </table>
</body>
</html>