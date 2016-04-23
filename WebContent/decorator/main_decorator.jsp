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
	<!-- ��� -->
		<h1 id="logo">
			<a id="logo_btn" href="#" title="REVIWER">REVIWER</a>
		</h1>
		<span id="main_btn">
			<a class="btn_gnb" href="#">
				<span id="btn_login">�α��ι�ư</span>
			</a>
			<a class="btn_gnb" href="#">
				<span id="btn_search">�˻���ư</span>
			</a>
			<a class="btn_gnb" href="#" onclick="onSearch()">
				<span id="btn_alarm">�˸���ư</span>
			</a>
		</span>
	</div>
	
	<div id="nav">
	<!-- �׺���̼� -->
		<ul id="list_nav">
			<li>
				<a href="#" class="nav_btn">�����ǵ�</a>
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
	<!-- ǲ�� -->
		<ul id="list_policy">
			<li>
				<a href="#" class="list_link">�̿���</a>
			</li>
			<li>
				<a href="#" class="list_link">����������޹�ħ</a>
			</li>
		</ul>
	</div>
</body>
</html>