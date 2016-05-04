<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<style>
			div#repBoardManage{margin-top: 100px; mamin-width: 300px; min-height: 100px; font-family: '나눔고딕', 'Nanum Gothic', sans-serif;; font: 30px '나눔고딕', 'Nanum Gothic', sans-serif;; box-sizing: border-box;}
			div#popBoardManage{margin-top: 10px; mamin-width: 300px; min-height: 100px; font-family: '나눔고딕', 'Nanum Gothic', sans-serif;; font: 30px '나눔고딕', 'Nanum Gothic', sans-serif;; box-sizing: border-box;}
			div#allMemberManage{margin-top: 10px; mamin-width: 300px; min-height: 100px; font-family: '나눔고딕', 'Nanum Gothic', sans-serif;; font: 30px '나눔고딕', 'Nanum Gothic', sans-serif;; box-sizing: border-box;}
		</style>
	</head>
	
	<body>
		<div id="admin" align="center">
			<div id="repBoardManage" >
				<a href="/reviewer/administrator/admin_reportForm.do">신고 게시글 관리</a>
			</div>
			<div id="popBoardManage">
				<a href="/reviewer/administrator/admin_popularityForm.do">인기 게시글 관리</a>
			</div>
			<div id="allMemberManage">
				<a href="/reviewer/administrator/admin_memberForm.do">전체 회원 관리</a>
			</div>
		</div>
	</body>
</html>