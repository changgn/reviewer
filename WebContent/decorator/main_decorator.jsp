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
			$("#btn_newsfeed").click(function(){
				$(location).attr("href", "/reviewer/main/mainForm.do");
			});

			$("#btn_my").click(function(){
				if($("#btn_my a").attr("href")=="/reviewer/logon/loginForm.do"){
					alert("�α����� �ʿ��մϴ�");
				}
				$(location).attr("href", $("#btn_my a").attr("href"));
			});
		});
	</script>
</head>
<body>

	<div id="header">
	<!-- ��� -->
		<h1 id="logo">
			<a id="logo_btn" href="/reviewer/main/mainForm.do" title="Reviewer">Reviewer</a>
		</h1>
		<span id="main_btn">

			<c:if test="${login_status!=0 && login_status!=1}">
				<a class="btn_gnb" href="/reviewer/logon/loginForm.do">
					<span id="btn_login">�α��ι�ư</span>
				</a>
			</c:if>
			<c:if test="${login_status==0 || login_status==1}">
				<a class="btn_gnb btn_user_toggle" href="#">
					<span id="btn_user">��������</span>
				</a>
			</c:if>
			<a class="btn_gnb" href="/reviewer/search/searchForm.do">
				<span id="btn_search">�˻���ư</span>
			</a>
<!-- 		<a class="btn_gnb btn_alarm_toggle" href="#">
				<span id="btn_alarm">�˸���ư</span>
			</a> 
-->
		</span>
		<div id="user">
			<ul id="list_user">
				<li><a href="/reviewer/categorySet/categorySetForm.do">ī�װ� ����</a></li>
				<c:if test="${login_status==0}">
					<li><a href="#">������ ������</a></li>
				</c:if>
				<li><a href="/reviewer/logon/modifyForm.do">ȸ������ ����</a></li>
				<li><a href="/reviewer/logon/logout.do">�α׾ƿ�</a></li>
			</ul>
		</div>
<!-- 	<div id="alarm">
			<ul id="list_alarm">
				<li>�˸�1<br><a href="#">�˸�1</a></li>
				<li>�˸�2<br><a href="#">�˸�2</a></li>
				<li>�˸�3<br><a href="#">�˸�3</a></li>
				<li>�˸�4<br><a href="#">�˸�4</a></li>
				<li>�˸�5<br><a href="#">�˸�5</a></li>
			</ul>
		</div> 
-->
	</div>
	
	<div id="nav">
	<!-- �׺���̼� -->
		<ul id="list_nav">
			<li>
				<div id="btn_newsfeed"><a href="/reviewer/main/mainForm.do" class="nav_btn">��&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;��</a></div>
			</li>
			<li>
				<div id="btn_my">
					<c:if test="${login_status!=0 && login_status!=1}">
						<a href="/reviewer/logon/loginForm.do" class="nav_btn">M&nbsp;&nbsp;&nbsp;Y</a>
					</c:if>
					<c:if test="${login_status==0 || login_status==1}">
						<a href="/reviewer/profile/myProfile.do?id=${sessionScope.id }" class="nav_btn">M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Y</a>
					</c:if>
				</div>
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