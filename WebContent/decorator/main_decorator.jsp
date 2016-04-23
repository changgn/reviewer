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
			<a class="btn_gnb btn_toggle" href="#">
				<span id="btn_alarm">�˸���ư</span>
			</a>
		</span>
		<div id="alarm">
			<ul id="list_alarm">
				<li>�˸�1<br><a href="#">�˸�1</a></li>
				<li>�˸�2<br><a href="#">�˸�2</a></li>
				<li>�˸�3<br><a href="#">�˸�3</a></li>
				<li>�˸�4<br><a href="#">�˸�4</a></li>
				<li>�˸�5<br><a href="#">�˸�5</a></li>
			</ul>
		</div>
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