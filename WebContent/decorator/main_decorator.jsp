<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<script src="http://code.jquery.com/jquery-1.2.3.min.js"></script>
	<title><decorator:title /></title>
	<decorator:head />
	<script>
		$(document).ready(function(){
			$("#alarm").css("display","none");
			$("#user").css("display","none");
		});
		$(function(){		
			$("#nav, #content").click(function(){
				$("#alarm, #user").css("display","none");
				$("#alarm, #user").removeAttr("class");
			});			
			$(".btn_alarm_toggle").click(function(){
				if($("#alarm").attr("class")=="selected"){
					$("#alarm").css("display","none");
					$("#alarm").removeAttr("class");
				}
				else {
					$("[class='selected']").css("display","none");
					$("[class='selected']").removeAttr("class");
					$("#alarm").attr("class","selected");
					$("#alarm").css("display","block");
				}
			});
			$(".btn_user_toggle").click(function(){
				if($("#user").attr("class")=="selected"){
					$("#user").css("display","none");
					$("#user").removeAttr("class");
				}
				else {
					$("[class='selected']").css("display","none");
					$("[class='selected']").removeAttr("class");
					$("#user").attr("class","selected");
					$("#user").css("display","block");
				}
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

			<c:set var="id" value="1" />
			<c:if test="${id==2}">
				<a class="btn_gnb" href="#">
					<span id="btn_login">�α��ι�ư</span>
				</a>
			</c:if>
			<c:if test="${id!=2}">
				<a class="btn_gnb btn_user_toggle" href="#">
					<span id="btn_user">��������</span>
				</a>
			</c:if>
			<a class="btn_gnb" href="/Reviwer/search/searchForm.do">
				<span id="btn_search">�˻���ư</span>
			</a>
			<a class="btn_gnb btn_alarm_toggle" href="#">
				<span id="btn_alarm">�˸���ư</span>
			</a>
		</span>
		<div id="user">
			<ul id="list_user">
				<li><a href="/Reviwer/categorySet/categorySetForm.do">ī�װ� ����</a></li>
				<li><a href="#">������ ������</a></li>
				<li><a href="#">ȸ���� ����</a></li>
				<li><a href="#">�α׾ƿ�</a></li>
			</ul>
		</div>
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