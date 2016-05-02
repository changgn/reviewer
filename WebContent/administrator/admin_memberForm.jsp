<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	</head>
	<body>
		<table border="1" align="center">
			<tr align="center">
				<td colspan="4">
					전체 회원 관리 (<c:out value="${count }"/>)
				</td>
			</tr>
			
			<!-- 전체 회원수 count해서 보여주는 것 추가 -->
				<tr align="center">
					<td width="150">
						<!-- 아이디 표시 -->
						<c:forEach var="memberList" items="${memberList }">
							아이디 : <c:out value="${memberList }"/> <!-- 아이디 출력-->
						</c:forEach>
					</td>
					<td width="80">
						<!-- 해당 회원이 받은 추천수 표시 -->
						<c:forEach var="memberIdRecList" items="${memberIdRecList }">
						추천  <c:out value="${memberIdRecList }"/> <!-- 추천수 -->
						</c:forEach>
					</td>
					<td width="100">
						<!-- 해당 회원 회원가입 일자 표시 -->
						<c:forEach var="memberIdRegList" items="${memberIdRegList }">
						가입일자 <c:out value="${memberIdRegList }"/> <!-- 가입일 -->
						</c:forEach>
					</td>
					<td width="60">
						<!-- 해당 회원 페이지 이동 버튼 -->
						<input type="button" onclick="../profile/tithyneprofile?id=${memberlist.id}">
					</td>
				</tr>
		</table>
	</body>
</html>