<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!doctype html>


<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>봄이 오겠조</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">


<link rel="stylesheet" href="assets/css/iconfont.css">
<link rel="stylesheet" href="assets/css/slick/slick.css">
<link rel="stylesheet" href="assets/css/slick/slick-theme.css">
<link rel="stylesheet" href="assets/css/stylesheet.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/jquery.fancybox.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="dist/needpopup.min.css">
<link rel="stylesheet" href="dist/popup.css">
<link rel="stylesheet" href="assets/css/imageupload.css" />
<link rel="stylesheet" href="assets/css/clock.css" />
<link rel="stylesheet" href="assets/css/newposting.css" />



<!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


<!--For Plugins external css-->
<link rel="stylesheet" href="assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <style>
.map_wrap {position:relative;width:100%;height:350px;}
.title {font-weight:bold;display:block;}
.hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
#centerAddr {display:block;margin-top:2px;font-weight: normal;}
.bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#newpost1{
width: 250px !important;
height: 200px !important;
margin-top: -4%;
margin-left: -25%;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
   <%
   Member dto = (Member) session.getAttribute("loginMember");

   String id = (String)session.getAttribute("user_id");
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
                              <a class="navbar-brand" href="#home"> <img
                                 src="assets/images/logo.png" />
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->



									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right">
                              <li><a href="#home">HOME</a></li>
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
                              <%
                              } else {
                              %>
                              <li><a href="Logout">Logout</a></li>
                              <li><a href="Smyhome.jsp">Myhome</a></li>
                              <%
                              }
                              %>
                            </ul>
							<script>
									$(document).on('click','#nologinMyhome',function(){
										alert('로그인을 해주세요!');
									});
							</script>

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
                                    <a href="#contact" class="btn btn-lg m_t_10">발자취 남기러가기</a> 
                                    <a href="#history" class="btn btn-default">서비스 소개</a>
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
                                    <a href="#contact" class="btn btn-lg m_t_10">발자취 남기러가기</a> 
                                    <a href="#history" class="btn btn-default">서비스 소개</a>
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
      <!--End of home section -->


      <!--feature section -->
      <section id="feature" class="feature sections">
         <div class="container">
            <div class="row">
               <div class="main_feature text-center">
                  <div class="col-sm-3">
                     <div class="single_feature">
                        <div OnClick="location.href ='#history'"
                           style="cursor: pointer;" class="single_feature_icon">
                           <i class="fa fa-clone"></i>
                        </div>

                        <h4>서비스 소개</h4>
                        <div class="separator3"></div>
                        <p>저희 서비스를 소개해 드릴게요!</p>
                     </div>
                  </div>

                  <div class="col-sm-3">
                     <div class="single_feature">
                        <div OnClick="location.href ='#service'"
                           style="cursor: pointer;" class="single_feature_icon">
                           <i class="fa fa-heart-o"></i>
                        </div>

                        <h4>기능 소개</h4>
                        <div class="separator3"></div>
                        <p>서비스의 기능을 소개해 드릴게요!</p>
                     </div>
                  </div>

                  <div class="col-sm-3">
                     <div class="single_feature">
                        <div OnClick="location.href ='#portfolio'"
                           style="cursor: pointer;" class="single_feature_icon">
                           <i class="fa fa-lightbulb-o"></i>
                        </div>
                        <h4>BEST POST</h4>
                        <div class="separator3"></div>
                        <p>인기게시물을 확인해 보세요!</p>
                     </div>
                  </div>

                  <div class="col-sm-3">
                     <div class="single_feature">
                        <div OnClick="location.href ='#team'" style="cursor: pointer;"
                           class="single_feature_icon">
                           <i class="fa fa-comments-o"></i>
                        </div>

                        <h4>팀 소개</h4>
                        <div class="separator3"></div>
                        <p>저희 팀을 소개합니다!</p>
                     </div>
                  </div>

               </div>
            </div>
         </div>
         <!--End of container -->
      </section>
      <!--End of feature Section -->
      <hr />

      <section id="contact" class="contact">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <div class="contact_contant sections">
                     <div class="head_title text-center">
                        <h2>발자취 남기기</h2>
                        <section class="border-clock"></section>
													<section class="clock">
													  <ul>
													    <li><i>12</i></li>
													    <li><i>1</i></li>
													    <li><i>2</i></li>
													    <li><i>3</i></li>
													    <li><i>4</i></li>
													    <li><i>5</i></li>
													    <li><i>6</i></li>    
													    <li><i>7</i></li>    
													    <li><i>8</i></li>    
													    <li><i>9</i></li>    
													    <li><i>10</i></li>    
													    <li><i>11</i></li>
													  </ul>
  
													  <h2 id="clocktitle">Traveler</h2>
													  <h3></h3>
													  
													  <output class="date"></output>
													  
													  <div class="minutes"></div>
													  <div class="hours"></div> 
													  <div class="seconds"></div>
													  <div class="cercle"></div>
													  
													</section>
                        <div class="subtitle">원하는 카테고리를 선택후 지도를 클릭해주세요!</div>
                        <div class="separator"></div>
                     </div>
                     <!-- End off Head_title -->
                     <div class="row"></div>

                     <!-- 지도 넣는 부분 -->
                        <div id="sead">
                        도로명주소 검색<input type="text" name="address" value="" id="address"><button onclick="searchaddress()">검색</button>
                        </div> 
                        <div id="sead2">
                        키워드 검색<input type="text" name="keyword" value="" id="keyword"><button onclick="keywordgo()">검색</button>
                        </div>

                        <div>
                        <div class="buttonContainer">
                           <div>카테고리선택         →</div>
                        </div>

                        <select id="markerselect" onchange="markerchange()">
                           <option
                              value="https://cdn4.iconfinder.com/data/icons/navigation-and-location-5/100/location-11-256.png" id="1">기본</option>
                           <option
                              value="https://cdn3.iconfinder.com/data/icons/free-mix/128/business_office_seo_finance_work_coffee_pause_management-09-2-256.png" id="2">힐링</option>
                           <option
                              value="https://cdn3.iconfinder.com/data/icons/food-delivery-4/64/31_food_delivery_restaurant_eat-256.png" id="3">맛집</option>
                           <option
                              value="https://cdn3.iconfinder.com/data/icons/animal-40/128/Animal_Dog-256.png" id="4">애견동반</option>
                           <option
                              value="https://cdn2.iconfinder.com/data/icons/basic-flat-icon-set/128/plane-256.png" id="5">여행</option>
                        </select>

										    <div class="map_wrap">
										      <div id="map" style="width:100%;height:500px;position:relative;overflow:hidden;">
										      </div>
										        <div class="hAddr">
										        <span class="title">지도중심기준 주소정보</span>
										        <span id="centerAddr"></span>
										        </div>
										    </div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b2438cac030698bc148f62a014733b9&libraries=services"></script>
