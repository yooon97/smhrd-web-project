<%@page import="com.smhrd.domain.Post"%>
<%@page import="com.smhrd.domain.Follow"%>
<%@page import="com.smhrd.domain.Marker"%>
<%@page import="com.smhrd.domain.MarkerDAO"%>
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
  
  List<Post> onepostList = (List)session.getAttribute("onepostList");
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
                <h2>게시글수정페이지</h2>
                <div class="subtitle">
                <span><%=onepostList.get(0).getUser_id() %>님 환영합니다.</span></div>
                <div class="separator"></div>
                 <section class="container3">
                                <article class="half">
                                      <h1>회원수정</h1>
                                      <div class="tabs">
                                            <span class="tab signin active"><a href="#signin">ㅤㅤ글제목ㅤㅤ</a></span>
                                      </div>
                                      <div class="content">
                                            <div class="signin-cont cont">
                                                  <form action="spostupdate" method="post">
                                                        <input type="text" name="title" id="title" class="inpt"  value="<%=onepostList.get(0).getTitle()%>">
                                                        <input type="hidden" name="post_seq" id="post_seq" value="<%=onepostList.get(0).getPost_seq() %>">
                                                         <div class="tabs">
                                                        <span class="tab signin active"><a href="#signin">본문내용</a></span>
                                                        </div>
                                                        <textarea id="post" name="post" style="width: 170px; height: 100px;" cols="50" rows="3" maxlength="200"><%=onepostList.get(0).getPost()%></textarea>
                                                        <input type="date" name="post_dt" id="post_dt" class="inpt" value="<%=onepostList.get(0).getPost_dt()%>">
                                                         
                                                         <div class="submit-wrap">
                                                         
                                                            <input type="submit" value="게시글수정" class="submit">
                                                        </div>
                                                  </form>
                                            </div>
                                        </div>
                                </article>
                          </section>
                
                
                
              </div>
              <!-- End off Head_title -->
              <div class="row"></div>

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
