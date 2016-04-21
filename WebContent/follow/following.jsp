<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
	</head>
	<body>
		<table border="1" align="center">
			<tr>
				<td colspan="2" align="center">
					${id }님의 팔로잉 목록
				</td>
			</tr>
			<tr>
				<td width="150" align="center">
					<!-- 아이디 -->
					${id }
				</td>
				<td width="50">
					<!-- 이미지 버튼 -->
					<!-- 상대가 나를 팔로우 했다면 팔로우 이미지 표시 -->
					<!-- 상대가 나를 팔로우 하지 않았다면 비팔로우 이미지 표시 -->
				</td>
			</tr>
		</table>
	</body>
</html>