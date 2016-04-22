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
			�ΰ� �̹��� ����
		</div>
	</div>
	<hr/>
	<div id="nav">
	<span id="newsfeed">�����ǵ�</span>
	<span id="my">MY</span>
	</div>
	<hr/>
	<decorator:body />
	<hr/>
	<div id="footer">�ϴ� ����
	<a href="#">�̿���</a>
	<a href="#">����������޹�ħ</a>
	</div>
</body>
</html>
