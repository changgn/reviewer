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
		<c:forEach var="boardList " items="${boardList}"> 
			<div id="popBoardList">
						<!-- 작성자 -->
				작성자 : ${boardList.id}
						<!-- 해당 게시글 -->
				<input type="button" value="상세보기" onclick="../content/contentForm.do?board_num=${boardList.id}&id=${boardList.id}">
						<!-- 신고수 -->
				신고 ${boardList.recommend_num}
						<!-- 삭제 Text -->
				<a href="/reviewer/content/deleteContent.do?id=${boardList.id}&board_num=${boardList.id}">게시글 삭제</a>
			</div>
		</c:forEach>
	</body>
</html>