<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<style>
			
		</style>
	</head>
	<body>
		<div id="populTitle" class="size_long title_find">
			인기 게시글 관리
		</div>
		<c:forEach var="board" items="${allBoardList}"> 
			<div id="popBoardList">
				작성자 ${board.board.id}
				<a href="../content/contentForm.do?board_num=${board.board.board_num}"><input type="button" value="상세보기"></a>
				추천 ${board.board.recommend_num}
					<a href="/reviewer/content/deleteContent.do?id=${board.board.id},board_num=${board.board.board_num}" class="cont_popup_close" >게시글 삭제</a>
			</div>
		</c:forEach>
	</body>
</html>