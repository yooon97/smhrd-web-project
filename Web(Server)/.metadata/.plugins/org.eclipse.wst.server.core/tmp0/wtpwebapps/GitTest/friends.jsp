
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="com.smhrd.domain.MemberDAO"%>

<%@ page isELIgnored="false" contentType = "text/html; charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<% MemberDAO dao = new MemberDAO();
	
List<Member> memberList = dao.selectAll();
pageContext.setAttribute("memberList", memberList);
String user_id = (String)session.getAttribute("id");
//System.out.print(user_id);

               
  
   //리스트에 담긴 거 확인(완)
   //System.out.println(memberList.get(0).getUser_status());
   //System.out.println("회원수 : " + memberList.size());

%>
<table border=1 align=center>
  <c:forEach var="mb" items="${memberList }" varStatus="status">
   <tr>
   <td>${status.count }</td>
   <td><c:out value="${mb.user_id }"></c:out></td>
   <td><c:out value="${mb.user_nick }"></c:out></td>
   <td><c:out value="${mb.user_status }"></c:out></td>
   <td><a>추가</a></td></tr>
   </c:forEach>

	</table>
</body>
</html>