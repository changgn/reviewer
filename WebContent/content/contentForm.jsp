<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<html>
<head>
<title>게시글</title>
<script>

$(function(){
	$(".cont_menu_option").click(function(){
		$(".cont_btn_option").css({
	    }).show();
	});
	$(".cont_btn_option").click(function(){
		$(this).hide();
	});
});

</script>
<script>
$(document).ready(function(){
	if("${error}"=="error") {
		$(location).attr("href", "/reviewer/main/mainForm.do");
	}

});
$(window).load(function(){
	if("${comment}"=="true") {
		$("#content_comment_write").focus();
		var top = $("#content_comment_area").offset().top;
		$('html, body').animate({ scrollTop : top });
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
	$("#noDelete").click(function(){
		alert("댓글 작성자만 삭제할 수 있습니다");
		var top = $("#content_comment_area").offset().top;
		$('html, body').animate({ scrollTop : top });
	});
});
</script>

<style>

</style>
</head>
<body>
<div id="content_area">
	<div class="content_wrap">
		<div class="content_first">	
			<div class="cont_writer">
				<a href="/reviewer/profile/myProfile.do?id=${board.id}" class="cont_writer_id">${board.id}</a>
				<div class="cont_wdate">
					<fmt:formatDate value="${board.write_date}" pattern="yyyy-MM-dd HH:mm"/>
				</div>
				<div class="cont_menu">
					<a href="#" class="cont_menu_option">
						<span id="cont_btn_menu">옵션</span>						
					</a>
					 <div class="cont_btn_option">
						<div class="ly_dimmed"></div>
						<ul class="cont_popup">
							<li>
								<a href="/reviewer/content/reportPro.do?board_num=${board.board_num}" class="cont_popup_close" >이 게시글 신고</a>
							</li>
						<c:if test="${board.id == id}">						
							<li>
								<a href="/reviewer/content/deleteContent.do?id=${board.id}&board_num=${board.board_num}" class="cont_popup_close" >이 게시글 삭제</a>
							</li>
						</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="content_second">
			<span class="content_view_sp">
				<span><pre>${board.content}</pre>
				</span>
			</span>
		</div>
   		
	        <span class="item_cont" title="컨텐츠 상세페이지">
	            <span class="item_thumb">
	                	<c:forEach var="photo" items="${photoList}">
							<div class="content_photo"><img src="${photo.realPath}"></div>
						</c:forEach>
	            </span>
	      	</span>
       	
       	<div class="cont_category_info">
       		<p id="cont_category_info_f">${category.group1} > ${category.group2} > ${category.group3}</p>
       	</div>
       	<div class="cont_btns">
       		<div class="cont_btns_wrap">
				<div class="btns_re">
					<a href="/reviewer/recommend/recommendPro.do?board_num=${board.board_num}" class="btns_re_item">
                		<span class="u_ico"></span><em class="u_txt">좋아요</em><em class="u_cnt"> ${board.recommend_num}</em>
                 	</a>
				</div>
				<a href="/reviewer/content/contentForm.do?board_num=${board.board_num}&comment=true" class="btns_coment" >
					<span class="u_ico_coment">댓글</span>
					<span class="text_num">${commentCount}</span>				
				</a>
				<!-- <a href="#" class="btns_screp" >
					<span class="u_ico_screp">스크렙</span>
					<span class="text_num">19</span>
				</a> -->
       		</div>
       	</div>
	</div>
</div>
<div id="content_comment_area">
	댓글(${commentCount})
	<c:if test="${login_status==0 || login_status==1}">
		<div class="size_content">
			<form id="content_comment_write_form" method="post" action="/reviewer/content/contentPro.do?board_num=${board_num}">
				<div id="content_comment_wirte_area">
					<textarea id="content_comment_write" name="comment_textarea"></textarea>
				</div>
			</form>
			<div id="content_btn_comment_write" class="btn_short"><a href="#">작&nbsp;&nbsp;&nbsp;성</a></div>
		</div>
	</c:if>
	<c:forEach var="comment" items="${commentList}">
		<div id="writed_comment" class="size_content">
			<div id="content_comment_wirted_area" >
				<div id="content_comment_info">
					작성자 : <a href="/reviewer/profile/myProfile.do?id=${comment.id}">${comment.id}</a>&nbsp;&nbsp;&nbsp; 작성시간 : <fmt:formatDate value="${comment.write_date}" pattern="yyyy-MM-dd HH:mm"/>
				</div>
				<div id="content_comment_wirted_area">
					<textarea id="content_comment_writed" readonly>${comment.content}</textarea>
				</div>
			</div>
			<div id="comment_btn_delete" class="btn_short">
				<c:if test="${comment.id==id}">
					<a href="/reviewer/content/contentPro.do?board_num=${board_num}&comment_num=${comment.coment_num}">삭&nbsp;&nbsp;&nbsp;제</a>
				</c:if>
				<c:if test="${comment.id!=id}">
					<a href="#" id="noDelete">삭&nbsp;&nbsp;&nbsp;제</a>
				</c:if>
			</div>
		</div>
	</c:forEach>
</div>
</body>
</html>
