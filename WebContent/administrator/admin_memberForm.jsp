<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<head>
		<style>
			#adminMemberList{margin: auto;}
			#Member{margin-top: 25px;}
			#allid{font-size: 18px;}
			#memrec{font-size: 18px;}
			#mdate{font-size: 18px;}
			#button{font-size: 18px;}
		</style>
	</head>
	<body>
			<div id="adminMemberList" class="size_long title_find">
				전체 회원 관리 (${count})
			</div>
			
				<c:forEach var="memberList" items="${memberList }">
					<div id="Member">
						<div id="allid">아이디 : ${memberList.id }</div>
						<div id="memrec">추천  ${memberList.recommend_num}</div>
						<div id="mdate">가입일자 : <fmt:formatDate value="${memberList.reg_date}" pattern="yyyy-MM-dd HH:mm"/></div>
						<div id="button"><a href="/reviewer/profile/myProfile.do?id=${memberList.id}"><input type="button" value="이동"></a></div>
					</div>
				</c:forEach>
	</body>
</html>