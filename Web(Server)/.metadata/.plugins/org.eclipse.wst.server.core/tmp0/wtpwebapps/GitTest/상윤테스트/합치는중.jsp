<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>좌표로 주소를 얻어내기</title>
    <style>
    .map_wrap {position:relative;width:100%;height:350px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
</head>
<body>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <div class="hAddr">
        <span class="title">지도중심기준 행정동 주소정보</span>
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
        level: 1 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 


if (navigator.geolocation) {

    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation
          .getCurrentPosition(function(
                position) {

             var lat = position.coords.latitude, // 위도
             lon = position.coords.longitude; // 경도

             var locPosition = new kakao.maps.LatLng(
                   lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
             message = ''; // 인포윈도우에 표시될 내용입니다

             // 마커와 인포윈도우를 표시합니다
             displayMarker(locPosition,
                   message);

          });

 } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

    var locPosition = new kakao.maps.LatLng(
          36.401572141642404, 126.570667), message = 'geolocation을 사용할수 없어요..'

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
   /*  var insertLat = document
          .getElementById('lat');
    $('input[id=lat]').val(lat);
    var insertLat = document
          .getElementById('lng');
    $('input[id=lng]').val(lng); */
	
    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
        if (status === kakao.maps.services.Status.OK) {
            var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
            detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
            
            var content = '<div class="bAddr">' +
                            '<span class="title">법정동 주소정보</span>' + 
                            detailAddr + 
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
kakao.maps.event
      .addListener(
            map,
            'drag',
            function() {
               var message = '지도를 드래그 하고 있습니다. '
                     + '지도의 중심 좌표는 '
                     + map
                           .getCenter()
                           .toString()
                     + ' 입니다.';
               console
                     .log(message);
            });

var clickmarker = '<a href="#" data-needpopup-show="#custom-popup">커스텀 팝업</a>'

	// 마커에 mouseover 이벤트를 등록한다
    kakao.maps.event
          .addListener(
                marker,
                'mouseover',
                function() {
                   console
                         .log('마커에 mouseover 이벤트가 발생했습니다!');
                });

    // 마커에 mouseout 이벤트 등록
    kakao.maps.event
          .addListener(
                marker,
                'mouseout',
                function() {
                   console
                         .log('마커에 mouseout 이벤트가 발생했습니다!');
                });

    // 마커에 dragstart 이벤트 등록
    kakao.maps.event
          .addListener(
                marker,
                'dragstart',
                function() {
                   console
                         .log('마커에 dragstart 이벤트가 발생했습니다!');
                });

    // 마커에 dragend 이벤트 등록
    kakao.maps.event
          .addListener(
                marker,
                'dragend',
                function() {
                   console
                         .log('마커에 dragend 이벤트가 발생했습니다!');
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
                           var yourTestSelect = document
                                 .getElementById("markerselect");

                           var selectedValue = yourTestSelect.options[yourTestSelect.selectedIndex].value;
                           markershape = yourTestSelect.options[yourTestSelect.selectedIndex];
                           var category =  yourTestSelect.options[yourTestSelect.selectedIndex].id;
                           imageSrc = selectedValue, // 마커이미지의 주소
                           imageSize = new kakao.maps.Size(60, 65), // 마커이미지의 크기
                           imageOption = {
                              offset : new kakao.maps.Point(27, 69)
                           }; // 마커이미지의 옵션 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정 
                           // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
                           markerImage = new kakao.maps.MarkerImage(
                                 imageSrc, imageSize, imageOption)
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
</body>
</html>