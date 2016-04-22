<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html lang="ko">
<head>
	<title><decorator:title /></title>
	<decorator:head />
	<style>
	body{
		margin: 0px;
		padding: 0px;
	}
	#header{
		background-color: #066E9F;
		width: 100%;
		height: 50px;
	}
	#nav{
		width: 100%;
		border: 1px;
		
	}
	#newsfeed{
		float: left;
		text-align: center;
		width: 50%;
		border: 1px;
		
	}
	#my{
		float: left;
		text-align: center;
		width: 50%;
		border: 1px;
		
	}
	#footer{
		margin: 0px;
		padding: 0px;
		color: white;
		background-color: #4C4C4C;
	}
	</style>
</head>
<body>

	<div id="header">
	<!-- 헤더 -->
	
		<div id="logo">
			로고 이미지 삽입
		</div>
	</div>
	
	<div id="nav">
	<!-- 네비게이션 -->
	
		<div id="newsfeed">뉴스피드</div>
		<div id="my">MY</div>
	</div>

	<decorator:body />
	
	<div id="footer">
	<!-- 풋터 -->
	
		<a href="#">이용약관</a>
		<a href="#">개인정보취급방침</a>
	</div>
</body>
</html>