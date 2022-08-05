<%@page import="com.smhrd.domain.Message"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.MessageDAO"%>
<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>봄이 오겠조</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/newmain.css" />
<link rel="stylesheet" href="assets/css/popup.css" />
<link rel="stylesheet" href="assets/css/mainphoto.css" />
<link rel="stylesheet" href="dist/needpopup.min.css">
<script src="jquery-3.4.1.js"></script>

<meta content="BlendTrans(Duration=0.2)" http-equiv="Page-Enter">
<meta content="BlendTrans(Duration=0.2)" http-equiv="Page-exit">

</head>
<body>
<nav class="nav">
  <input type="checkbox" class="nav__cb" id="menu-cb"/>
  <div class="nav__content">
    <ul class="nav__items">
      <li class="nav__item">
        <a class="nav__item-text">
          Login
        </a>
      </li>
      <li class="nav__item">
        <a href="myhome.jsp" class="nav__item-text" style="text-decoration: none;";>
          Post
        </a>
      </li>
      <li class="nav__item">
         <a class="nav__item-text">
          Info
        </a>
      </li>
    </ul>
  </div>
  <label class="nav__btn" for="menu-cb"></label>
</nav>

</body>
</html>