<%@page import="com.example.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!DOCTYPE HTML>
<html>
<head>
<title>Prologue by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">

	<!-- Header -->
	<div id="header">

		<div class="top">

			<!-- Logo -->
			<div id="logo">
				<span class="image avatar48"><img src="images/avatar.jpg"
					alt="" /></span>
				<%
  				MemberDTO dto = (MemberDTO)session.getAttribute("dto");

				String id = (String)session.getAttribute("nick");

				
				if (dto == null) {
				%>
				<h1 id="title">로그인을 해주세요.</h1>
				<p>로그인을 해주세요.</p>
				<%
				} else {
					%><h1 id="title"><%= dto.getId() %>님 환영합니다.</h1>
					<p>로그인 환영합니다.</p>
				<%
 
 				}	%>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="main.jsp" id="top-link"><span class="icon solid fa-home">메인</span></a></li>
					<li><a href="update.html" id="portfolio-link"><span class="icon solid fa-th">회원수정</span></a></li>
					<li><a href="delete.html" id="about-link"><span class="icon solid fa-user">회원삭제</span></a></li>
					<% if (dto == null) {%>
					<li><a href="Login.jsp" id="about-link"><span class="icon solid fa-user">로그인</span></a></li>
					<li><a href="join.jsp" id="about-link"><span class="icon solid fa-user">Join</span></a></li>
					<%}  else {%>
					<li><a href="LogoutCon" id="about-link"><span class="icon solid fa-user">로그아웃</span></a></li>
					<%
 					}%>
				</ul>
			</nav>
		</div>

		<div class="bottom">

			<!-- Social Icons -->
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a
					href="https://github.com/2022-SMHRD-KDT-BigData-4/TRAVELARY_first_project"
					class="icon brands fa-github"><span class="label">Github</span></a></li>
				<li><a href="#" class="icon brands fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon solid fa-envelope"><span
						class="label">Email</span></a></li>
			</ul>

		</div>

	</div>

	<!-- Main -->
	<div id="main">

		<!-- Intro -->
		<section id="top" class="one dark cover">
			<div class="container">

				<header>
					<h2 class="alt">
						테스트중입니다. <strong>Prologue</strong>, a <a href="#">free</a>
						responsive<br /> 테스트중입니다. <a href="#">테스트</a>.
					</h2>
					<p>
						테스트<br /> 테스트.
					</p>
				</header>

				<footer>
					<a href="#portfolio" class="button scrolly">추천 글 보러가기</a>
				</footer>

			</div>
		</section>

		<!-- Portfolio -->
		<section id="portfolio" class="two">
			<div class="container">

				<header>
					<h2>기능소개</h2>
				</header>

				<p>기능 소개란.</p>

				<div class="row">
					<div class="col-4 col-12-mobile">
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic02.jpg"
								alt="" /></a>
							<header>
								<h3>Ipsum Feugiat</h3>
							</header>
						</article>
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic03.jpg"
								alt="" /></a>
							<header>
								<h3>Rhoncus Semper</h3>
							</header>
						</article>
					</div>
					<div class="col-4 col-12-mobile">
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic04.jpg"
								alt="" /></a>
							<header>
								<h3>Magna Nullam</h3>
							</header>
						</article>
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic05.jpg"
								alt="" /></a>
							<header>
								<h3>Natoque Vitae</h3>
							</header>
						</article>
					</div>
					<div class="col-4 col-12-mobile">
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic06.jpg"
								alt="" /></a>
							<header>
								<h3>Dolor Penatibus</h3>
							</header>
						</article>
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic07.jpg"
								alt="" /></a>
							<header>
								<h3>Orci Convallis</h3>
							</header>
						</article>
					</div>
				</div>

			</div>
		</section>

		<!-- About Me -->
		<section id="about" class="three">
			<div class="container">

				<header>
					<h2>기능소개</h2>
				</header>

				<a href="#" class="image featured"><img src="images/pic08.jpg"
					alt="" /></a>

				<p>기능 소개란.</p>

			</div>
		</section>

		<!-- Contact -->
		<section id="contact" class="four">
			<div class="container">

				<header>
					<h2>기능소개</h2>
				</header>

				<p>기능 소개란.</p>

				<form method="post" action="#">
					<div class="row">
						<div class="col-6 col-12-mobile">
							<input type="text" name="name" placeholder="Name" />
						</div>
						<div class="col-6 col-12-mobile">
							<input type="text" name="email" placeholder="Email" />
						</div>
						<div class="col-12">
							<textarea name="message" placeholder="Message"></textarea>
						</div>
						<div class="col-12">
							<input type="submit" value="Send Message" />
						</div>
					</div>
				</form>

			</div>
		</section>

	</div>

	<!-- Footer -->
	<div id="footer">

		<!-- Copyright -->
		<ul class="copyright">
			<li>&copy; 봄이 오겠조</li>
			<li>Design: <a href="#">HTML5 UP</a></li>
		</ul>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>
</body>
</html>