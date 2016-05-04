<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<head>
		<style>
			#adminMemberList{margin: auto;}
			#Member{margin: auto;}
		</style>
	</head>
	<body>
			<div id="adminMemberList" class="size_long title_find">
				전체 회원 관리 (${count})
			</div>
			
				<c:forEach var="memberList" items="${memberList }">
					<div id="Member" class="title_find">
						아이디 : ${memberList.id }	

						추천  ${memberList.recommend_num}

						가입일자  <fmt:formatDate value="${memberList.reg_date}" pattern="yyyy-MM-dd HH:mm"/>

						<input type="button" value="이동" onclick="../profile/myProfile?id=${memberlist.id}">
					</div>
				</c:forEach>
	</body>
</html>