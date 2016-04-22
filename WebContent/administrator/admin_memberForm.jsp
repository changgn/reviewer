<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	</head>
	<body>
		<table border="1" align="center">
			<tr align="center">
				<td colspan="4">
					전체 회원 관리
				</td>
			</tr>
		<%-- 	<c:forEach var="회원 목록 " items="${회원목록리스트}"> --%>
				<tr align="center">
					<td width="150">
						<!-- 아이디 표시 -->
						아이디
						<c:out value="${number }"/> <!-- 아이디 출력-->
						<c:set var="number" value="${number-1 }"/> <!-- 목록에서 하나 빼기 -->
					</td>
					<td width="80">
						<!-- 해당 회원이 받은 추천수 표시 -->
						추천  20
					</td>
					<td width="100">
						<!-- 해당 회원 회원가입 일자 표시 -->
						2016.04.22.
					</td>
					<td width="60">
						<!-- 해당 회원 페이지 이동 버튼 -->
						페이지
					</td>
				</tr>
		<%-- 	</c:forEach> --%>
		</table>
	</body>
</html>