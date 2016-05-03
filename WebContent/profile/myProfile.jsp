<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<script>
$(function(){
 $("#board_profile").click(function(){
  var url = "/Reviwer/content/.contentForm.do?id=" +${SessionScope.id};
  window.location.href(url);

 });
});
</script>

<title>본인 프로필(MY)</title>
</head>
<body>
<div id="profile">
 <c:if test="${sessionScope.id }==${paramId }">
  <div class="my_pofile">
   <div id="id_profile">${sessionScope.id }</div>
    <div id="category_profile"> 
     <c:forEach var="item" items="${CategoryList}" varStatus="status">
     <c:out value="${item.group1}"></c:out>
     <c:out value="${item.group2}"></c:out>
     <c:out value="${item.group3}"></c:out>
   </c:forEach>
   </div>
   <div id="follower_profile">${followerCount }</div>
   <div id="folloing_profile">${folloingCount }</div>
   <div id="board_profile">게시글</div>  
  </div>
 </c:if>
 
 <c:if test="${sessionScope.id}!=${paramId }"> //
  <div class="my_pofile">
   <div id="id_profile">${paramId }</div>
    <div id="category_profile"> 
     <c:forEach var="item" items="${CategoryList}" varStatus="status">
     <c:out value="${item.group1}"></c:out>
     <c:out value="${item.group2}"></c:out>
     <c:out value="${item.group3}"></c:out>
   </c:forEach>
   </div>
   <div id="follower_profile">${followerCount }</div>
   <div id="folloing_profile">${folloingCount }</div>
   <div id="recommend_num">추천수 </div>
  </div>
 </c:if>
 
 <br><br><br>
 
<div id="content_area">
 ${board.id}, ${board.content}
</div>
<div id="content_photo_area">
 <c:forEach var="photo" items="${photoList}">
  <div class="content_photo"><img src="${photo.realPath}"></div>
 </c:forEach>
</div>
<div id="content_comment_area">
</div>
</div>

</body>
</html>
