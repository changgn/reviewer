<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<style>
			#repBoardList{margin:auto; max-width: 600px; border: thin;}
			*{font-family: 나눔고딕;}
		</style>
	</head>
	<body>
		<div id="repTitle" class="size_long title_find">
			신고 게시글 관리
		</div>
		<c:forEach var="board" items="${allBoardList}" > 
			<div id="repList">
				작성자 ${board.board.id}
				<a href="../content/contentForm.do?board_num=${board.board.board_num}"><input type="button" value="상세보기"></a>
				신고  ${board.board.report_num}
				<a href="/reviewer/content/deleteContent.do?id=${board.board.id},board_num=${board.board.board_num}" class="cont_popup_close" >게시글 삭제</a>
			</div>
		</c:forEach>
	</body>
</html>