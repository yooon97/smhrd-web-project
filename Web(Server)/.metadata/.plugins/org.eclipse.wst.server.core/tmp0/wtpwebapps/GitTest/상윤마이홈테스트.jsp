
<%@page import="com.smhrd.domain.Marker"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="com.smhrd.domain.MemberDAO"%>
<%@page import="com.smhrd.domain.MarkerDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.martest"%>
<%@page import="com.smhrd.domain.martestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Bino html5 free Template</title>
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



									<div class="collapse navbar-collapse"
										id="bs-example-navbar-collapse-1">

										<ul class="nav navbar-nav navbar-right">
											<li><a href="#home">HOME</a></li>
											<!-- <li><a href="#history">ABOUT US</a></li>
                                                <li><a href="#portfolio">PORTFOLIO</a></li>
                                                <li><a href="#pricing">PRICING</a></li>
                                                <li><a href="#team">TEAM</a></li>
                                                <li><a href="#blog">BLOG</a></li>
                                                <li><a href="#contact">CONTACT</a></li> -->
											<li><a href="#">Login</a></li>
											<li><a href="#">Post</a></li>
											<li><a href="#">Myhome</a></li>

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
											<p>???????????? ??? ????????? ?????? ??????????????????.</p>
											<div class="home_btn">
												<a href="heemain.jsp" class="btn btn-lg m_t_10">????????????</a> <a
													href="#" class="btn btn-default">?????????</a>
											</div>

										</div>
									</div>
									<div class="single_home_slider">
										<div class="main_home wow fadeInUp" data-wow-duration="700ms">
											<h3>????????? ??????</h3>
											<h1>????????? ????????????</h1>
											<div class="separator"></div>
											<p>??????????????? ????????????????????? ??????</p>
											<div class="home_btn">
												<a href="#" class="btn btn-lg m_t_10">????????? ???????????????</a> <a
													href="#history" class="btn btn-default">????????? ??????</a>
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
		
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
	<section id="contact" class="contact">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="contact_contant sections">
							<div class="head_title text-center">
								<h2>????????????</h2>
								<div class="subtitle">????????? ?????? ???????????? ??????????????? ????????? ?????????.</div>
								<div class="separator"></div>
							</div>
							<!-- End off Head_title -->
							<div class="row"></div>
							
<!-- ?????? ?????? ?????? -->	
<!-- ?????? input -->	



 <form method="post" action="com.smhrd.domain.MarkerDAO.selectUserMarker">
      <p><input type="date" min="1800-09-10" max="3000-09-25"></p>
      <p><input type="submit" value="??????"></p>
      </form>	
<style>
      
input[type="submit"] {
position: absolute;
top: 27.7%;
left: 9.3%;
}

</style>
    
    
    
   
<div id="map" style="width:100%;height:350px;"></div>       
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b2438cac030698bc148f62a014733b9"></script>  

<script>

<%  String id2 = (String)session.getAttribute("user_id");
	MarkerDAO dao = new MarkerDAO();
 	List<Marker> marList = dao.selectUserMarker(id2);
 	pageContext.setAttribute("marList",marList);
	System.out.print("[????????? ?????? ??????]");
	System.out.print(marList.get(0).getLONGITUDE() + " " +marList.get(0).getLATITUDE() ); %>

	

var mapContainer = document.getElementById('map'), // ????????? ????????? div 
    mapOption = { 
        center: new kakao.maps.LatLng(<%=marList.get(0).getLATITUDE()%>, <%=marList.get(0).getLONGITUDE()%>), // ????????? ????????????
        level: 3 // ????????? ?????? ??????
    };  


var map = new kakao.maps.Map(mapContainer, mapOption); // ????????? ???????????????


// ?????? ???????????? ?????? ???????????????. ??? ???????????? ????????? ?????? ???????????????

var positions = [];
			
			
var linePath = [];


<% for(int i = 0; i<marList.size()-1; i++) { %>
linePath.push(new kakao.maps.LatLng(<%=marList.get(i).getLATITUDE()%>, <%= marList.get(i).getLONGITUDE()%>))
<%};%>

<% for(int i =0; i<marList.size()-1; i++) {%>
positions.push({title: '<%=marList.get(i).getMarker_seq()%>', latlng: new kakao.maps.LatLng(<%=marList.get(i).getLATITUDE()%>, <%= marList.get(i).getLONGITUDE()%>)})
<%};%>




// ????????? ????????? ?????? ???????????????
var polyline = new kakao.maps.Polyline({
    path: linePath, // ?????? ???????????? ???????????? ?????????
    strokeWeight: 2, // ?????? ?????? ?????????
    strokeColor: '#ea0000', // ?????? ???????????????
    strokeOpacity: 0.7, // ?????? ???????????? ????????? 1?????? 0 ????????? ????????? 0??? ??????????????? ???????????????
    strokeStyle: 'solid' // ?????? ??????????????????
});

//????????? ?????? ??????????????? 
polyline.setMap(map);

//?????? ???????????? ????????? ???????????????
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // ?????? ???????????? ????????? ?????? ?????????
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // ?????? ???????????? ???????????????    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // ????????? ???????????????
    var marker = new kakao.maps.Marker({
        map: map, // ????????? ????????? ??????
        position: positions[i].latlng, // ????????? ????????? ??????
        title : positions[i].title, // ????????? ?????????, ????????? ???????????? ????????? ???????????? ???????????????
        image : markerImage // ?????? ????????? 
    });

}


</script>

<div class="col-sm-6"></div>

							
			</div></div></div></div>
		</section>
		
		<section class="footer">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="main_footer">
							<div class="row">
								<div class="col-sm-6 col-xs-12">
									<div class="flowus">
										<a href=""><i class="fa fa-facebook"></i></a> <a href=""><i
											class="fa fa-twitter"></i></a> <a href=""><i
											class="fa fa-google-plus"></i></a> <a href=""><i
											class="fa fa-instagram"></i></a> <a href=""><i
											class="fa fa-youtube"></i></a> <a href=""><i
											class="fa fa-dribbble"></i></a>
									</div>
								</div>

								<div class="col-sm-6 col-xs-12">
									<div class="copyright_text">
										<p class=" wow fadeInRight" data-wow-duration="1s">
											Made with <i class="fa fa-heart"></i> by <a href="#">???????????????</a>2022.
											1???????????????
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

</body>
</html>
