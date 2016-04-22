<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html lang="ko">
<head>
	<title><decorator:title /></title>
	<decorator:head />
	<style>
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	* {
		margin: 0;
		padding: 0;
		text-decoration: none;
		font-family: '나눔고딕', 'Nanum Gothic', sans-serif;;
		font: 13px '나눔고딕', 'Nanum Gothic', sans-serif;;
		box-sizing: border-box;
	}
	
	a {
		outline:0;
		text-decoration: none;
	}
	
	a:visited {
		text-decoration: none;
	}
	
	
	html {
		height: 100%;
	}
	
	ul,
	li {
		list-style: none;
	}
	
	body {
		margin: 0px;
		padding: 0px;
		height: 100%;
	}
	
	img {
		border: 0;
	}
	#header{
		background-color: #066E9F;
		width: 100%;
		height: 80px;
	}
	#logo{
		position: absolute;
	    top: 14px;
	    left: 20px;
	    width: 115px;
	    height: 36px;
	    font-size: 35px;
	    color: white;
	}
	#main_btn{
		position: absolute;
		padding: 11px 9px 0 9px;
		top: 0;
	    right: 21px;
	    height: 50px;
	    line-height: 47px;
	}
	.btn_gnb {
		display: inline-block;
	    height: 39px;
	    padding: 11px 9px 0 9px;
	    vertical-align: top;
	}
	#login{
		display: inline-block;
	    overflow: hidden;
	    width: 27px;
	    height: 28px;
	    background-position: -200px 0;
	    line-height: 999px;
	    vertical-align: top;
	    color: transparent;
	    background-image: url(../image/login.png);
	}

	#nav{
		width: 100%;
		height: 40px;
		padding: 0;
	}
	#list_nav{
		width: 100%;
		display: inline-block;
	    padding-top: 10px;
	    vertical-align: top;
		text-align: center;
	}
	#list_nav li{
		width: 50%;
		float: left;
		text-align: center;
	}
	#list_nav .nav_btn{
		font-size: 20px;
		color: black;
		padding: 10px 9px 0 9px;
		
	}

	#content{
		text-align: center;
		width: 100%;
		
	}
	#footer{
		height: 50px;
		margin: 0px;
		padding: 0px;
		text-align: center;
		background-color: #4C4C4C;
	}
	#list_policy{
		display: inline-block;
	    padding-top: 15px;
	    vertical-align: top;
	}
	#list_policy li{
		padding: 0 25px 0 25px;
		float: left;
	}
	#list_policy .list_link{
		font-size: 14pt;
		color: white;
	}
	</style>
</head>
<body>

	<div id="header">
	<!-- 헤더 -->
		<span id="logo">
			REVIWER
		</span>
		<span id="main_btn">
			<a class="btn_gnb" href="#">
				<span id="login"></span>
			</a>
			<span id="search">
				검색img
			</span>
			<span id="alarm">
				알림img
			</span>
		</span>
	</div>
	
	<div id="nav">
	<!-- 네비게이션 -->
		<ul id="list_nav">
			<li>
				<a href="#" class="nav_btn">뉴스피드</a>
			</li>
			<li>
				<a href="#" class="nav_btn">MY</a>
			</li>
		</ul>
	</div>
	<hr />
	<div id="content">
		<decorator:body />
	</div>
	
	<div id="footer">
	<!-- 풋터 -->
		<ul id="list_policy">
			<li>
				<a href="#" class="list_link">이용약관</a>
			</li>
			<li>
				<a href="#" class="list_link">개인정보취급방침</a>
			</li>
		</ul>
	</div>
</body>
</html>