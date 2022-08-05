<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="assets/css/main.css" />

<meta content="BlendTrans(Duration=0.2)" http-equiv="Page-Enter">
<meta content="BlendTrans(Duration=0.2)" http-equiv="Page-exit">

</head>
<body style="text-align: center;">
	<%
	Member loginMember = (Member) session.getAttribute("loginMember");
	%>
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Menu -->
		<nav id="Delete">
		<ul class="actions vertical">
			<li><h5>회원정보삭제</h5></li>
			<form action="Delete" method="post">
				<li>접속한 ID : ${loginMember.user_id }</li>
				<li><input type="password" name="user_pw" placeholder="PW를 입력하세요"
					style="width: 500px; margin: 0 auto;">정말 삭제하시겠습니까?</li>
				
				<li><input type="submit" value="삭제" class="button fit"
					style="width: 500px; margin: 0 auto;"></li>
			</form>
		</ul>
		</nav>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>
