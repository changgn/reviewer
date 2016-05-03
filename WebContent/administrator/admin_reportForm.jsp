<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	</head>
	<body>
		<table border="1" align="center">
			<tr align="center">
				<td colspan="4">
					신고 게시글 관리
				</td>
			</tr>
			<c:forEach var="reporboard " items="${boardList}" > 
			
				<tr align="center">
					<td width="150">
						<!-- 작성자 -->
						<c:out value="${reporboard.board.id }"/>
					</td>
					<td >
						<!-- 해당 게시글 -->
						<input type="button" value="상세보기" onclick="../content/contentForm.do?board_num=${reporboard.board.board_num},id=${reporboard.board.id}">
					</td>
					<td width="100" align="left">
						<!-- 신고수 -->
						신고 <c:out value="${reporboard.board.report_num }"/>
					</td>
					<td width="100">
						<!-- 삭제  -->
						<a href="/reviewer/content/deleteContent.do?id=${reporboard.board.id}&board_num=${reporboard.board.board_num}" class="cont_popup_close" >게시글 삭제</a>
					</td>
				</tr>
			
			 </c:forEach>
		</table>
	</body>
</html>