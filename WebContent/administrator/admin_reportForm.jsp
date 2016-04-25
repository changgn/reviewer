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
			<c:forEach var="신고 게시글 " items="${BoardVo}">
				<tr align="center">
					<td width="150">
						<!-- 작성자 -->
						<c:out value="${id }"/>
					</td>
					<td width="80">
						<!-- 페이지 이동 -->
						상세보기
					</td>
					<td width="70">
						<!-- 신고수 -->
						신고 100
					</td>
					<td width="50">
						<!-- 삭제 버튼 -->
						<input type="button" value="삭제" onclick="삭제페이지?board_num=${board_num},id=${id}">
					</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>