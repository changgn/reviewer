<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
/*my_profile*/

.my_profile { float: left; width: 249px; height: 100%; padding: 13px; border: 20px; }
.my_profile { margin: 0 auto; font-size: 20px; }
#id_profile { float: left; width: 399px; height: 100%; margin: 0 auto; border: 32px; }
#category_profile { float: left; width: 399px; height: 100%; margin: 0 auto; border: 32px; }
#follower_profile { float: left; width: 399px; height: 100%; margin: 0 auto; border: 32px; }
#folloing_profile { float: left; width: 399px; height: 100%; margin: 0 auto; border: 32px; }
#board_profile { float: left; width: 399px; height: 100%; margin: 0 auto; border: 32px; }
#paramId_pofile { float: left; width: 399px; height: 100%; margin: 0 auto; border: 32px; }
#paramId_category_profile { float: left; width: 399px; height: 100%; margin: 0 auto; border: 32px; }
#paramId_follower_profile { float: left; width: 399px; height: 100%; margin: 0 auto; border: 32px; }
#paramId_folloing_profile { float: left; width: 399px; height: 100%; margin: 0 auto; border: 32; }
#recommend_num { float: left; width: 399px; height: 100%; margin: 0 auto; border: 0; }

</style>

<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<script>
$(function(){
	$("#board_profile").click(function(){
		var url = "/reviwer/content/contentForm.do?id=" +${SessionScope.id};
		window.location.href(url);

	});
});


</script>
<title>본인 프로필(MY)</title>
</head>
<body>

	<c:choose>
	<c:when test="${sessionScope.id }==${paramId }"> 
		<div class="my_profile" id="my_profile">
			<div class="my_profile" id="id_profile"> ${sessionScope.id }</div>
		 		<div class="my_profile" id="category_profile">	
					<c:forEach var="item" items="${CategoryList}" varStatus="status">
					<c:out value="${item.group1}"></c:out><br>
					<c:out value="${item.group2}"></c:out><br>
					<c:out value="${item.group3}"></c:out><br>
			</c:forEach> 
			</div>
			<div class="my_profile" id="folloing_profile1"><a href="#">팔로잉 </a></div>
			<div class="my_profile" id="follower_profile"><a href="#">  ${followerCount }</a></div>
			<div class="my_profile" id="folloing_profile"><a href="#">팔로잉  ${folloingCount }</a></div>
			<div class="my_profile" id="board_profile">게시글 </div>		
		</div>
		
	 </c:when> 
	
	 <c:otherwise>
		<div class="user_pofile" id="user-profile">
			<div class="user_profile" id="paramId_profile">${paramId }</div>
				 <div class="user_profile" id="paramId_category_profile">	
					<c:forEach var="item" items="${CategoryList}" varStatus="status">
					<c:out value="${item.group1}"></c:out>
					<c:out value="${item.group2}"></c:out>
					<c:out value="${item.group3}"></c:out>
			</c:forEach> 
			</div>
			<div class="user_profile" id="paramId_follower_profile">${followerCount }</div>
			<div class="user_profile" id="paramId_folloing_profile">${folloingCount }</div>
		</div>
	</c:otherwise>
	</c:choose>
	
	<br><br><br>



<%-- <div id="content_area">
	${board.id}, ${board.content}
</div>
<div id="content_photo_area">
	<c:forEach var="photo" items="${photoList}">
		<div class="content_photo"><img src="${photo.realPath}"></div>
	</c:forEach>
</div>
<div id="content_comment_area">
</div>
</div> --%>

</body>
</html>