<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
	</head>
	<body>
		<table border="1" align="center">
			<tr>
				<td colspan="2" align="center">
					${id }님의 팔로워 목록
				</td>
			</tr>
			<tr>
				<td width="150" align="center">
					<!-- 아이디 -->
					${id }
				</td>
				<td width="50">
					<!-- 이미지 버튼 -->
					<!-- 내가 팔로우 한 상대면 팔로우 이미지 표시 -->
					<!-- 팔로우 하지 않은 상대면 비팔로우 이미지 표시 -->
				</td>
			</tr>
		</table>
	</body>
</html>