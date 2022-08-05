<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>My Item - 로그인 페이지</title>
<link rel="stylesheet" href="css/login.css">
</head>

<body>
	<div class="wrap">
		<!--상단영역-->
		<header id="top">
			<!--로고-->
			<h1 id="logo">
				<!--로고글자-->
				<img id="ltit" src="images/mlogo_7.png" alt="로고글자">
				<!--빨간공-->
				<img id="rball" src="images/mlogo_6.png" alt="빨간공">
				<!--카멜레온-->
				<div id="cam">
					<span id="tt"></span> <img id="mel" src="images/mlogo_05.png"
						alt="카멜레온">
				</div>

				<a href="index.html" title="마이 아이템에 오신것을 환영합니다!"> <i class="bld">
						로고링크이동 </i>
				</a>
			</h1>
			<!--sns박스-->
			<ul class="sns">
				<li><a href="#"> <span class="bld"> 트위터 이동하기 </span>
				</a></li>
				<li><a href="#"> <span class="bld"> 인스타그램 이동하기 </span>
				</a></li>
				<li><a href="#"> <span class="bld"> 페이스북 이동하기 </span>
				</a></li>
			</ul>
			<!--로그인메뉴그룹-->
			<ul class="tmenu">
				<li><a href="login.html">회원가입</a></li>
				<li><a href="#">로그인</a></li>
				<li><a href="#">게시판</a></li>
				<li><a href="#">오시는길</a></li>
			</ul>

			<!--GNB(전역네비게이션)-->
			<nav id="gnb">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">디바이스</a> <!--서브메뉴-->
						<ol class="smenu">
							<li><a href="#">스마트폰</a></li>
							<li><a href="#">태블릿PC</a></li>
							<li><a href="#">노트북</a></li>
						</ol></li>
					<li><a href="#">패션</a> <!--서브메뉴-->
						<ol class="smenu">
							<li><a href="#">가방</a></li>
							<li><a href="#">시계</a></li>
							<li><a href="#">구두</a></li>
						</ol></li>
					<li><a href="#">프로필</a></li>
				</ul>

			</nav>
		</header>
		<!--컨텐츠영역-->
		<main id="cont">
			<!--로그인 타이틀-->
			<h2 class="tit">로그인</h2>
			<!--로그인 박스-->
			<section id="login">
					<div class="addBox disableselect">
						<a href="login.html">로그인</a> | <a href="#">회원가입</a> | <a href="#"></a>
					</div>

			</section>
		</main>
		<!--하단영역-->
		<footer id="info">
			<!--하단로고-->
			<img src="images/b_logo.png" alt="하단로고">
			<!--주소-->
			<address>서울시 강남구 논현동 32-45 대량빌딩 1455호, 대표:김랑랑</address>
		</footer>
	</div>

</body>
</html>