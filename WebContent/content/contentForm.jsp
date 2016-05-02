<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<html>
<head>
<title>게시글</title>
<script>
$(document).ready(function(){
	if("${comment}"=="true") {
		$("#content_comment_write").focus();
	}
});
$(function(){
	$("#content_btn_comment_write").click(function(){
		if($("#content_comment_write").val()=="") {
			alert("댓글을 입력해 주세요");
			return false;
		} else {
			$("#content_comment_write_form").submit();
		}
	});
});
</script>
<style>
.content_photo {
margin: 10 auto;
width: 500px;
height: 300px;
}
.content_photo img {
width: 100%;
height: 100%;
}
#content_comment_area {
margin: 0 auto;
}
#content_comment_wirte_area {
float: left; width: 399px; height: 58px; margin: 0 auto; font-size: 23px; 
}
#content_comment_wirted_area {
float: left; width: 399px; margin: 0 auto;
}
#content_comment_write {
	width: 100%; height: 100%; border: 0; padding: 10px; text-align:left; resize: none;  wrap:hard;
}
#content_comment_writed {
	width: 100%; height: 58px; border: 0; padding: 10px; text-align:left; resize: none;  wrap:hard;
}
#content_comment_info {
	padding: 10px 0 0 10px;
	text-align: left;
}
#writed_comment {
	height: 85px;
}
#comment_btn_delete {
	height: 83px;
	padding-top: 25px;
}
</style>
</head>
<body>
<div id="content_area">
	${board.id}, ${board.content}
</div>
<div id="content_photo_area">
	<c:forEach var="photo" items="${photoList}">
		<div class="content_photo"><img src="${photo.realPath}"></div>
	</c:forEach>
</div>
<div id="content_comment_area">
	댓글
	<c:if test="${login_status==0 || login_status==1}">
		<div class="size_long">
			<form id="content_comment_write_form" action="/Reviwer/content/contentPro.do?board_num=${board_num}">
				<div id="content_comment_wirte_area">
					<textarea id="content_comment_write" name="comment_textarea"></textarea>
				</div>
			</form>
			<div id="content_btn_comment_write" class="btn_short"><a href="#">작&nbsp;&nbsp;&nbsp;성</a></div>
		</div>
	</c:if>
	<c:forEach var="comment" items="${commentList}">
		<div id="writed_comment" class="size_long">
			<div id="content_comment_wirted_area" >
				<div id="content_comment_info">
					<a href="#">작성자</a> : ${comment.id} 작성시간 : <fmt:formatDate value="${comment.write_date}" pattern="yyyy-MM-dd HH:mm"/>
				</div>
				<div id="content_comment_wirted_area">
					<textarea id="content_comment_writed" readonly>${comment.content}</textarea>
				</div>
			</div>
			<div id="comment_btn_delete" class="btn_short"><a href="#">삭&nbsp;&nbsp;&nbsp;제</a></div>
		</div>
	</c:forEach>
</div>
</body>
</html>