<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<script>
$(function(){
	$("#divboard_num").click(function(){
		var url = "/Reviwer/content/.contentForm.do?id=" +${SessionScope.id};
		window.open(url, "_blank", "width=500 ,height=300");

	});
});
</script>
<title>본인 프로필(MY)</title>
</head>
<body>

<table border="1" align="center">
	<tr align="center">
		<td colspan="2"><div id="divid">${sessionScope.id }</div></td>
	</tr>
	<tr align="center">
		<td colspan="2"><div id = "divcategory_id"></div></td>
	<c:forEach var="item" items="${CategoryList}" varStatus="status">
	<c:out value="${item.group1}"></c:out>
	<c:out value="${item.group2}"></c:out>
	<c:out value="${item.group3}"></c:out>
	
	</c:forEach>
	</tr>
	<tr>
		<td width="50" align="center"><div id="divfrom_id">${followerCount }</div></td>
		<td width="50" align="center"><div id="divto_id">${folloingCount }</div></td>
	</tr>
	<tr align="center">
		<td width="30"><div id="divboard_num">${board_num }</div></td>
		<td width="30"><div id="divscrep_num">스크랩</div></td>
	</tr>
</table>

<br><br>
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

<%-- <c:if test="">
<form action="" method="post" name="myform">
<table border="1" align="center">
	<tr align="center">
		<td colspan="2"><div id="divid">${SessionScope.id }</div></td>
	</tr>
	<tr align="center">
		<td colspan="2"><div id = "divcategory_id"></div></td>
	<c:forEach var="item" items="${CategoryList}" varStatus="status">
	<c:out value="${item.group1}"></c:out>
	<c:out value="${item.group2}"></c:out>
	<c:out value="${item.group3}"></c:out>
	
	</c:forEach>
	</tr>
	<tr>
		<td width="50" align="center"><div id="divfrom_id">${followerCount }</div></td>
		<td width="50" align="center"><div id="divto_id">${folloingCount }</div></td>
	</tr>
	<tr align="center">
		<td width="30"><div id="recommend">${board.recommend_num }</div></td>
	
	</tr>
</table>
</form>
<br><br>
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

</c:if>
 --%>
</body>
</html>