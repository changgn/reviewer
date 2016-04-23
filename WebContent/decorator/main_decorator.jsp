<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html lang="ko">
<head>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<title><decorator:title /></title>
	<decorator:head />
	<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#alarm").hide();
		});
		$(function(){
			$(".btn_toggle").click(function(){
				$("#alarm:not(:animated)").toggle("fast");
			});
			$("body").click(function(){
				$("#alarm:not(:animated)").hide("fast");
			});
		});
		
	</script>
</head>
<body>

	<div id="header">
	<!-- 헤더 -->
		<h1 id="logo">
			<a id="logo_btn" href="#" title="REVIWER">REVIWER</a>
		</h1>
		<span id="main_btn">
			<a class="btn_gnb" href="#">
				<span id="btn_login">로그인버튼</span>
			</a>
			<a class="btn_gnb" href="#">
				<span id="btn_search">검색버튼</span>
			</a>
			<a class="btn_gnb btn_toggle" href="#">
				<span id="btn_alarm">알림버튼</span>
			</a>
		</span>
		<div id="alarm">
			<ul id="list_alarm">
				<li>알림1<br><a href="#">알림1</a></li>
				<li>알림2<br><a href="#">알림2</a></li>
				<li>알림3<br><a href="#">알림3</a></li>
				<li>알림4<br><a href="#">알림4</a></li>
				<li>알림5<br><a href="#">알림5</a></li>
			</ul>
		</div>
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