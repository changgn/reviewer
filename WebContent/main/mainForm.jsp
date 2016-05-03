<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>메인페이지</title>
<script>

$(document).ready(function() {
	
	$("#reportDisplayPanel").bind("mouseleave", function() {
		$("#reportDisplayPanel").hide();   
	});
	console.log("ready end");
	
});
$(function(){
	$(".cont_menu_option").click(function(){
		var a = $("#menu_" + $(this).attr("id"));
		var top = a.offset().top;
		$("body").css({
			top: -top,
			position: "fixed",
			width: "100%"
		});
		a.css({
	    }).show();
	});
	$(".cont_btn_option").click(function(){
		$("body").css({
			position: "static",
			width: "100%",
			height: "auto",
		
		});
	
		$(this).hide();
	});
	
});

</script>
</head>
<body>
<c:forEach var="board" items="${allBoardList}">
	<div class="content_wrap">
		<div class="content_first">	
			<div class="cont_writer">
				<a href="/reviewer/profile/myProfile.do?id=${board.board.id}" class="cont_writer_id">${board.board.id}</a>
				<div class="cont_wdate">
					<fmt:formatDate value="${board.board.write_date}" pattern="yyyy-MM-dd HH:mm"/>
				</div>
				<div class="cont_menu">
					<a href="#" id="${board.board.board_num}" class="cont_menu_option">
						<span id="cont_btn_menu">옵션</span>						
					</a>
					 <div id="menu_${board.board.board_num}" class="cont_btn_option">
						<div class="ly_dimmed"></div>
						<ul class="cont_popup">
							<li>
								<a href="/reviewer/content/reportPro.do?board_num=${board.board.board_num}" class="cont_popup_close" >이 게시글 신고</a>
							</li>
						<c:if test="${board.board.id == id}">						
							<li>
								<a href="/reviewer/content/deleteContent.do?id=${board.board.id}&board_num=${board.board.board_num}" class="cont_popup_close" >이 게시글 삭제</a>
							</li>
						</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="content_second">
			<span class="content_view">
				<span><pre>${board.board.content}</pre>
					<span class="cont_theview">
						<span>...</span>
						<a href="/reviewer/content/contentForm.do?board_num=${board.board.board_num}" class="btn_view_more">더보기</a>
					</span>
				</span>
			</span>
		</div>
		<c:if test="${board.photo.realPath != null}">
	   		<a href="/reviewer/content/contentForm.do?board_num=${board.board.board_num}" class="item_info_wrap">
		        <span class="item_cont" title="컨텐츠 상세페이지">
		            <span class="item_thumb">
		                <img class="list_photo" src="${board.photo.realPath}">
		                <span class="thumb_mask_bottom"></span>
		            </span>
		      	</span>
	       	</a>
       	</c:if>
       	<div class="cont_category_info">
       		<p id="cont_category_info_f">${board.category.group1}> ${board.category.group2}> ${board.category.group3}</p>
       	</div>
       	<div class="cont_btns">
       		<div class="cont_btns_wrap">
				<div class="btns_re">
					<a href="/reviewer/recommend/recommendPro.do?board_num=${board.board.board_num}" class="btns_re_item">
                		<span class="u_ico"></span><em class="u_txt">좋아요</em><em class="u_cnt">128</em>
                 	</a>
				</div>
				<a href="/reviewer/content/contentForm.do?board_num=${board.board.board_num}&comment=true" class="btns_coment" >
					<span class="u_ico_coment">댓글</span>
					<span class="text_num">${board.commentCount}</span>				
				</a>
<!-- 				<a href="#" class="btns_screp" >
					<span class="u_ico_screp">스크렙</span>
					<span class="text_num">19</span>
					</a> -->
       		</div>
       	</div>
	</div>
</c:forEach>
	<c:if test="${login_status==0 || login_status==1}">
		<div class="btn_posting_wrap">
			<a href="/reviewer/write/writeForm.do" class="btn_posting">
				<span class="u_vc">글쓰기</span>
			</a>
		</div>
	</c:if>
</body>
</html>