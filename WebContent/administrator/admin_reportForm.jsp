<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<style>
			.repmanage{width : 300px; height: 50px; margin: 0 auto; margin-top: 50px; margin-bottom: 40px; font-size: 40px;}
			#rbid{margin-top: 50px; font-size: 20px;}
			#reportNum{font-size: 20px; border: medium;}
			#repButton{font-size: 20px;}
		</style>
	</head>
	<body>
		<div class="repManage">
			신고 게시글 관리
		</div>
		<c:forEach var="board" items="${allBoardList}" > 
			<div id="repList">
				<div id="rbid">작성자 ${board.board.id}</div>
				<div id="reportNum">신고  ${board.board.report_num}</div>
				<div id="repButton">
					<a href="../content/contentForm.do?board_num=${board.board.board_num}"><input type="button" value="상세보기"></a>
					<a href="/reviewer/administrator/admin_Delete.do?board_num=${board.board.board_num}"><input type="button" value="삭제"></a>
				</div>
			</div>
		</c:forEach>
	</body>
</html>