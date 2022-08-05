<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.martest"%>
<%@page import="com.smhrd.domain.martestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="map" style="width:100%;height:350px;"></div>    

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b2438cac030698bc148f62a014733b9"></script>
<script>

<% martestDAO dao = new martestDAO();
	martest mar = (martest)session.getAttribute("memberMar");

	
	List<martest> marList = dao.selectMars();
	pageContext.setAttribute("marList", marList);
	System.out.println("[리스트 생성 성공]");
	System.out.println(marList.get(0).getLat()); %>
	

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(<%=marList.get(0).getLat()%>, <%=marList.get(0).getLng()%>), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다



var linePath = [];



<%for(int i =0; i< marList.size();i++){%>
linePath.push(new kakao.maps.LatLng(<%=marList.get(i).getLat()%>, <%=marList.get(i).getLng()%>))
<%};%>

// 지도에 표시할 선을 생성합니다
var polyline = new kakao.maps.Polyline({
    path: linePath, // 선을 구성하는 좌표배열 입니다
    strokeWeight: 5, // 선의 두께 입니다
    strokeColor: '#FFAE00', // 선의 색깔입니다
    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    strokeStyle: 'solid' // 선의 스타일입니다
});

// 지도에 선을 표시합니다 
polyline.setMap(map);  



</script>
</body>
</html>