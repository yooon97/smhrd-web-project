<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>클릭한 위치에 마커 표시하기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="dist/needpopup.min.css">
<link rel="stylesheet" href="dist/popup.css">
<link rel="stylesheet" href="assets/css/imageupload.css" />

</head>
<body>
	<div>
		전체삭제
		<button id="delete">삭제</button>
		위도<input type="text" value="위도" id="lat"> 경도<input type="text"
			value="경도" id="lng">

	</div>

	<div id="map" style="width: 750px; height: 350px;"></div>
	<p>
		<em>지도를 클릭해주세요!</em>
	</p>


	</div>
	<div id="clickLatlng"></div>

	<script
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b2438cac030698bc148f62a014733b9"></script>
	<script>
		var lat = null;
		var lng = null;
		var markershape = null;
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.58881, 126.95743), // 지도의 중심좌표
			level : 8, // 지도의 확대 레벨
			mapTypeId : kakao.maps.MapTypeId.ROADMAP
		// 지도종류
		};

		//지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);

		if (navigator.geolocation) {

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {

				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도

				var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				message = ''; // 인포윈도우에 표시될 내용입니다

				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition, message);

			});

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new kakao.maps.LatLng(36.401572141642404,
					126.570667), message = 'geolocation을 사용할수 없어요..'

			displayMarker(locPosition, message);
		}
		function displayMarker(locPosition, message) {

			var iwContent = message, // 인포윈도우에 표시할 내용
			iwRemoveable = true;

			// 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
				content : iwContent,
				removable : iwRemoveable
			});

			// 인포윈도우를 마커위에 표시합니다 
			infowindow.open(map, marker);

			// 지도 중심좌표를 접속위치로 변경합니다
			map.setCenter(locPosition);
		}

		var imageSrc = 'https://cdn4.iconfinder.com/data/icons/navigation-and-location-5/100/location-11-256.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(60, 65), // 마커이미지의 크기입니다
		imageOption = {
			offset : new kakao.maps.Point(27, 69)
		}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
				imageOption)

		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new kakao.maps.Marker({
			// 지도 중심좌표에 마커를 생성합니다 
			position : map.getCenter(),
			image : markerImage
		});

		// 지도에 마커를 표시합니다
		marker.setMap(map);

		// 지도에 클릭 이벤트를 등록합니다
		// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		kakao.maps.event
				.addListener(
						map,
						'click',
						function(mouseEvent) {

							// 클릭한 위도, 경도 정보를 가져옵니다 
							var latlng = mouseEvent.latLng;

							// 마커 위치를 클릭한 위치로 옮깁니다
							marker.setPosition(latlng);
							var message = '클릭한 위치의 위도는 ' + latlng.getLat()
									+ ' 이고, ';
							message += '경도는 ' + latlng.getLng() + ' 입니다';
							var resultDiv = document
									.getElementById('clickLatlng');
							resultDiv.innerHTML = message;
							lat = latlng.getLat();
							lng = latlng.getLng();
							var insertLat = document.getElementById('lat');
							$('input[id=lat]').val(lat);
							var insertLat = document.getElementById('lng');
							$('input[id=lng]').val(lng);

							//지도 드래깅 이벤트를 등록한다 (드래그 시작 : dragstart, 드래그 종료 : dragend)
							kakao.maps.event.addListener(map, 'drag',
									function() {
										var message = '지도를 드래그 하고 있습니다. '
												+ '지도의 중심 좌표는 '
												+ map.getCenter().toString()
												+ ' 입니다.';
										console.log(message);
									});

							/* var clickmarker = '<a href="test1?lat=' + lat + '&lng=' + lng
									+ '">asdasd</a>' */

							var clickmarker = '<a href="#" data-needpopup-show="#custom-popup">커스텀 팝업</a>'

							// 마커에 클릭 이벤트를 등록한다 (우클릭 : rightclick)
							kakao.maps.event
									.addListener(
											marker,
											'click',
											function() {
												var iwContent = clickmarker, // 인포윈도우에 표시할 내용
												iwRemoveable = true;

												// 인포윈도우를 생성합니다
												var infowindow = new kakao.maps.InfoWindow(
														{
															content : iwContent,
															removable : iwRemoveable

														});

												// 인포윈도우를 마커위에 표시합니다 
												infowindow.open(map, marker);
												var message = '클릭한 위치의 위도는 '
														+ latlng.getLat()
														+ ' 이고, ';
												message += '경도는 '
														+ latlng.getLng()
														+ ' 입니다';

												var resultDiv = document
														.getElementById('clickLatlng');
												resultDiv.innerHTML = message;

											});
						});

		// 마커에 mouseover 이벤트를 등록한다
		kakao.maps.event.addListener(marker, 'mouseover', function() {
			console.log('마커에 mouseover 이벤트가 발생했습니다!');
		});

		// 마커에 mouseout 이벤트 등록
		kakao.maps.event.addListener(marker, 'mouseout', function() {
			console.log('마커에 mouseout 이벤트가 발생했습니다!');
		});

		// 마커에 dragstart 이벤트 등록
		kakao.maps.event.addListener(marker, 'dragstart', function() {
			console.log('마커에 dragstart 이벤트가 발생했습니다!');
		});

		// 마커에 dragend 이벤트 등록
		kakao.maps.event.addListener(marker, 'dragend', function() {
			console.log('마커에 dragend 이벤트가 발생했습니다!');
		});

		// 커스텀 오버레이를 생성하고 지도에 표시한다
		var customOverlay = new kakao.maps.CustomOverlay(
				{
					map : map,
					clickable : true, // 커스텀 오버레이 클릭 시 지도에 이벤트를 전파하지 않도록 설정한다
					content : '<div style="padding:0 5px;background:#fff;">HTML코드를 입력해주세요 :D</div>',
					position : new kakao.maps.LatLng(37.56350, 126.96496), // 커스텀 오버레이를 표시할 좌표
					xAnchor : 0.5, // 컨텐츠의 x 위치
					yAnchor : 0
				// 컨텐츠의 y 위치
				});
	</script>
	<div>
		마커 모양 선택 <select id="markerselect" onchange="markerchange()">

			<option
				value="https://cdn4.iconfinder.com/data/icons/navigation-and-location-5/100/location-11-256.png">기본마커</option>
			<option
				value="https://cdn3.iconfinder.com/data/icons/free-mix/128/business_office_seo_finance_work_coffee_pause_management-09-2-256.png">커피</option>
			<option
				value="https://cdn3.iconfinder.com/data/icons/food-delivery-4/64/31_food_delivery_restaurant_eat-256.png">음식</option>
			<option
				value="https://cdn3.iconfinder.com/data/icons/animal-40/128/Animal_Dog-256.png">강아지</option>
			<option
				value="https://cdn2.iconfinder.com/data/icons/basic-flat-icon-set/128/plane-256.png">여행</option>

		</select>
		<script>
			function markerchange() {
				marker.setMap(null);
				var yourTestSelect = document.getElementById("markerselect");

				var selectedValue = yourTestSelect.options[yourTestSelect.selectedIndex].value;
				markershape = yourTestSelect.options[yourTestSelect.selectedIndex];
				imageSrc = selectedValue, // 마커이미지의 주소
				imageSize = new kakao.maps.Size(60, 65), // 마커이미지의 크기
				imageOption = {
					offset : new kakao.maps.Point(27, 69)
				}; // 마커이미지의 옵션 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정 
				// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
				markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
						imageOption)
				// 지도를 클릭한 위치에 표출할 마커입니다
				marker = new kakao.maps.Marker({
					// 지도 중심좌표에 마커를 생성합니다 
					position : map.getCenter(),
					image : markerImage
				});

				// 지도에 마커를 표시합니다
				marker.setMap(map);

			}
		</script>
	</div>
	<div class="wrapper">
		<a href="#" data-needpopup-show="#small-popup">작은팝업</a> <a href="#"
			data-needpopup-show="#big-popup">큰팝업</a> <a href="#"
			data-needpopup-show="#custom-popup">커스텀 팝업</a>


		<div id='small-popup' class="needpopup">
			<a href="#" data-needpopup-show="#big-popup">큰팝업</a>
			<p>큰팝업</p>
		</div>
		<div id='custom-popup' class="needpopup"
			data-needpopup-options="custom">
			
			
			
			<!-- 파일 여러개 : enctype="multipart/form-data" -->
			<form method="post" action="imageuploadtest" enctype="multipart/form-data">
				<input type="hidden" name="lat" id="lat" readonly="readonly">
				<input type="hidden" name="lng" id="lng" readonly="readonly">

				<table width="400px">
					<tr bgcolor="gray" height="50px">
						<th colspan="2">제목 입력</th>
					</tr>
					<tr bgcolor="whitesmoke" height="30px">
						<td align="right"><textarea cols="50" rows="2" name="title" id="title"></textarea></td>
					</tr>


					<table width="400px">
						<tr bgcolor="whitesmoke">
							<td align="right" name="cate" id="cate">수정또함</td>
							<td><select>
									<option value="" selected disabled>선택해주세요</option>
									<option value="travel">여행</option>
									<option value="hobby">취미생활</option>
									<option value="dog">애견동반</option>
									<option value="love">데이트</option>
							</select></td>
						</tr>
						<tr bgcolor="whitesmoke">
							<td align="right">날짜</td>
							<td><input type="date" name="date" id="date"></td>
						</tr>
						<table width="400px">
							<tr bgcolor="gray" height="50px">
								<th colspan="2">사진 업로드
							<tr bgcolor="whitesmoke" height="30px">
								<td align="right">
									<div class="button">
										<label for="chooseFile" id="upload"> 👉 !사진업로드하기! 👈 </label>
									</div> <input type="file" id="chooseFile" name="photo"
									accept="image/*" onchange="loadFile(this)">
								</td>
							</tr>
							<table width="400px">
								
								<tr bgcolor="whitesmoke" height="30px">
									<td align="left">
										<div class="fileContainer">
											<div class="fileInput">
												<p>FILE NAME:</p>
												<p id="fileName"></p>
											</div>
											<div class="buttonContainer">
												<div class="submitButton" id="submitButton">사진 업로드</div>
											</div>
										</div>


								 <div class="image-show" id="image-show"></div>

										<div>
											<textarea name="post" style="width: 380px; height: 380px;" cols="50"
												rows="3"></textarea>
									</td>
								</tr>
								<td align="center"><input type="submit" value="글쓰기">
								</td>
								</div>
							</table>
							</form>

							</div>
							<div id='big-popup' class="needpopup">
								<a href="#" data-needpopup-show="#small-popup">작은팝업</a>

								</form>
							</div>
							</div>

							<script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
							<script src="dist/needpopup.min.js"></script>
							<script src="assets/js/imageupload.js"></script>

							<script>
								needPopup.config.custom = {
									'removerPlace' : 'outside',
									'closeOnOutside' : false,
									onShow : function() {
										console.log('needPopup is shown');
									},
									onHide : function() {
										console.log('needPopup is hidden');
									}
								};
								needPopup.init();
							</script>
							<script>
							// 좋아요 취소
					        $(document).on('click','#upload',function(){
					        	 $(this).text('');
					        })
							
							</script>
</body>
</html>