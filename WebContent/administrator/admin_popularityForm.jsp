<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<style>
			.recmanage{width : 300px; height: 50px; margin: 0 auto; margin-top: 50px; margin-bottom: 40px; font-size: 40px;}
			#rpid{padding:inherit; margin-top: 50px; font-size: 20px; border: }
			#recommendNum{font-size: 20px; border: medium;}
			#recButton{font-size: 20px;}
		</style>
	</head>
	<body>
		<div id="populTitle" class="size_long title_find">
			인기 게시글 관리
		</div>
		<c:forEach var="board" items="${allBoardList}"> 
			<div id="popBoardList">
				<div id="rpid">작성자 : ${board.board.id}</div>
				<div id="recommendNum">추천 ${board.board.recommend_num}</div>
				<div id="recButton">
					<a href="/reviewer/content/contentForm.do?board_num=${board.board.board_num}"><input type="button" value="상세보기"></a>
					<a href="/reviewer/administrator/admin_Delete.do?board_num=${board.board.board_num}"><input type="button" value="삭제"></a>
				</div>
			</div>
		</c:forEach>
	</body>
</html>