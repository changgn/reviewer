<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>메인페이지</title>
<style type='text/css'>

	div{ display: block; }
	
	/* layout */
	.content_wrap{width:650px; lear: both; min-height: 650px;padding: 0px 0 60px; margin: 50 auto; position:relative; border: 1px solid #e6e6e6;}
	.cont_body{margin:0 auto;}
	.content_first{margin-top: 22px;}
	.cont_writer{padding: 9px 100px 9px 17px; position: relative; text-align: left;}
	.cont_writer_id{padding-right: 2px;font-size: 14px;font-weight: bold;letter-spacing: -1px;line-height: 58px;vertical-align: top;margin-left: 10px;}


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
	#cont_btn_follow {display: inline-block;overflow: hidden;line-height: 999px;vertical-align: top;background-image: url(../image/icon_18.png);}
	
	/* 메인페이지 작성시간 */
	 .cont_wdate{top: 30px;right: 54px; position: absolute; z-index: 10; line-height: 999px; vertical-align: top;}
	
	/* 메인페이지 메뉴(신고, 삭제) */
	.cont_menu{right: 25px;position: absolute;top: 24px;}
	.cont_menu_option{display: block;overflow: hidden;line-height: 999px;padding: 3px 12px;	}
   	#cont_btn_menu{display: block;width: 4px;height: 22px;background-position: -300px 0;overflow: hidden;line-height: 999px;vertical-align: top;background-image: url("../image/icon_08.png");}
   	.cont_btn_option{display: none;position: fixed;z-index: 9999;top: 0;right: 0;bottom: 0;left: 0;line-height: 100%;text-align: center;}
    .cont_popup{display: inline-block;position: relative;z-index: 10000;width: 384px;background-color: #fff;line-height: normal;vertical-align: middle;}
    .cont_popup_close{display: inline-block;overflow: hidden;width: 100%;height: 60px;border: none;font-size: 16px;color: #414042;line-height: 60px;text-align: center;vertical-align: top;}
  
  	/* 본문내용 */
    .content_second{padding: 6px 26px 30px; margin-top: 22px;}
    .content_view{display: block;
    overflow: hidden;
    max-height: 110px;
    line-height: 1.6em;
    word-wrap: break-word;
    text-align: left;
    }
    
   	
</style>
</head>
<body>
	<div class="content_wrap">
		<div class="content_first">	
			<div class="cont_writer">
				<a href="#" class="cont_writer_id">작성자</a>
				<div class="control_box">
					<a href="#" class="btn_follow" >
						<span id="cont_btn_follow">팔로우</span>
					</a>
				</div>
				<div class="cont_wdate">
					<span>18:03:04</span>
				</div>
				<div class="cont_menu">
					<a href="#" class="cont_menu_option">
						<span id="cont_btn_menu">옵션</span>						
					</a>
					<div class="cont_btn_option" data-is-activated="false">
						<ul class="cont_popup" data-is-activated="false">
							<li>
								<a href="#" class="cont_popup_close" onclick="#">이 게시글 신고</a>
							</li>						
							<li>
								<a href="#" class="cont-popup_close" onclick="#">이 게시글 삭제</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="content_second">
			<span class="content_view">
				<span>글내용
					<span>...</span>
				</span>
			</span>
		
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="btn_posting_wrap">
		<a href="#" class="btn_posting">
			<span class="u_vc">글쓰기</span>
			<input type="file" name="picFile" class="btn_upload_file" data-url="/api/post/upload">
		</a>
	</div>
</body>
</html>