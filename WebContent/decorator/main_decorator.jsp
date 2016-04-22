<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html lang="ko">
<head>
	<title><decorator:title /></title>
	<decorator:head />
	<style>
	#header{
		background-color: #066E9F;
		margin: 0px;
		padding: 0px;
	}
	#nav{
		width: 100%;
		border: 1px;
		
	}
	#newsfeed{
		float: left;
		width: 50%;
		border: 1px;
		
	}
	#nmy{
		float: left;
		width: 50%;
		border: 1px;
		
	}
	</style>
</head>
<body>

	<div id="header">
		<div id="logo">
			로고 이미지 삽입
		</div>
	</div>
	<hr/>
	<div id="nav">
	<span id="newsfeed">뉴스피드</span>
	<span id="my">MY</span>
	</div>
	<hr/>
	<decorator:body />
	<hr/>
	<div id="footer">하단 내용
	<a href="#">이용약관</a>
	<a href="#">개인정보취급방침</a>
	</div>
</body>
</html>
