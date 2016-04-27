<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script type="text/javascript">

		$('.follow_image').click(function(){
			$('.follow_image').change('no_follow_iamge');
		})
		$('.no_follow_image').click(function(){
			$('.follow_image').change('no_follow_iamge');
		})
		
		</script>
	</head>
	
	<body>
		<form method="post" name="follow">
			<table border="1" align="center">
				<tr>
					<td colspan="2" align="center">
					
						<c:out value="${id }님의 팔로워 목록"/>
					</td>
				</tr>
				
				<tr>
					<c:forEach var="회원 목록 " items="${FollowList}" varStatus="from" >
						<td width="150" align="left">
							<!-- id를 팔로우 한 상대 아이디 목록 -->
							아이디
							<a href="profile.do"><c:out value="${from.from_id }"/></a>
						</td>
					
							<td width="50" align="center">
								<!-- 팔로우 이미지 -->
								<!-- 본인 프로필 계정이면 내가 팔로우한 상대이면 팔로우 이미지 -->
								<c:if test="${cn == 1 }">
									<c:if test="${id==from.from_id}">
										<img src="follow_image" width="10" height="10">
									</c:if>
									<c:if test="${id!=from.from_id }">
										<img src="no_follow_image" width="10" height="10">
									</c:if>
								</c:if>
								<!-- 내가 팔로우한 상대가 아니면 비팔로우 이미지 -->
								<c:if test="${cn != 1 }">
									<
									<img src="no_follow_image" width="10" height="10">
								</c:if>
							</td>
					</c:forEach>
				</tr>
			</table>
		</form>
	</body>
</html>