<script>
var lat = null;
var lng = null;
var markershape = null;

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 8 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

if (navigator.geolocation) {

    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
    	       var lat = position.coords.latitude, // 위도
             lon = position.coords.longitude; // 경도
             var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
             message = ''; // 인포윈도우에 표시될 내용입니다

             // 마커와 인포윈도우를 표시합니다
             displayMarker(locPosition,message);
    });
}else{ // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
	  var locPosition = new kakao.maps.LatLng(36.401572141642404, 126.570667), message = 'geolocation을 사용할수 없어요..'
		displayMarker(locPosition, message);
 }

function displayMarker(locPosition, message) {

    var iwContent = message, // 인포윈도우에 표시할 내용
    iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow(
          {
             content : iwContent,
             removable : iwRemoveable
          });

    // 인포윈도우를 마커위에 표시합니다 
    infowindow.open(map, marker);

    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);
 }

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();



function searchaddress() {
	var search = $('input[name=address]').val();
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(search, function(result, status) {

	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {

	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});
}
//장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();
function keywordgo(){
	var kw = $('input[name=keyword]').val();
// 키워드로 장소를 검색합니다
ps.keywordSearch(kw, placesSearchCB); 
//키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new kakao.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    } 
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}
}




var imageSrc = 'https://cdn4.iconfinder.com/data/icons/navigation-and-location-5/100/location-11-256.png', // 마커이미지의 주소입니다    
imageSize = new kakao.maps.Size(60, 65), // 마커이미지의 크기입니다
imageOption = {
   offset : new kakao.maps.Point(27, 69)
}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
var markerImage = new kakao.maps.MarkerImage(
      imageSrc, imageSize, imageOption)

// 지도를 클릭한 위치에 표출할 마커입니다
var marker = new kakao.maps.Marker({
    // 지도 중심좌표에 마커를 생성합니다 
    position : map.getCenter(),
    image : markerImage
 }); // 클릭한 위치를 표시할 마커입니다
 
//지도에 마커를 표시합니다
 marker.setMap(map);
 
 
 
 
 
 
    infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
searchAddrFromCoords(map.getCenter(), displayCenterInfo);

// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
	 // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng;

    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    /* var message = '클릭한 위치의 위도는 '
          + latlng.getLat()
          + ' 이고, ';
    message += '경도는 '
          + latlng.getLng()
          + ' 입니다'; */
    var resultDiv = document
          .getElementById('clickLatlng');
   /*  resultDiv.innerHTML = message; */
    lat = latlng.getLat();
    lng = latlng.getLng();
   var insertLat = document
          .getElementById('lat');
    $('input[id=lat]').val(lat);
    var insertLat = document
          .getElementById('lng');
    $('input[id=lng]').val(lng); 
	
    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
        
    	if (status === kakao.maps.services.Status.OK) {
            var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
            detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
            
            var content = '<div class="bAddr">' +
                            '<span class="title">주소정보</span>' + 
                            detailAddr + 
                            '<a href="#" data-needpopup-show="#custom-popup">게시물 작성</a>'
                        '</div>';

            // 마커를 클릭한 위치에 표시합니다 
            marker.setPosition(mouseEvent.latLng);
            marker.setMap(map);

            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
            infowindow.setContent(content);
            infowindow.open(map, marker);
        }   
    });
});

//지도 드래깅 이벤트를 등록한다 (드래그 시작 : dragstart, 드래그 종료 : dragend)
kakao.maps.event.addListener(map,'drag',function() {
               var message = '지도를 드래그 하고 있습니다. '
                     + '지도의 중심 좌표는 '
                     + map.getCenter().toString()
                     + ' 입니다.';
               console.log(message);
            });

var clickmarker = '<a href="#" data-needpopup-show="#custom-popup">게시물작성</a>'

	// 마커에 mouseover 이벤트를 등록한다
    kakao.maps.event.addListener(marker,'mouseover',function() {
                   console.log('마커에 mouseover 이벤트가 발생했습니다!');
                });

    // 마커에 mouseout 이벤트 등록
    kakao.maps.event.addListener(marker,'mouseout',function() {
                   console.log('마커에 mouseout 이벤트가 발생했습니다!');
                });

    // 마커에 dragstart 이벤트 등록
    kakao.maps.event.addListener(marker,'dragstart',function() {
                   console.log('마커에 dragstart 이벤트가 발생했습니다!');
                });

    // 마커에 dragend 이벤트 등록
    kakao.maps.event.addListener(marker,'dragend',function() {
                   console.log('마커에 dragend 이벤트가 발생했습니다!');
                });

    // 커스텀 오버레이를 생성하고 지도에 표시한다
    var customOverlay = new kakao.maps.CustomOverlay(
          {
             map : map,
             clickable : true, // 커스텀 오버레이 클릭 시 지도에 이벤트를 전파하지 않도록 설정한다
             content : '<div style="padding:0 5px;background:#fff;">HTML코드를 입력해주세요 :D</div>',
             position : new kakao.maps.LatLng(
                   37.56350, 126.96496), // 커스텀 오버레이를 표시할 좌표
             xAnchor : 0.5, // 컨텐츠의 x 위치
             yAnchor : 0
          // 컨텐츠의 y 위치
          });


// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});

function searchAddrFromCoords(coords, callback) {
    // 좌표로 행정동 주소 정보를 요청합니다
    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

function searchDetailAddrFromCoords(coords, callback) {
    // 좌표로 법정동 상세 주소 정보를 요청합니다
    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}

// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
    if (status === kakao.maps.services.Status.OK) {
        var infoDiv = document.getElementById('centerAddr');

        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            if (result[i].region_type === 'H') {
                infoDiv.innerHTML = result[i].address_name;
                break;
            }
        }
    }    
}
</script>
<script>
function markerchange() {
  marker.setMap(null);
  var yourTestSelect = document.getElementById("markerselect");

  var selectedValue = yourTestSelect.options[yourTestSelect.selectedIndex].value;
  markershape = yourTestSelect.options[yourTestSelect.selectedIndex];
  var category =  yourTestSelect.options[yourTestSelect.selectedIndex].id;
  imageSrc = selectedValue, // 마커이미지의 주소
  imageSize = new kakao.maps.Size(60, 65), // 마커이미지의 크기
  imageOption = {offset : new kakao.maps.Point(27, 69)
  }; // 마커이미지의 옵션 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정 
  
  // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
  markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
  // 지도를 클릭한 위치에 표출할 마커입니다
  marker = new kakao.maps.Marker({
  // 지도 중심좌표에 마커를 생성합니다 
  position : map.getCenter(),
  image : markerImage
  });
                           
  $('input[id=category]').val(category);

  // 지도에 마커를 표시합니다
  marker.setMap(map);
}
</script>
   </div>
                  <div class="wrapper">
                     <a href="#" data-needpopup-show="#small-popup">작은팝업</a> 
                     <a href="#" data-needpopup-show="#big-popup">큰팝업</a> 
                     <a href="#" data-needpopup-show="#custom-popup">게시물작성</a>

                    <div id='small-popup' class="needpopup">
                        <a href="#" data-needpopup-show="#big-popup">큰팝업</a>
                        <p>큰팝업</p>
                    </div>
                        <div id='custom-popup' class="needpopup"
                          data-needpopup-options="custom">

														<%if(dto ==null){ %>
														로그인을해주세요
														<%}else{ %>
                              <section class="container2">
														    <article class="half">
															        <h1>Posting</h1>
															        <div class="tabs">
																            <span class="tab signin active"><a href="#signin">ㅤ정보입력ㅤ</a></span>
															        </div>
															        <div class="content">
																            <div class="signin-cont cont">
																	                <form action="imageuploadtest" method="post" enctype="multipart/form-data">
																	               			<input type="hidden" name="lat" id="lat" readonly="readonly">
												                          					<input type="hidden" name="lng" id="lng" readonly="readonly">
												                          					<input type="hidden" id="category" name="category" value="1">
												                                    		<input type="hidden" id="user_id" name="user_id" value="<%=id %>">
																		                    <input type="text" name="title" id="title" class="inpt" required="required" placeholder="제목입력">
																		                    <input type="date" name="date2" id="date2" class="inpt" required="required" placeholder="날짜입력">
																		                    <input type="file" name="photo" id="photo" class="inpt"   accept="image/*" onchange="loadFile(this)" placeholder="사진입력">
												                                             <div class="fileContainer">
												                                                <div class="fileInput">
												                                                   <p id="fileName" class="hidden"></p>
												                                                </div>
												                                                <div class="buttonContainer2">
												                                                   <div class="submitButton" id="submitButton">사진
												                                                      확인</div>
												                                                </div>
												                                             </div>
												                                             <div class="tabs" id="newtabs">
																            				<span class="tab signin active"><a href="#signin">ㅤ본문작성ㅤ</a></span>
															        						</div>
																							<textarea id="newpost1" name="post"
												                                                   style="width: 380px; height: 380px;" cols="50" rows="3"></textarea>
												                                <div class="image-show" id="image-show"></div>
												                                             
																		                    <div class="submit-wrap">
																		                        <input type="submit" value="글쓰기" class="submit">
																		                    </div>
												        					        </form>
												    				        </div>
												    				    </div>
														    </article>
													</section>
													<%} %>

                         </div>
                                    <div id='big-popup' class="needpopup">
                                       <a href="#" data-needpopup-show="#small-popup">작은팝업</a>
                                    </div>
                                    </div>
						                         <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
						                         <script src="dist/needpopup.min.js"></script>
						                         <script src="assets/js/imageupload.js"></script>
                                   

                                    <script>
                                       needPopup.config.custom = {'removerPlace' : 'outside','closeOnOutside' : false,onShow : function() {
                                             console.log('needPopup is shown');
                                          },
                                          onHide : function() {
                                             console.log('needPopup is hidden');
                                          }
                                       };
                                       needPopup.init();
                                    </script>
                                    <script>
                                       $(document).on('click','#upload',function() {
                                                      $(this).text('');
                                                   })
                                                   
                                                   
                                       $(document).on('click','#submitButton',function() {
                                    	   				$('input[name=photo]').attr('type','hidden');
                                                   }) 
                                    </script>


                                    <!-- 지도 끝  -->
                                    <div class="col-sm-6"></div>

                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                    </section>
                                    <!-- End of contact section -->

                                    <!-- History section -->
                                    <section id="history" class="history sections">
                                       <div class="container">
                                          <div class="row">
                                             <div class="main_history">
                                                <div class="col-sm-6">
                                                   <div class="single_history_img">
                                                      <img src="assets/images/stab1.png" alt="" />
                                                   </div>
                                                </div>

                                                <div class="col-sm-6">
                                                   <div class="single_history_content">
                                                      <div class="head_title">
                                                         <h2>서비스 소개</h2>
                                                      </div>
                                                      <p id="explain">지도에 당신만의 발자취를 남겨보세요!</p>
                                                      <p>1. 지도에서 당신이 다녀왔던 장소를 클릭</p>
                                                      <p>2. 취향대로 마커의 모양 설정</p>
                                                      <p>3. 장소에 담긴 당신만의 이야기를 입력</p>
                                                      <p>4. 카테고리별로 발자취 공유</p>
                                                      <p>5. 팔로우한 친구의 발자취도 따라가볼까요?</p>

                                                      <a href="" class="btn btn-lg">BROWSE OUR WORK</a>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </section>
                                    <!--End of history -->


                                    <!-- service Section -->
                                    <section id="service" class="service">
                                       <div class="container-fluid">
                                          <div class="row">
                                             <div class="main_service">
                                                <div class="col-md-6 col-sm-12 no-padding">

                                                   <div
                                                      class="single_service single_service_text text-right">
                                                      <div class="head_title">
                                                         <h2>OUR SERVICES</h2>
                                                      </div>

                                                      <div class="row">
                                                         <div
                                                            class="col-md-12 col-sm-10 col-xs-10 margin-bottom-60">
                                                            <div class="row">

                                                               <div
                                                                  class="col-sm-10 col-sm-offset-1 col-xs-9 col-xs-offset-1">
                                                                  <article class="single_service_right_text">
                                                                     <h4>카카오맵API기반</h4>
                                                                     <p>안전한 API이용</p>
                                                                  </article>
                                                               </div>
                                                               <div class="col-sm-1 col-xs-1">
                                                                  <figure class="single_service_icon">
                                                                     <i class="fa fa-heart"></i>
                                                                  </figure>
                                                                  <!-- End of figure -->
                                                               </div>
                                                            </div>
                                                         </div>
                                                         <!-- End of col-sm-12 -->

                                                         <div
                                                            class="col-md-12 col-sm-10 col-xs-10 margin-bottom-60">
                                                            <div class="row">

                                                               <div
                                                                  class="col-sm-10 col-sm-offset-1 col-xs-9 col-xs-offset-1">
                                                                  <article class="single_service_right_text">
                                                                     <h4>카테고리별 마커 공유</h4>
                                                                     <p>카테고리별로 자신의 이야기를 공유해 보세요!</p>
                                                                  </article>
                                                               </div>
                                                               <div class="col-sm-1 col-xs-1">
                                                                  <figure class="single_service_icon">
                                                                     <i class="fa fa-heart"></i>
                                                                  </figure>
                                                                  <!-- End of figure -->
                                                               </div>
                                                            </div>
                                                         </div>
                                                         <!-- End of col-sm-12 -->

                                                         <div
                                                            class="col-md-12 col-sm-10 col-xs-10 margin-bottom-60">
                                                            <div class="row">

                                                               <div
                                                                  class="col-sm-10 col-sm-offset-1 col-xs-9 col-xs-offset-1 margin-bottom-20">
                                                                  <article class="single_service_right_text">
                                                                     <h4>타임라인</h4>
                                                                     <p>팔로우한 친구의 타임라인을 구경해 볼까요?</p>
                                                                  </article>
                                                               </div>
                                                               <div class="col-sm-1 col-xs-1">
                                                                  <figure class="single_service_icon">
                                                                     <i class="fa fa-heart"></i>
                                                                  </figure>
                                                                  <!-- End of figure -->
                                                               </div>
                                                            </div>
                                                         </div>
                                                         <!-- End of col-sm-12 -->

                                                      </div>
                                                   </div>
                                                </div>
                                                <!-- End of col-sm-6 -->

                                                <div class="col-md-6 col-sm-12 no-padding">
                                                   <figure class="single_service single_service_img">
                                                      <div class="overlay-img"></div>
                                                      <img src="assets/images/servicerightimg.jpg" alt="" />
                                                   </figure>
                                                   <!-- End of figure -->
                                                </div>
                                                <!-- End of col-sm-6 -->

                                             </div>
                                          </div>
                                          <!-- End of row -->
                                       </div>
                                       <!-- End of Container-fluid -->
                                    </section>
                                    <!-- End of service Section -->


                                    <section id="portfolio" class="portfolio sections">
                                       <div class="container-fluid">
                                          <div class="row">
                                             <div class="main_portfolio">
                                                <div class="col-sm-12">
                                                   <div class="head_title text-center">
                                                      <h2>BEST POST</h2>
                                                      <div class="subtitle">인기 게시물을 확인해 보세요!</div>
                                                      <div class="separator"></div>
                                                   </div>
                                                </div>
                                                <div class="work_menu text-center">
                                                   <div id="filters" class="toolbar mb2 mt2">
                                                      <button class="btn-md fil-cat filter active"
                                                         data-filter="all">ALL</button>
                                                      /
                                                      <button class="btn-md fil-cat filter" data-rel="web"
                                                         data-filter=".web">카테고리1</button>
                                                      /
                                                      <button class="btn-md fil-cat filter"
                                                         data-rel="design" data-filter=".design">카테고리1</button>
                                                      /
                                                      <button class="btn-md fil-cat filter"
                                                         data-rel="flyers" data-filter=".flyers">카테고리1</button>
                                                      /
                                                      <button class="btn-md fil-cat filter"
                                                         data-rel="bcards" data-filter=".bcards">카테고리1</button>
                                                      /
                                                      <!-- <button class="btn-md fil-cat filter" data-rel="photo"
                           data-filter=".photo">PHOTOGRAPHY</button>
                        /
                        <button class="btn-md fil-cat filter" data-rel="video"
                           data-filter=".video">VIDEO</button> -->
                                                   </div>

                                                </div>

                                                <div style="clear: both;"></div>
                                                <div id="portfoliowork">
                                                   <div
                                                      class="single_portfolio tile scale-anm web grid-item-width2 video">
                                                      <img src="assets/images/pf1.jpg" alt="" /> <a
                                                         href="assets/images/pf1.jpg" class="portfolio-img">
                                                         <div class="grid_item_overlay">
                                                            <div class="separator4"></div>
                                                            <h3>글제목1</h3>
                                                            <p>설명</p>
                                                         </div>
                                                      </a>
                                                   </div>
                                                   <div
                                                      class="single_portfolio tile scale-anm bcards photo">
                                                      <img src="assets/images/pf2.jpg" alt="" /> <a
                                                         href="assets/images/pf2.jpg" class="portfolio-img">
                                                         <div class="grid_item_overlay">
                                                            <div class="separator4"></div>
                                                            <h3>글제목2</h3>
                                                            <p>설명</p>
                                                         </div>
                                                      </a>
                                                   </div>
                                                   <div class="single_portfolio tile scale-anm web video">
                                                      <img src="assets/images/pf3.jpg" alt="" /> <a
                                                         href="assets/images/pf3.jpg" class="portfolio-img">
                                                         <div class="grid_item_overlay">
                                                            <div class="separator4"></div>
                                                            <h3>글제목3</h3>
                                                            <p>설명</p>
                                                         </div>
                                                      </a>
                                                   </div>
                                                   <div class="single_portfolio tile scale-anm web photo">
                                                      <img src="assets/images/pf4.jpg" alt="" /> <a
                                                         href="assets/images/pf4.jpg" class="portfolio-img">
                                                         <div class="grid_item_overlay">
                                                            <div class="separator4"></div>
                                                            <h3>T-SHIRT DESIGN</h3>
                                                            <p>art / t-shirt</p>
                                                         </div>
                                                      </a>
                                                   </div>
                                                   <div
                                                      class="single_portfolio tile scale-anm bcards design">
                                                      <img src="assets/images/pf5.jpg" alt="" /> <a
                                                         href="assets/images/pf5.jpg" class="portfolio-img">
                                                         <div class="grid_item_overlay">
                                                            <div class="separator4"></div>
                                                            <h3>T-SHIRT DESIGN</h3>
                                                            <p>art / t-shirt</p>
                                                         </div>
                                                      </a>
                                                   </div>

                                                   <div
                                                      class="single_portfolio tile scale-anm flyers video design">
                                                      <img src="assets/images/pf6.jpg" alt="" /> <a
                                                         href="assets/images/pf6.jpg" class="portfolio-img">
                                                         <div class="grid_item_overlay">
                                                            <div class="separator4"></div>
                                                            <h3>T-SHIRT DESIGN</h3>
                                                            <p>art / t-shirt</p>
                                                         </div>
                                                      </a>
                                                   </div>
                                                   <div
                                                      class="single_portfolio tile scale-anm photo flyers">
                                                      <img src="assets/images/pf7.jpg" alt="" /> <a
                                                         href="assets/images/pf7.jpg" class="portfolio-img">
                                                         <div class="grid_item_overlay">
                                                            <div class="separator4"></div>
                                                            <h3>T-SHIRT DESIGN</h3>
                                                            <p>art / t-shirt</p>
                                                         </div>
                                                      </a>
                                                   </div>

                                                   <div
                                                      class="single_portfolio tile scale-anm bcards video">
                                                      <img src="assets/images/pf8.jpg" alt="" /> <a
                                                         href="assets/images/pf8.jpg" class="portfolio-img">
                                                         <div class="grid_item_overlay">
                                                            <div class="separator4"></div>
                                                            <h3>T-SHIRT DESIGN</h3>
                                                            <p>art / t-shirt</p>
                                                         </div>
                                                      </a>
                                                   </div>

                                                </div>

                                                <div style="clear: both;"></div>
                                             </div>
                                          </div>
                                       </div>
                                       <!-- End off container -->
                                    </section>
                                    <!-- End off Work Section -->



                                    <!-- Study Section -->
                                    <!-- <section id="study" class="study text-center wow fadeIn"
         data-wow-duration="2s" data-wow-dealy="1.5s">
         <div class="container">
            <div class="row">
               <div class="main_study_area sections">
                  <div class="head_title text-center">
                     <h2>CASE STUDY</h2>
                     <div class="subtitle">A brief story about how this process
                        works, keep an eye till the end.</div>
                     <div class="separator"></div>
                  </div>
                  <div class="single_study_content">
                     <div class="col-sm-6">
                        <div class="single_study_slid_area">

                           <div class="single_study_text">
                              <div class="study_slider">
                                 <div class="item">
                                    <div class="s_study_icon">
                                       <i class="fa fa-lightbulb-o"></i>
                                    </div>
                                    <h4>aCCUMULATE CREATIVE IDEAS</h4>
                                    <div class="separator3"></div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and
                                       typesetting let. Lorem Ipsum has been the industry. Lorem
                                       Ipsum is simply dummy text of the printing and typesetting
                                       let. Lorem Ipsum has been the industry Printing and
                                       typelorem Ipsum has been the setting let.</p>

                                    <a href="" class="btn btn-lg">read more</a>
                                 </div>
                                 <div class="item">
                                    <div class="s_study_icon">
                                       <i class="fa fa-lightbulb-o"></i>
                                    </div>
                                    <h4>aCCUMULATE CREATIVE IDEAS</h4>
                                    <div class="separator3"></div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and
                                       typesetting let. Lorem Ipsum has been the industry. Lorem
                                       Ipsum is simply dummy text of the printing and typesetting
                                       let. Lorem Ipsum has been the industry Printing and
                                       typelorem Ipsum has been the setting let.</p>

                                    <a href="" class="btn btn-lg">read more</a>
                                 </div>
                                 <div class="item">
                                    <div class="s_study_icon">
                                       <i class="fa fa-lightbulb-o"></i>
                                    </div>
                                    <h4>aCCUMULATE CREATIVE IDEAS</h4>
                                    <div class="separator3"></div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and
                                       typesetting let. Lorem Ipsum has been the industry. Lorem
                                       Ipsum is simply dummy text of the printing and typesetting
                                       let. Lorem Ipsum has been the industry Printing and
                                       typelorem Ipsum has been the setting let.</p>

                                    <a href="" class="btn btn-lg">read more</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>


                     <div class="single_study_right_img">
                        <div class="col-sm-6">
                           <div class="single_study_img">
                              <img src="assets/images/study.jpg" alt="" />
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section> -->
                                    <!-- End off Study Section -->


                                    <!-- Counter Section -->
                                    <!-- <section id="counter" class="counter">
         <div class="video_overlay">
            <div class="container">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="main_counter_area text-center">

                        <div class="row">
                           <div class="single_counter border_right">
                              <div class="col-sm-3 col-xs-12">
                                 <div class="single_counter_item">
                                    <i class="icon icon-thumbs-up"></i>
                                    <h2 class="statistic-counter">3891</h2>
                                    <h4 class="">User Favourites</h4>
                                 </div>
                              </div>
                           </div>

                           <div class="single_counter">
                              <div class="col-sm-3 col-xs-12">
                                 <div class="single_counter_item">
                                    <i class="icon icon-business-3"></i>
                                    <h2 class="statistic-counter">281</h2>
                                    <h4 class="">Posts Last 24 Hours</h4>
                                 </div>
                              </div>
                           </div>

                           <div class="single_counter">
                              <div class="col-sm-3 col-xs-12">
                                 <div class="single_counter_item">
                                    <i class="icon icon-people-32"></i>
                                    <h2 class="statistic-counter">618</h2>
                                    <h4 class="">Total Posts</h4>
                                 </div>

                              </div>
                           </div>

                           <div class="single_counter">
                              <div class="col-sm-3 col-xs-12">
                                 <div class="single_counter_item">
                                    <i class="icon icon-cup"></i>
                                    <h2 class="statistic-counter">178</h2>
                                    <h4 class="">Amazing Features</h4>

                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div> 
         
      </section>-->
                                    <!-- End of counter section -->

                                    <!-- Pricing Section -->
                                    <section id="pricing" class="pricing">
                                       <div class="container">
                                          <div class="row">
                                             <!-- <div class="main_pricing_area sections">
                  <div class="head_title text-center">
                     <h2>OUR PRICING</h2>
                     <div class="subtitle">A 30 days free trial for all. A brief
                        story about how this process works, keep an eye till the end.</div>
                     <div class="separator"></div>
                  </div>
                  End off Head_title

                  <div class="col-md-4 col-sm-6">
                     <div class="single_pricing">
                        <div class="pricing_head">
                           <h3>STARTER</h3>
                           <div class="pricing_price">
                              <div class="p_r text-center">$19</div>
                              <div class="m_t text-center">per month</div>
                           </div>
                        </div>

                        <div class="pricing_body">
                           <ul>
                              <li>Competition Analysis Methods</li>
                              <li>All Ranked URLs</li>
                              <li>International Support System</li>
                              <li>Social Media Tracking</li>
                           </ul>
                           <a href="" class="btn btn-md">CHOOSE PLAN</a>
                        </div>
                     </div>
                  </div>
                  End off col-md-4
                  <div class="col-md-4 col-sm-6">
                     <div class="single_pricing pricing_business">
                        <div class="pricing_head ">
                           <h3>PREMIUM</h3>
                           <div class="pricing_price">
                              <div class="p_r text-center">$39</div>
                              <div class="m_t text-center">per month</div>
                           </div>
                        </div>

                        <div class="pricing_body">
                           <ul>
                              <li>Competition Analysis Methods</li>
                              <li>All Ranked URLs</li>
                              <li>International Support System</li>
                              <li>Social Media Tracking</li>
                           </ul>
                           <a href="" class="btn btn-md">CHOOSE PLAN</a>
                        </div>
                     </div>
                  </div>
                  End off col-md-4
                  <div class="col-md-4 col-sm-6">
                     <div class="single_pricing">
                        <div class="pricing_head">
                           <h3>BUSINESS</h3>
                           <div class="pricing_price">
                              <div class="p_r text-center">$99</div>
                              <div class="m_t text-center">per month</div>
                           </div>
                        </div>

                        <div class="pricing_body">
                           <ul>
                              <li>Competition Analysis Methods</li>
                              <li>All Ranked URLs</li>
                              <li>International Support System</li>
                              <li>Social Media Tracking</li>
                           </ul>
                           <a href="" class="btn btn-md">CHOOSE PLAN</a>
                        </div>
                     </div>
                  </div>
                  End off col-md-4
               </div> -->
                                          </div>
                                          <!-- End off row -->
                                       </div>
                                       <!-- End off container -->
                                    </section>
                                    <!-- End off Pricing Section -->

                                    <!-- Team Section -->
                                    <section id="team" class="team">
                                       <div class="main_team_area">
                                          <div class="container">
                                             <div class="row">
                                                <div class="col-sm-12">
                                                   <div
                                                      class="head_title textwhite text-center margin-top-80">
                                                      <h2>봄이 오겠조</h2>
                                                      <div class="subtitle">팀명 소개</div>
                                                      <div class="separator"></div>
                                                   </div>
                                                   <!-- End off Head_title -->

                                                   <div class="main_team">
                                                      <ul>
                                                         <li>
                                                            <div class="single_team_img">
                                                               <img src="assets/images/team1.jpg" alt="" />
                                                            </div>
                                                            <div class="single_team_text">
                                                               <h4>채상희</h4>
                                                               <p>Queen</p>
                                                            </div>
                                                         </li>
                                                         <li>
                                                            <div class="single_team_img">
                                                               <img src="assets/images/team2.jpg" alt="" />
                                                            </div>
                                                            <div class="single_team_text">
                                                               <h4>김상윤</h4>
                                                               <p>Talented-Developer</p>
                                                            </div>
                                                         </li>
                                                         <li>
                                                            <div class="single_team_img">
                                                               <img src="assets/images/team3.jpg" alt="" />
                                                            </div>
                                                            <div class="single_team_text">
                                                               <h4>김영환</h4>
                                                               <p>Moodeungsan-makguli</p>
                                                            </div>
                                                         </li>
                                                         <li>
                                                            <div class="single_team_img">
                                                               <img src="assets/images/team4.jpg" alt="" />
                                                            </div>
                                                            <div class="single_team_text">
                                                               <h4>김주원</h4>
                                                               <p></p>
                                                            </div>
                                                         </li>
                                                         <li>
                                                            <div class="single_team_img">
                                                               <img src="assets/images/test2.jpg" alt="" />
                                                            </div>
                                                            <div class="single_team_text">
                                                               <h4>정용재</h4>
                                                               <p>Goo-seol</p>
                                                            </div>
                                                         </li>
                                                      </ul>
                                                   </div>

                                                </div>
                                                <!-- End of main team contant -->
                                             </div>
                                          </div>
                                          <!-- End of container -->
                                       </div>
                                    </section>
                                    <!-- End off Team Section -->

                                    <!-- Client Logo Section -->
                                    <!-- <section id="clogo" class="clogo">
         <div class="container">
            <div class="row">
               <div class="main_clogo sections text-center">
                  <div class="head_title text-center">
                     <h2>Great Integrations with Others</h2>
                     <div class="subtitle">Suspendisse sed eros mollis,
                        tincidunt felis eget, interdum erat. Nullam sit amet odio eu est
                        aliquet euismod a a urna. Proin eu urna suscipit, dictum quam
                        nec.</div>
                     <div class="separator"></div>
                  </div>
                  End off Head_title

                  <div class="col-sm-3 col-xs-6">
                     <a href=""><img src="assets/images/clogo1.png" alt="" /></a>
                  </div>
                  <div class="col-sm-3 col-xs-6">
                     <a href=""><img src="assets/images/clogo2.png" alt="" /></a>
                  </div>
                  <div class="col-sm-3 col-xs-6">
                     <a href=""><img src="assets/images/clogo3.png" alt="" /></a>
                  </div>
                  <div class="col-sm-3 col-xs-6">
                     <a href=""><img src="assets/images/clogo4.png" alt="" /></a>
                  </div>
                  <div class="col-sm-3 col-xs-6">
                     <a href=""><img src="assets/images/clogo5.png" alt="" /></a>
                  </div>
                  <div class="col-sm-3 col-xs-6">
                     <a href=""><img src="assets/images/clogo6.png" alt="" /></a>
                  </div>
                  <div class="col-sm-3 col-xs-6">
                     <a href=""><img src="assets/images/clogo9.png" alt="" /></a>
                  </div>
                  <div class="col-sm-3 col-xs-6">
                     <a href=""><img src="assets/images/clogo8.png" alt="" /></a>
                  </div>
               </div>
            </div>
         </div>
         <div class="divider"></div>
      </section> -->
                                    <!-- End off clogo Section -->


                                    <!-- Blog Section -->
                                    <!--   <section id="blog" class="blog">
         <div class="container-fluid">
            <div class="row">
               <div class="main_blog sections">
                  <div class="head_title text-center">
                     <h2>OUR BLOG</h2>
                     <div class="subtitle">Suspendisse sed eros mollis,
                        tincidunt felis eget, interdum eratullam sit amet odio.</div>
                     <div class="separator"></div>
                  </div>-->
                                    <!-- End off Head_title -->

                                    <!--  <div class="main_blog_content">
                     <div class="col-sm-6">
                        <div class="single_blog_area textwhite">
                           <div class="row">
                              <div class="col-sm-6 no-padding">
                                 <div class="single_blog_img">
                                    <img src="assets/images/blog1.jpg" alt="" />
                                 </div>
                              </div>
                              <div class="col-sm-6 no-padding">
                                 <div class="single_blog_text s_b_left">
                                    <p>art/t-shirt</p>
                                    <h3>T-SHIRT DESIGN</h3>
                                    <div class="separator2"></div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and
                                       typesetting industry. Lorem Ipsum has been the indu Stry's
                                       standard dummy text ever since the 1500s, an unknown
                                       printer took a galley of type a scrambled it to make a type
                                       specimen book.</p>

                                    <a href="" class="read_more">Read More >></a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>

                     <div class="col-sm-6">
                        <div class="single_blog_area textwhite">
                           <div class="row">
                              <div class="col-sm-6 no-padding">
                                 <div class="single_blog_img">
                                    <img src="assets/images/blog2.jpg" alt="" />
                                 </div>
                              </div>
                              <div class="col-sm-6 no-padding">
                                 <div class="single_blog_text s_b_left">
                                    <p>art/t-shirt</p>
                                    <h3>T-SHIRT DESIGN</h3>
                                    <div class="separator2"></div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and
                                       typesetting industry. Lorem Ipsum has been the indu Stry's
                                       standard dummy text ever since the 1500s, an unknown
                                       printer took a galley of type a scrambled it to make a type
                                       specimen book.</p>

                                    <a href="" class="read_more">Read More >></a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-sm-6">
                        <div class="single_blog_area textwhite">
                           <div class="row">

                              <div class="col-sm-6 col-sm-push-6 no-padding">
                                 <div class="single_blog_img">
                                    <img src="assets/images/blog3.jpg" alt="" />
                                 </div>
                              </div>

                              <div class="col-sm-6 col-sm-pull-6 no-padding">
                                 <div class="single_blog_text s_b_right">
                                    <p>art/t-shirt</p>
                                    <h3>T-SHIRT DESIGN</h3>
                                    <div class="separator2"></div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and
                                       typesetting industry. Lorem Ipsum has been the indu Stry's
                                       standard dummy text ever since the 1500s, an unknown
                                       printer took a galley of type a scrambled it to make a type
                                       specimen book.</p>

                                    <a href="" class="read_more">Read More >></a>
                                 </div>
                              </div>

                           </div>
                        </div>
                     </div>

                     <div class="col-sm-6">
                        <div class="single_blog_area textwhite">
                           <div class="row">
                              <div class="col-sm-6 col-sm-push-6 no-padding">
                                 <div class="single_blog_img">
                                    <img src="assets/images/blog4.jpg" alt="" />
                                 </div>
                              </div>
                              <div class="col-sm-6 col-sm-pull-6 no-padding">
                                 <div class="single_blog_text s_b_right">
                                    <p>art/t-shirt</p>
                                    <h3>T-SHIRT DESIGN</h3>
                                    <div class="separator2"></div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and
                                       typesetting industry. Lorem Ipsum has been the indu Stry's
                                       standard dummy text ever since the 1500s, an unknown
                                       printer took a galley of type a scrambled it to make a type
                                       specimen book.</p>

                                    <a href="" class="read_more">Read More >></a>
                                 </div>
                              </div>

                           </div>
                        </div>
                     </div>

                  </div>

               </div>
            </div>
         </div>
      </section>
      <!-- End off Blog Section -->




                                    <section id="trial" class="trial text-center wow fadeIn"
                                       data-wow-duration="2s" data-wow-dealy="1.5s">
                                       <div class="main_trial_area">
                                          <div class="video_overlay sections">
                                             <div class="container">
                                                <div class="row">
                                                   <div class="main_trial">
                                                      <div class="col-sm-12">
                                                         <h2>
                                                            let's go <span>together !</span>
                                                         </h2>
                                                         <h4>A space for all memories</h4>
                                                         <a href="" class="btn btn-lg">- Traveler</a>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </section>
                                    <!-- End of Trial section -->


                                    <!--Footer section-->
                                    <section class="footer">
                                       <div class="container">
                                          <div class="row">
                                             <div class="col-sm-12">
                                                <div class="main_footer">
                                                   <div class="row">
                                                      <div class="col-sm-6 col-xs-12">
                                                         <div class="flowus">
                                                            <a href=""><i class="fa fa-facebook"></i></a> <a
                                                               href=""><i class="fa fa-twitter"></i></a> <a
                                                               href=""><i class="fa fa-google-plus"></i></a> <a
                                                               href=""><i class="fa fa-instagram"></i></a> <a
                                                               href=""><i class="fa fa-youtube"></i></a> <a
                                                               href=""><i class="fa fa-dribbble"></i></a>
                                                         </div>
                                                      </div>

                                                      <div class="col-sm-6 col-xs-12">
                                                         <div class="copyright_text">
                                                            <p class=" wow fadeInRight" data-wow-duration="1s">
                                                               Made with <i class="fa fa-heart"></i> by <a
                                                                  href="#">봄이오겠조</a>2022. 1차프로젝트
                                                            </p>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </section>
                                    <!-- End off footer Section-->











                                    </div>

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
                                    <script type="text/javascript">
