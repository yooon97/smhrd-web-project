<%@page import="com.smhrd.domain.Post"%>
<%@page import="com.smhrd.domain.Follow"%>
<%@page import="com.smhrd.domain.Marker"%>
<%@page import="com.smhrd.domain.MarkerDAO"%>
<%@page import="com.smhrd.domain.Image"%>
<%@page import="com.smhrd.domain.ImageDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>봄이 오겠조</title>
<style>
#mapwrap{position:relative;overflow:hidden;}
.category, .category *{margin:0;padding:0;color:#000;}   
.category {position:absolute;overflow:hidden;top:10px;left:10px;width:250px;height:50px;z-index:10;border:1px solid black;font-family:'Malgun Gothic','맑은 고딕',sans-serif;font-size:12px;text-align:center;background-color:#fff;}
.category .menu_selected {background:#FF5F4A;color:#fff;border-left:1px solid #915B2F;border-right:1px solid #915B2F;margin:0 -1px;} 
.category li{list-style:none;float:left;width:50px;height:45px;padding-top:5px;cursor:pointer;} 
.category .ico_comm {display:block;margin:0 auto 2px;width:22px;height:26px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png') no-repeat;} 
.category .ico_basic {background-position:-10px 0;}  
.category .ico_healing {background-position:-10px -0px;}   
.category .ico_store {background-position:-10px -0px;}
.category .ico_pet {background-position:-10px -0px;} 
.category .ico_travel {background-position:-10px -0px;} 

*{ 
clip : auto !important;
}

img[title]{
height: 100px !important; 
widyh: 100px !important;
} 
.info{
height: 100px !important; 
widyh: 100px !important;
}

</style>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="stylesheet" href="assets/css/newposting.css" />


<link rel="stylesheet" href="assets/css/iconfont.css">
<link rel="stylesheet" href="assets/css/slick/slick.css">
<link rel="stylesheet" href="assets/css/slick/slick-theme.css">
<link rel="stylesheet" href="assets/css/stylesheet.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/jquery.fancybox.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


<!--For Plugins external css-->
<link rel="stylesheet" href="assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<%
	Member dto = (Member) session.getAttribute("loginMember");

	String id = (String) session.getAttribute("user_id");
	
	List<Member> profile = (List)session.getAttribute("profile");
	%>
	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<div class="culmn">
		<header id="main_menu" class="header navbar-fixed-top">
			<div class="main_menu_bg">
				<div class="container">
					<div class="row">
						<div class="nave_menu">
							<nav class="navbar navbar-default">
								<div class="container-fluid">
									<!-- Brand and toggle get grouped for better mobile display -->
									<div class="navbar-header">
										<button type="button" class="navbar-toggle collapsed"
											data-toggle="collapse"
											data-target="#bs-example-navbar-collapse-1"
											aria-expanded="false">
											<span class="sr-only">Toggle navigation</span> <span
												class="icon-bar"></span> <span class="icon-bar"></span> <span
												class="icon-bar"></span>
										</button>
										<a class="navbar-brand" href="SMain.jsp"> <img
											src="assets/images/logo.png" />
										</a>
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->



									<div class="collapse navbar-collapse"
										id="bs-example-navbar-collapse-1">

										<ul class="nav navbar-nav navbar-right">
											<li><a href="SMain.jsp">HOME</a></li>
											<!-- <li><a href="#history">ABOUT US</a></li>
                                                <li><a href="#portfolio">PORTFOLIO</a></li>
                                                <li><a href="#pricing">PRICING</a></li>
                                                <li><a href="#team">TEAM</a></li>
                                                <li><a href="#blog">BLOG</a></li>
                                                <li><a href="#contact">CONTACT</a></li> -->
											         <%
                      if (dto == null) {
                      %>
                      <li><a href="NewLogin.html">Login</a></li>
                      <li><a href="#" id="nologinMyhome">Myhome</a></li>
                      <li><a href="#" id="nologinpost">post</a></li>
                      <%
                      } else {
                      %>
                      <li><a href="Logout">Logout</a></li>
                      <li><a href="Smyhome.jsp">Myhome</a></li>
                      <li><a href="Spost.jsp">post</a></li>
                      <li><a href="Sprofileselect">Profile</a></li>
                      <%
                      }
                      %>
                      <li><a href="Sfollow.jsp">Follow</a></li>
                      
                    </ul>


									</div>

								</div>
							</nav>
						</div>
					</div>

				</div>

			</div>
		</header>
		<!--End of header -->




		<!--home Section -->
		<section id="home" class="home">
			<div class="overlay">
				<div class="home_skew_border">

					<div class="container">
						<div class="row">
							<div class="col-sm-12 ">
								<div class="main_home_slider text-center">
									<div class="single_home_slider">
										<div class="main_home wow fadeInUp" data-wow-duration="700ms">
											<h3>who are you, I'm</h3>
											<h1>Traveler</h1>
											<div class="separator"></div>
											<p>지도기반 내 발자취 기록 서비스입니다.</p>
											<div class="home_btn">
												<a href="SMain.jsp" class="btn btn-lg m_t_10">메인화면</a>
											</div>

										</div>
									</div>
									<div class="single_home_slider">
										<div class="main_home wow fadeInUp" data-wow-duration="700ms">
											<h3>두번째 공지</h3>
											<h1>두번째 공지하기</h1>
											<div class="separator"></div>
											<p>안녕하세요 테스트중입니당 ㅎㅎ</p>
											<div class="home_btn">
												<a href="#" class="btn btn-lg m_t_10">메인으로 가기</a> <a
													href="#history" class="btn btn-default">서비스 소개</a>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="scrooldown">
						<a href="#feature"><i class="fa fa-arrow-down"></i></a>
					</div>
				</div>
			</div>
		</section>
		<section id="contact" class="contact">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="contact_contant sections">
							<div class="head_title text-center">
								
							<div class="row"></div>
							
							<div id="mapwrap"> 
    <!-- 지도가 표시될 div -->
    <div id="map" style="width:100%;height:500px;"></div>
    <!-- 지도 위에 표시될 마커 카테고리 -->
    <div class="category">
        <ul>
            <li id="basicMenu" onclick="changeMarker('basic')">
                <span class="ico_comm ico_basic"></span>
                기본
            </li>
            <li id="healingMenu" onclick="changeMarker('healing')">
                <span class="ico_comm ico_healing"></span>
                힐링
            </li>
            <li id="storeMenu" onclick="changeMarker('store')">
                <span class="ico_comm ico_store"></span>
                맛집
            </li>
            <li id="petMenu" onclick="changeMarker('pet')">
                <span class="ico_comm ico_pet"></span>
                애견동반
            </li>
            <li id="travelMenu" onclick="changeMarker('travel')">
                <span class="ico_comm ico_travel"></span>
                여행
            </li>
        </ul>
    </div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b2438cac030698bc148f62a014733b9&libraries=services"></script>
<script>
<%
List<Marker> CarMar1 = (List)session.getAttribute("CarMar1");
List<Marker> CarMar2 = (List)session.getAttribute("CarMar2");
List<Marker> CarMar3 = (List)session.getAttribute("CarMar3");
List<Marker> CarMar4 = (List)session.getAttribute("CarMar4");
List<Marker> CarMar5 = (List)session.getAttribute("CarMar5");

  List<Post> CarPo1 = (List)session.getAttribute("CarPo1");
  List<Post> CarPo2 = (List)session.getAttribute("CarPo2");
  List<Post> CarPo3 = (List)session.getAttribute("CarPo3");
  List<Post> CarPo4 = (List)session.getAttribute("CarPo4");
  List<Post> CarPo5 = (List)session.getAttribute("CarPo5");
 
  
  List<String> image_list1 = (List)session.getAttribute("image_list1");
  List<String> image_list2 = (List)session.getAttribute("image_list2");
  List<String> image_list3 = (List)session.getAttribute("image_list3");
  List<String> image_list4 = (List)session.getAttribute("image_list4");
  List<String> image_list5 = (List)session.getAttribute("image_list5");
  
  

  
  
  System.out.println("1사이즈 : "+CarMar1.size());
  System.out.println("2사이즈 : "+CarMar2.size());
  System.out.println("3사이즈 : "+CarMar3.size());
  System.out.println("4사이즈 : "+CarMar4.size());
  System.out.println("5사이즈 : "+CarMar5.size());
  
  System.out.println("포1 : "+CarPo1.size());
  System.out.println("포2 : "+CarPo2.size());
  System.out.println("포3 : "+CarPo3.size());
  System.out.println("포4 : "+CarPo4.size());
  System.out.println("포5 : "+CarPo5.size());

  
//  System.out.println("이미지1 : "+image_list1.size());
//  System.out.println("이미지2 : "+image_list2.size());
//  System.out.println("이미지3 : "+image_list3.size());
//  System.out.println("이미지4 : "+image_list4.size());
//  System.out.println("이미지5 : "+image_list5.size());
  
  ImageDAO dao = new ImageDAO();
  
  %>

 var basic1 = [];
 var healing1 = [];
 var store1 = [];
 var pet1 = [];
 var travel1 = [];

 <% for(int i = 0; i<CarPo1.size(); i++){
     %>basic1.push({content : '<div>글 제목 : <%=CarPo1.get(i).getTitle() %></div><div>작성자 : <%=CarPo1.get(i).getUser_id() %></div><div>작성일자 : <%=CarPo1.get(i).getPost_dt()%><!-- <img class="info"  src="./upload/<%=dao.selectImage(CarMar3.get(i).getMarker_seq())%>" /> --><br></div><br>ㅤㅤㅤㅤㅤ'});<%

 }%>
 <% for(int i = 0; i<CarPo2.size(); i++){
     %>healing1.push({content : '<div>글 제목 : <%=CarPo2.get(i).getTitle() %></div><div>작성자 : <%=CarPo2.get(i).getUser_id() %></div><div>작성일자 : <%=CarPo2.get(i).getPost_dt()%><img class="info" src="./upload/<%=dao.selectImage(CarMar3.get(i).getMarker_seq())%>" /><br></div><br>ㅤㅤㅤㅤㅤ'});<%

 }%>
 <% for(int i = 0; i<CarPo3.size(); i++){
     %>store1.push({content : '<div>글 제목 : <%=CarPo3.get(i).getTitle() %></div><div>작성자 : <%=CarPo3.get(i).getUser_id() %></div><div>작성일자 : <%=CarPo3.get(i).getPost_dt()%><img class="info"  src="./upload/<%=dao.selectImage(CarMar3.get(i).getMarker_seq())%>" /><br></div><br>ㅤㅤㅤㅤㅤ'});<%

 }%>
 <% for(int i = 0; i<CarPo4.size(); i++){
     %>pet1.push({content : '<div>글 제목 : <%=CarPo4.get(i).getTitle() %></div><div>작성자 : <%=CarPo4.get(i).getUser_id() %></div><div>작성일자 : <%=CarPo4.get(i).getPost_dt()%><br><img class="info" src="./upload/<%=dao.selectImage(CarMar3.get(i).getMarker_seq())%>" /></div><br>ㅤㅤㅤㅤㅤ'});<%

 }%>
 <% for(int i = 0; i<CarPo5.size(); i++){
     %>travel1.push({content : '<div>글 제목 : <%=CarPo5.get(i).getTitle() %></div><div>작성자 : <%=CarPo5.get(i).getUser_id() %></div><div>작성일자 : <%=CarPo5.get(i).getPost_dt()%><img class="info" src="./upload/<%=dao.selectImage(CarMar3.get(i).getMarker_seq())%>" /><br></div><br>ㅤㅤㅤㅤㅤ'});<%

 }%>
 
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
    center: new kakao.maps.LatLng(<%=CarMar1.get(0).getLATITUDE()%>, <%=CarMar1.get(0).getLONGITUDE()%>), // 지도의 중심좌표 
        level: 10 // 지도의 확대 레벨 
    }; 
    
//마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
    markers = [], // 마커를 담을 배열입니다
    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 기본 마커가 표시될 좌표 배열입니다
var basicPositions = [];
<% for(int i =0; i<CarMar1.size(); i++) {%>
basicPositions.push(new kakao.maps.LatLng(<%=CarMar1.get(i).getLATITUDE()%>, <%= CarMar1.get(i).getLONGITUDE()%>))
<%};%>
/* for(var i=0; i<basicPositions.length; i++) {
console.log(basicPositions[i])} */

// 힐링 마커가 표시될 좌표 배열입니다
var healingPositions = [];
<% for(int i = 0; i<CarMar2.size(); i++) { %>
healingPositions.push(new kakao.maps.LatLng(<%=CarMar2.get(i).getLATITUDE()%>, <%= CarMar2.get(i).getLONGITUDE()%>))
<%};%>
//for(var i=0; i<healingPositions.length; i++) {
//}

// 맛집 마커가 표시될 좌표 배열입니다
var storePositions = [];
<% for(int i = 0; i<CarMar3.size(); i++) { %>
storePositions.push(new kakao.maps.LatLng(<%=CarMar3.get(i).getLATITUDE()%>, <%= CarMar3.get(i).getLONGITUDE()%>))
<%};%>

//애견동반 마커가 표시될 좌표 배열입니다
var petPositions = [];
<% for(int i = 0; i<CarMar4.size(); i++) { %>
petPositions.push(new kakao.maps.LatLng(<%=CarMar4.get(i).getLATITUDE()%>, <%= CarMar4.get(i).getLONGITUDE()%>))
<%};%>

//여행 마커가 표시될 좌표 배열입니다
var travelPositions = [];
<% for(int i = 0; i<CarMar5.size(); i++) { %>
travelPositions.push(new kakao.maps.LatLng(<%=CarMar5.get(i).getLATITUDE()%>, <%= CarMar5.get(i).getLONGITUDE()%>))
<%};%>

var markerImageSrc = 'https://cdn4.iconfinder.com/data/icons/navigation-and-location-5/100/location-11-256.png';  // 마커이미지의 주소입니다. 스프라이트 이미지 입니다
    basicMarkers = [], // 커피숍 마커 객체를 가지고 있을 배열입니다
    healingMarkers = [], // 편의점 마커 객체를 가지고 있을 배열입니다
    storeMarkers = []; // 주차장 마커 객체를 가지고 있을 배열입니다
    petMarkers = [];
    travelMarkers = [];
    
createBasicMarkers(); // 커피숍 마커를 생성하고 커피숍 마커 배열에 추가합니다
createHealingMarkers(); // 편의점 마커를 생성하고 편의점 마커 배열에 추가합니다
createStoreMarkers(); // 주차장 마커를 생성하고 주차장 마커 배열에 추가합니다
createPetMarkers(); // 주차장 마커를 생성하고 주차장 마커 배열에 추가합니다
createTravelMarkers(); // 주차장 마커를 생성하고 주차장 마커 배열에 추가합니다

changeMarker('basic'); // 지도에 커피숍 마커가 보이도록 설정합니다 
changeMarker('healing'); // 지도에 커피숍 마커가 보이도록 설정합니다 
changeMarker('store'); // 지도에 커피숍 마커가 보이도록 설정합니다 
changeMarker('pet'); // 지도에 커피숍 마커가 보이도록 설정합니다 
changeMarker('travel'); // 지도에 커피숍 마커가 보이도록 설정합니다 



// 마커이미지의 주소와, 크기, 옵션으로 마커 이미지를 생성하여 리턴하는 함수입니다
function createMarkerImage(src, size, options) {
    var markerImage = new kakao.maps.MarkerImage(src, size, options);
    return markerImage;            
}

// 좌표와 마커이미지를 받아 마커를 생성하여 리턴하는 함수입니다
function createMarker(position, image) {
    var marker = new kakao.maps.Marker({
        position: position,
        image: image
    });
    
    return marker;  
}   

//기본 마커를 생성하고 커피숍 마커 배열에 추가하는 함수입니다
function createBasicMarkers() {
    
    for (var i = 0; i < basicPositions.length; i++) {  
        
        var imageSize = new kakao.maps.Size(22, 26),
            imageOptions = {  
                spriteOrigin: new kakao.maps.Point(10, 0),    
                spriteSize: new kakao.maps.Size(36, 98)  
            };     
        
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage("https://cdn4.iconfinder.com/data/icons/navigation-and-location-5/100/location-11-256.png", imageSize, imageOptions),    
            marker = createMarker(basicPositions[i], markerImage);  
        
     // 마커에 표시할 인포윈도우를 생성합니다 
        var infowindow = new kakao.maps.InfoWindow({
             content: basic1[i].content

        });

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        
        // 생성된 마커를 커피숍 마커 배열에 추가합니다
        basicMarkers.push(marker);
    }     
}

// 기본 마커들의 지도 표시 여부를 설정하는 함수입니다
function setBasicMarkers(map) {        
    for (var i = 0; i < basicMarkers.length; i++) {  
        basicMarkers[i].setMap(map);
    }        
}
//------------------------------------------------------------------------------------------
//힐링 마커를 생성하고 커피숍 마커 배열에 추가하는 함수입니다
function createHealingMarkers() {
    
    for (var i = 0; i < healingPositions.length; i++) {  
        
        var imageSize = new kakao.maps.Size(22, 26),
            imageOptions = {  
                spriteOrigin: new kakao.maps.Point(10, 0),    
                spriteSize: new kakao.maps.Size(36, 98)  
            };     
        
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage("https://cdn3.iconfinder.com/data/icons/free-mix/128/business_office_seo_finance_work_coffee_pause_management-09-2-256.png", imageSize, imageOptions),    
            marker = createMarker(basicPositions[i], markerImage);  
        
     // 마커에 표시할 인포윈도우를 생성합니다 
        var infowindow = new kakao.maps.InfoWindow({
            content: healing1[i].content

        });

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        
        // 생성된 마커를 커피숍 마커 배열에 추가합니다
        healingMarkers.push(marker);
    }     
}

//힐링 마커들의 지도 표시 여부를 설정하는 함수입니다
function setHealingMarkers(map) {        
    for (var i = 0; i < healingMarkers.length; i++) {  
        healingMarkers[i].setMap(map);
    }        
}
//------------------------------------------------------------------------------------------
//맛집 마커를 생성하고 커피숍 마커 배열에 추가하는 함수입니다
function createStoreMarkers() {
  
  for (var i = 0; i < storePositions.length; i++) {  
      
      var imageSize = new kakao.maps.Size(22, 26),
          imageOptions = {  
              spriteOrigin: new kakao.maps.Point(10, 0),    
              spriteSize: new kakao.maps.Size(36, 98)  
          };     
      
      // 마커이미지와 마커를 생성합니다
      var markerImage = createMarkerImage("https://cdn3.iconfinder.com/data/icons/food-delivery-4/64/31_food_delivery_restaurant_eat-256.png", imageSize, imageOptions),    
          marker = createMarker(storePositions[i], markerImage);  
      
   // 마커에 표시할 인포윈도우를 생성합니다 
      var infowindow = new kakao.maps.InfoWindow({
          content: store1[i].content

      });

      // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
      // 이벤트 리스너로는 클로저를 만들어 등록합니다 
      // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
      kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
      kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
      
      
      // 생성된 마커를 커피숍 마커 배열에 추가합니다
      storeMarkers.push(marker);
  }     
}

//맛집 마커들의 지도 표시 여부를 설정하는 함수입니다
function setStoreMarkers(map) {        
  for (var i = 0; i < storeMarkers.length; i++) {  
      storeMarkers[i].setMap(map);
  }        
}
//------------------------------------------------------------------------------------------
//애견동반 마커를 생성하고 커피숍 마커 배열에 추가하는 함수입니다
function createPetMarkers() {

for (var i = 0; i < petPositions.length; i++) {  
    
    var imageSize = new kakao.maps.Size(22, 26),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(10, 0),    
            spriteSize: new kakao.maps.Size(36, 98)  
        };     
    
    // 마커이미지와 마커를 생성합니다
    var markerImage = createMarkerImage("https://cdn3.iconfinder.com/data/icons/animal-40/128/Animal_Dog-256.png", imageSize, imageOptions),    
        marker = createMarker(petPositions[i], markerImage);
    
 // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: pet1[i].content

    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
    
    
    // 생성된 마커를 커피숍 마커 배열에 추가합니다
    petMarkers.push(marker);
}     
}

//애견동반 마커들의 지도 표시 여부를 설정하는 함수입니다
function setPetMarkers(map) {        
for (var i = 0; i < petMarkers.length; i++) {  
    petMarkers[i].setMap(map);
}        
}
//------------------------------------------------------------------------------------------
//여행 마커를 생성하고 커피숍 마커 배열에 추가하는 함수입니다
function createTravelMarkers() {

for (var i = 0; i < travelPositions.length; i++) {  
    
    var imageSize = new kakao.maps.Size(22, 26),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(10, 0),    
            spriteSize: new kakao.maps.Size(36, 98)  
        };     
    
    // 마커이미지와 마커를 생성합니다
    var markerImage = createMarkerImage("https://cdn2.iconfinder.com/data/icons/basic-flat-icon-set/128/plane-256.png", imageSize, imageOptions),    
        marker = createMarker(storePositions[i], markerImage);
    
 // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: travel1[i].content

    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
    
    
    // 생성된 마커를 커피숍 마커 배열에 추가합니다
    travelMarkers.push(marker);
}     
}

//여행 마커들의 지도 표시 여부를 설정하는 함수입니다
function setTravelMarkers(map) {        
for (var i = 0; i < travelMarkers.length; i++) {  
    travelMarkers[i].setMap(map);
}        
}
//------------------------------------------------------------------------------------------ 


// 카테고리를 클릭했을 때 type에 따라 카테고리의 스타일과 지도에 표시되는 마커를 변경합니다
function changeMarker(type){
    
    var basicMenu = document.getElementById('basicMenu');
    var healingMenu = document.getElementById('healingMenu');
    var storeMenu = document.getElementById('storeMenu');
    var petMenu = document.getElementById('petMenu');
    var travelMenu = document.getElementById('travelMenu');

    
    // 기본 카테고리가 클릭됐을 때
    if (type === 'basic') {
    
        // 기본 카테고리를 선택된 스타일로 변경하고
        basicMenu.className = 'menu_selected';
        
        //나머지 카테고리는 선택되지 않은 스타일로 바꿉니다
        healingMenu.className = '';
        storeMenu.className = '';
        petMenu.className = '';
        travelMenu.className = '';

        
        // 기본 마커들만 지도에 표시하도록 설정합니다
        setBasicMarkers(map);
        setHealingMarkers(null);
        setStoreMarkers(null);
        setPetMarkers(null);
        setTravelMarkers(null);
        
    } else if (type === 'healing') { // 힐링 카테고리가 클릭됐을 때
    
        // 힐링 카테고리를 선택된 스타일로 변경하고
        basicMenu.className = '';
        healingMenu.className = 'menu_selected';
        storeMenu.className = '';
        petMenu.className = '';
        travelMenu.className = '';
        
        // 힐링 마커들만 지도에 표시하도록 설정합니다
        setBasicMarkers(null);
        setHealingMarkers(map);
        setStoreMarkers(null);
        setPetMarkers(null);
        setTravelMarkers(null);
        
    } else if (type === 'store') { // 맛집 카테고리가 클릭됐을 때
     
        // 맛집 카테고리를 선택된 스타일로 변경하고
        basicMenu.className = '';
        healingMenu.className = '';
        storeMenu.className = 'menu_selected';
        petMenu.className = '';
        travelMenu.className = '';
        
        // 맛집 마커들만 지도에 표시하도록 설정합니다
        setBasicMarkers(null);
        setHealingMarkers(null);
        setStoreMarkers(map);
        setPetMarkers(null);
        setTravelMarkers(null);
    } else if (type === 'pet') { // 애견 카테고리가 클릭됐을 때
     
        // 애견 카테고리를 선택된 스타일로 변경하고
        basicMenu.className = '';
        healingMenu.className = '';
        storeMenu.className = '';
        petMenu.className = 'menu_selected';
        travelMenu.className = '';
        
        // 애견 마커들만 지도에 표시하도록 설정합니다
        setBasicMarkers(null);
        setHealingMarkers(null);
        setStoreMarkers(null);
        setPetMarkers(map);
        setTravelMarkers(null);
    } else if (type === 'travel') { // 여행 카테고리가 클릭됐을 때
     
        // 여행 카테고리를 선택된 스타일로 변경하고
        basicMenu.className = '';
        healingMenu.className = '';
        storeMenu.className = '';
        petMenu.className = '';
        travelMenu.className = 'menu_selected';
        
        // 여행 마커들만 지도에 표시하도록 설정합니다
        setBasicMarkers(null);
        setHealingMarkers(null);
        setStoreMarkers(null);
        setPetMarkers(null);
        setTravelMarkers(map); 
    }            
}

//인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    };
}

</script>
							

						</div>
					</div>
				</div>
			</div>
		</section>
		
		

		<!-- START SCROLL TO TOP  -->

		<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>

		<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
		<script src="assets/js/vendor/bootstrap.min.js"></script>

		<script src="assets/js/jquery.magnific-popup.js"></script>
		<script src="assets/js/jquery.mixitup.min.js"></script>
		<script src="assets/js/jquery.easing.1.3.js"></script>
		<script src="assets/js/jquery.masonry.min.js"></script>

		<!--slick slide js -->
		<script src="assets/css/slick/slick.js"></script>
		<script src="assets/css/slick/slick.min.js"></script>



		<script src="assets/js/plugins.js"></script>
		<script src="assets/js/main.js"></script>
</body>
</html>
