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
	<!-- ��� -->
	
		<div id="logo">
			�ΰ� �̹��� ����
		</div>
	</div>
	
	<div id="nav">
	<!-- �׺���̼� -->
	
		<div id="newsfeed">�����ǵ�</div>
		<div id="my">MY</div>
	</div>

	<decorator:body />
	
	<div id="footer">
	<!-- ǲ�� -->
	
		<a href="#">�̿���</a>
		<a href="#">����������޹�ħ</a>
	</div>
</body>
</html>