(function createSecondLines(){
  var clock = document.querySelector(".clock");
  var rotate = 0;
  
  var byFive = function(n) {
    return (n / 5 === parseInt(n / 5, 10)) ? true : false;
  };
  
  for (i=0; i < 30; i++) {
    var span = document.createElement("span");
   
    if (byFive(i)) {
      span.className = "fives";
    }
    
    span.style.transform = "translate(-50%,-50%) rotate("+ rotate + "deg)";
    clock.appendChild(span);
    rotate += 6;
  }
})();

(function setClock() {
  var time = new Date();
  
  var hours = time.getHours();
  var minutes = time.getMinutes();
  var seconds = time.getSeconds();
  
  var clock = {
    hours: document.querySelector('.hours'),
    minutes: document.querySelector('.minutes'),
    seconds: document.querySelector('.seconds')
  };
  
  var deg = {
    hours: 30 * hours + .5 * minutes,
    minutes: 6 * minutes + .1 * seconds,
    seconds: 6 * seconds
  }
  
  clock.hours.style.transform = 'rotate(' + deg.hours + 'deg)';
  clock.minutes.style.transform = 'rotate(' + deg.minutes + 'deg)';
  clock.seconds.style.transform = 'rotate(' + deg.seconds + 'deg)';
  
  var runClock = function(){
    deg.hours += 360/43200;
    deg.minutes += 360/3600;
    deg.seconds += 360/60;
    
    clock.hours.style.transform = 'rotate(' + deg.hours + 'deg)';
    clock.minutes.style.transform = 'rotate(' + deg.minutes + 'deg)';
    clock.seconds.style.transform = 'rotate(' + deg.seconds + 'deg)';
  };
  
  setInterval(runClock,1000);
  
  (function printDate(){
    var months = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'];
    var print = months[time.getMonth()] + ' / ' + time.getDate();
    var output = document.querySelectorAll('output');
    
    [].forEach.call(output, function(node){
      node.innerHTML = print;
    });
  })();
  
})();
</script>
</body>
</html>