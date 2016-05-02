<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	</head>
	<body>
		<table border="1" align="center">
			<tr align="center">
				<td colspan="4">
					인기 게시글 관리
				</td>
			</tr>
			
			 <c:forEach var="populboard " items="${rec_boa}"> 
			
				<tr align="center">
					<td width="150">
						<!-- 작성자 -->
						<c:out value="${populboard.id }"/>
					</td>
					<td width="80">
						<!-- 해당 게시글 -->
						<input type="button" value="상세보기" onclick="해당게시글?board_num=${populboard.board_num},id=${id}">
					</td>
					<td width="70">
						<!-- 신고수 -->
						신고 <c:out value="${populboard.recommend_num }"/>
					</td>
					<td width="50">
						<!-- 삭제 Text -->
						<a href="글삭제.do">삭제</a>
					</td>
				</tr>
			
			 </c:forEach>
		</table>
	</body>
</html>