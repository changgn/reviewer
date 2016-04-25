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
			
			<c:forEach var="회원 목록 " items="${MembersVo}">  
				<tr align="center">
					<td width="150">
						<!-- 아이디 표시 -->
						아이디 : <c:out value="${id }"/> <!-- 아이디 출력-->
					</td>
					<td width="80">
						<!-- 해당 회원이 받은 추천수 표시 -->
						추천  <c:out value="${recommend_num }"/> <!-- 추천수 -->
					</td>
					<td width="100">
						<!-- 해당 회원 회원가입 일자 표시 -->
						가입일자 <c:out value="${reg_date }"/> <!-- 가입일 -->
					</td>
					<td width="60">
						<!-- 해당 회원 페이지 이동 버튼 -->
						<input type="button" onclick="프로필페이지?id=${id}">
					</td>
				</tr>
			 </c:forEach>
		</table>
	</body>
</html>