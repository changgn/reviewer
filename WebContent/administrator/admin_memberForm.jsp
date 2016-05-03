<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
					<c:forEach var="memberList" items="${member }">
						<td width="150">
						<!-- 아이디 표시 -->
							아이디 : <c:out value="${memberList.member.id }"/> <!-- 아이디 출력-->
						</td>
						<td width="80">
							<!-- 해당 회원이 받은 추천수 표시 -->
							추천  <c:out value="${memberList.member.recommend_num }"/> <!-- 추천수 -->
						</td>
						<td width="100">
							<!-- 해당 회원 회원가입 일자 표시 -->
							가입일자 
							<fmt:formatDate value="${memberList.member.reg_date}" pattern="yyyy-MM-dd HH:mm"/> <!-- 가입일 -->
						</td>
						<td width="60">
							<!-- 해당 회원 페이지 이동 버튼 -->
							<input type="button" onclick="../profile/tithyneprofile?id=${memberlist.id}">
						</td>
					</c:forEach>
				</tr>
		</table>
	</body>
</html>