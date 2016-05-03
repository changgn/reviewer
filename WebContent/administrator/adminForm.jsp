<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<style>
			html { height: 100%; }
			div{width : 300px; height: 50px; margin: 0 auto; margin-top: 150px; margin-bottom: 40px; background-color: aqua; text-decoration: none; font-family:'나눔고딕', 'Nanum Gothic', sans-serif;; box-sizing: border-box;}
		</style>
	</head>
	
	<body>
		<div id="repBoardManage">
			<a href="/reviewer/administrator/admin_reportForm.do">신고 게시글 관리</a>
		</div>
		<div id="popBoardManage">
			<a href="/reviewer/administrator/admin_popularityForm.do">인기 게시글 관리</a>
		</div>
		<div id="allMemberManage">
			<a href="/reviewer/administrator/admin_memberForm.do">전체 회원 관리</a>
		</div>
	</body>
</html>