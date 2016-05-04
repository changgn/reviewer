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
					alert("로그인이 필요합니다");
				}
				$(location).attr("href", $("#btn_my a").attr("href"));
			});
		});
	</script>
</head>
<body>

	<div id="header">
	<!-- 헤더 -->
		<h1 id="logo">
			<a id="logo_btn" href="/reviewer/main/mainForm.do" title="Reviewer">Reviewer</a>
		</h1>
		<span id="main_btn">

			<c:if test="${login_status!=0 && login_status!=1}">
				<a class="btn_gnb" href="/reviewer/logon/loginForm.do">
					<span id="btn_login">로그인버튼</span>
				</a>
			</c:if>
			<c:if test="${login_status==0 || login_status==1}">
				<a class="btn_gnb btn_user_toggle" href="#">
					<span id="btn_user">계정설정</span>
				</a>
			</c:if>
			<a class="btn_gnb" href="/reviewer/search/searchForm.do">
				<span id="btn_search">검색버튼</span>
			</a>
<!-- 		<a class="btn_gnb btn_alarm_toggle" href="#">
				<span id="btn_alarm">알림버튼</span>
			</a> 
-->
		</span>
		<div id="user">
			<ul id="list_user">
				<li><a href="/reviewer/categorySet/categorySetForm.do">카테고리 수정</a></li>
				<c:if test="${login_status==0}">
					<li><a href="#">관리자 페이지</a></li>
				</c:if>
				<li><a href="/reviewer/logon/modifyForm.do">회원정보 수정</a></li>
				<li><a href="/reviewer/logon/logout.do">로그아웃</a></li>
			</ul>
		</div>
<!-- 	<div id="alarm">
			<ul id="list_alarm">
				<li>알림1<br><a href="#">알림1</a></li>
				<li>알림2<br><a href="#">알림2</a></li>
				<li>알림3<br><a href="#">알림3</a></li>
				<li>알림4<br><a href="#">알림4</a></li>
				<li>알림5<br><a href="#">알림5</a></li>
			</ul>
		</div> 
-->
	</div>
	
	<div id="nav">
	<!-- 네비게이션 -->
		<ul id="list_nav">
			<li>
				<div id="btn_newsfeed"><a href="/reviewer/main/mainForm.do" class="nav_btn">뉴&nbsp;&nbsp;스&nbsp;&nbsp;피&nbsp;&nbsp;드</a></div>
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