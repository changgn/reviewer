<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<style>
			#repBoardList{margin:auto; max-width: 600px; border: thin;}
		</style>
	</head>
	<body>
		<div id="repTitle" class="size_long title_find">
			신고 게시글 관리
		</div>
		<c:forEach var="boardList " items="${boardList}" > 
			<div id="repBoardList">
						<!-- 작성자 -->
				작성자 : ${boardList.id}
						<!-- 해당 게시글 -->
				<input type="button" value="상세보기" onclick="../content/contentForm.do?board_num=${boardList.board_num},id=${boardList.board.id}">
						<!-- 신고수 -->
				신고 ${boardList.report_num}
						<!-- 삭제  -->
				<a href="/reviewer/content/deleteContent.do?id=${boardList.id}&board_num=${boardList.board_num}" class="cont_popup_close" >게시글 삭제</a>
			</div>
		</c:forEach>
	</body>
</html>