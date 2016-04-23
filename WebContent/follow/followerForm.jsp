<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
	</head>
	
	<body>
		<table border="1" align="center">
				<tr>
					<td colspan="2" align="center">
						팔로워 목록
						<%-- 
						${id 아이디 }님의 팔로워 목록 
						--%>
					</td>
				</tr>
				<c:forEach var="i" begin="" end="">
					<tr>
						<td width="150" align="left">
							<!-- id를 팔로우 한 상대 아이디 목록 -->
							아이디
							<%-- 
							<a href="상대프로필 페이지로 이동">${상대 아이디 }</a> 
							 --%>
						</td>
						<td width="50" align="center">
							<!-- 이미지 버튼 -->
							<!-- id가 팔로우한 상대일 경우 팔로우 이미지 표시 -->
							<%-- 
							<c:if test="${ }">
								<img src="팔로우 이미지"/>
							</c:if>
							 --%>
							<!-- id가 팔로우한 상대가 아닐 경우 비팔로우 이미지 표시 -->
							<%-- 
							<c:if test="${t }">
								<img src="비팔로우 이미지" onclick="return follow()" />
							</c:if>
							--%>
							<img src="비팔로우 이미지" onclick="return follow()" />
						</td>
					</tr>
				</c:forEach>
		</table>
	</body>
</html>