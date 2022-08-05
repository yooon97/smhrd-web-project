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
System.out.print("[Array생성]");
String Lat = request.getParameter("lat");
String Lng = request.getParameter("lng");
String[] LatList= new String[50];
String[] LngList= new String[50];

for(int i = 0; i<LatList.length; i++) {
	LatList[i] = Lat;
	LngList[i] = Lng;
}
//값 배열에 담기는 거 확인(완)
//System.out.print(LatList[0]);
if(LatList[0]!=null) {
	%>성공적으로 담겼습니다!
	<a type="button" href="test.html">돌아가기</a>
	<%
	//조건문 실행시 담기는지 확인(완)
	//System.out.print(LatList[0]);
	
}else{
	%>alert("실패했습니다ㅜㅜ");<%
}
	%>
</body>
</html>