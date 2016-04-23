<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html lang="ko">
<head>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<title><decorator:title /></title>
	<decorator:head />
	<script>
		function onSearch() {
			
		}
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
			<a class="btn_gnb" href="#" onclick="onSearch()">
				<span id="btn_alarm">알림버튼</span>
			</a>
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