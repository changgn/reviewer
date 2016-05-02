<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<html>
<head>
<title>게시글</title>
<script>

$(document).ready(function() {
	
	$("#reportDisplayPanel").bind("mouseleave", function() {
		$("#reportDisplayPanel").hide();
	});
	console.log("ready end");
	
});

function showrp() {
	
    $(".cont_btn_option").css({
    }).show();
}

function hideReportPanel() {
	
	$(".cont_btn_option").hide();
}

</script>
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
	$("#noDelete").click(function(){
		alert("댓글 작성자만 삭제할 수 있습니다")
	});
});
</script>
<style type='text/css'>
	

	/* layout */
	.content_wrap{width:650px; lear: both; padding: auto; margin: 50 auto; position:relative; border: 1px solid #e6e6e6;}
	.cont_body{margin:0 auto;}
	.content_first{margin-top: 22px;}
	.cont_writer{padding: 9px 100px 9px 17px; position: relative; text-align: left;}
	.cont_writer_id{padding-right: 2px;font-size: 20px;font-weight: bold;letter-spacing: -1px;line-height: 58px;vertical-align: top;margin-left: 10px;}

	/* 글쓰기 버튼 */
	.btn_posting_wrap{position : fixed;z-index: 2100;bottom: 30px;right: 30px;width:82px;height: 82px;background-image: url("../image/icon_55.png");}
	.btn_posting_wrap .btn_posting {display: block;width: 82px;height: 82px;background-position: -220px -130px;}
	.btn_posting_wrap .brn_posting:hover{background-position: -310px -13px}
	.btn_posting_wrap .brn_posting.scroll_down{display: none;}
	.btn_upload_file{display: block; width: 100%;height: 100%;opacity: 0.01;filter: alpha(opacity=1);cursor: pointer}
	.u_vc{overflow: hidden!important;position: absolute!important;visibility: hidden;top:0;left:0;width:1px!important;height: 1px!important;padding: 0!important;font-size: 1px!important;line-height: 1px!important;color: transparent!important;}

	/* 메인페이지 팔로우 버튼 */
	.control_box{top: 23px;right: 54px; left: 80px; position: absolute; z-index: 10;}
	.btn_follow {width: 30px;height: 29px;margin-right: 3px;background-position: -180px -40px;overflow: hidden;float: left;vertical-align: top;}
	#cont_btn_follow {display: inline-block;overflow: hidden;line-height: 999px;vertical-align: top;background-image: url("../image/icon_18.png");}
	
	/* 메인페이지 작성시간 */
	 .cont_wdate{top: 30px;right: 54px; position: absolute; z-index: 10; vertical-align: top;}
	
	/* 메인페이지 메뉴(신고, 삭제) */
	.cont_menu{right: 25px;position: absolute;top: 24px;}
	.cont_menu_option{display: block;overflow: hidden;line-height: 999px;padding: 3px 12px;	}
   	#cont_btn_menu{display: block;width: 4px;height: 22px;background-position: -300px 0;overflow: hidden;line-height: 999px;vertical-align: top;background-image: url("../image/icon_08.png");}
   	.cont_btn_option{display: none;position: fixed;z-index: 9999;top: 0;right: 0;bottom: 0;left: 0;line-height: 100%;text-align: center;}
    .ly_dimmed{position: absolute;top: 0;right: 0;bottom: 0;left: 0;z-index: 9999;background-color: #000;opacity: .3;}
    .cont_popup{display: inline-block;position: relative;z-index: 10000;width: 384px;background-color: #fff;line-height: normal;vertical-align: middle; top:300px;}
    .cont_popup_close{display: inline-block;overflow: hidden;width: 100%;height: 60px;border: none;font-size: 16px;color: #414042;line-height: 60px;text-align: center;vertical-align: top;}
  
  	/* 본문내용 */
    .content_second{padding: 6px 26px 30px; margin-top: 22px;}
    .content_view{display: block;overflow: hidden;max-height: 110px;line-height: 1.6em;word-wrap: break-word;text-align: left;}
	.cont_theview{display: inline;}
	.btn_view_more{display: inline-block;padding-left: 6px;width: 55px;color: #b9b9b9;box-sizing: border-box;}
	.item_cont{padding-top: 28px;}
	.item_thumb{display: block;overflow: hidden;position: relative;text-align: center;}
    .thumb_mask_bottom{height: 181px;background-image: url(https://ssl.pstatic.net/static/m/pholar/img/mask_thumb_bottom_v2.png);position: absolute;right: 0;bottom: 0;left: 0;background-position: 0 100%;}
    .list_photo{width:100%;height:auto;vertical-align:top}
    
    /* 추천 버튼 */
    .cont_btns{border: 1px solid #e6e6e6;border-top: 0 none; margin-top: 22px;}
    .cont_btns_wrap{height: auto;padding-left: 20px;padding-bottom: 20px;padding-top: 20px;position: relative;padding: 27px 0 0 6px; }
   	.btns_re{float: left;}
   	.btns_re_item{display: inline-block;overflow: hidden;vertical-align: top; position: relative; bottom: 36; left: 20px;}
   	.u_ico{display: inline-block;overflow: hidden;line-height: 999px;vertical-align: top;width: 31px;height: 27px;background-image: url("../image/icon_13.png");}
    .u_txt{overflow: hidden;position: absolute;top: -999px;z-index: -1;width: 1px;height: 1px;font-size: 1px;line-height: 10px;color: transparent;}
    .u_cnt{font-size: 16px;color: #828282;line-height: 26px;}
    
    /* 댓글 버튼 */
    .btns_coment{float: left; margin-left: 35px;position: relative;bottom: 36;}
    .u_ico_coment{width: 31px;height: 29px; display: inline-block;overflow: hidden;margin-right: 3px;line-height: 999px;vertical-align: top;background-image: url("../image/icon_14.png");}
	.text_num{font-size: 16px;color: #828282;line-height: 26px;}
   		
   	/* 스크랩 버튼 */	
   	.btns_screp{float: left; margin-left: 15px;position: relative;bottom: 36;}
   	.u_ico_screp{width: 25px;height: 26px;    display: inline-block;overflow: hidden;margin-right: 3px;line-height: 999px;vertical-align: top;background-image: url("../image/icon_15.png");}

	/* 카테고리 정보 */
	.cont_category_info{padding: 6px 26px 30px; margin-top: 22px; text-align: left;}
	#cont_category_info_f{font-size: 14px;}
	
</style>
<style>
.size_content {
	width: 650px; height: 60px; margin: 15px auto; border: 1px solid #4C4C4C;
}
.content_photo {
margin: 10 auto;
width: 650px;
}
.content_photo img {
width: 100%;
}
#content_comment_area {
margin: 0 auto;
}
#content_comment_wirte_area {
float: left; width: 549px; height: 58px; margin: 0 auto; font-size: 23px; 
}
#content_comment_wirted_area {
float: left; width: 549px; margin: 0 auto;
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
	<div class="content_wrap">
		<div class="content_first">	
			<div class="cont_writer">
				<a href="/Reviwer/profile/myProfile.do?id=${board.id}" class="cont_writer_id">${board.id}</a>
				<div class="cont_wdate">
					<fmt:formatDate value="${board.write_date}" pattern="yyyy-MM-dd HH:mm"/>
				</div>
				<div class="cont_menu">
					<a href="#" class="cont_menu_option" onclick="showrp()">
						<span id="cont_btn_menu">옵션</span>						
					</a>
					 <div class="cont_btn_option" onclick="hideReportPanel()">
						<div class="ly_dimmed"></div>
						<ul class="cont_popup">
							<li>
								<a href="#" class="cont_popup_close" >이 게시글 신고</a>
							</li>
						<c:if test="${board.id == id}">						
							<li>
								<a href="/Reviwer/content/deleteContent.do?id=${board.id}&board_num=${board.board_num}" class="cont_popup_close" >이 게시글 삭제</a>
							</li>
						</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="content_second">
			<span class="content_view">
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
				<!-- <div class="btns_re">
					<a href="#" class="btns_re_item">
                		<span class="u_ico"></span><em class="u_txt">좋아요</em><em class="u_cnt">128</em>
                 	</a>
				</div> -->
				<a href="/Reviwer/content/contentForm.do?board_num=${board.board_num}&comment=true" class="btns_coment" >
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
			<form id="content_comment_write_form" method="post" action="/Reviwer/content/contentPro.do?board_num=${board_num}">
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
					작성자 : <a href="#">${comment.id}</a>&nbsp;&nbsp;&nbsp; 작성시간 : <fmt:formatDate value="${comment.write_date}" pattern="yyyy-MM-dd HH:mm"/>
				</div>
				<div id="content_comment_wirted_area">
					<textarea id="content_comment_writed" readonly>${comment.content}</textarea>
				</div>
			</div>
			<div id="comment_btn_delete" class="btn_short">
				<c:if test="${comment.id==id}">
					<a href="/Reviwer/content/contentPro.do?board_num=${board_num}&comment_num=${comment.coment_num}">삭&nbsp;&nbsp;&nbsp;제</a>
				</c:if>
				<c:if test="${comment.id!=id}">
					<a href="#" class="noDelete">삭&nbsp;&nbsp;&nbsp;제</a>
				</c:if>
			</div>
		</div>
	</c:forEach>
</div>
</body>
</html>
