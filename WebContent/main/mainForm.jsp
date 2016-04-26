<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>메인페이지</title>
<style type='text/css'>

	/* layout */
	#wrap{position:relative;min-width:630px;min-height:100%}
	#content{clear:both;min-height:650px;padding:50px 0 60px;margin:0 auto}
	#content:after{display:block;clear:both;content:''}
	.cont_body{margin:0 auto}
	.t_service #content{min-width:610px;max-width:950px;padding:164px 20px 60px}
	.t_single .gallery_wrap{max-width:630px}
	.t_default .cont_body{max-width:950px}
	.t_info{background-color:#f5f5f5}
	.t_my .cont_body{min-height:600px}
	.t_album .cont_body{min-height:445px}




	div{ display: block; }
	content{lear: both; min-height: 650px;padding: 50px 0 60px; margin: 0 auto;}
	
	.gallery_wrap{
		max-width: 630px;
		margin: 0 auto;
	
	
	}
	
	.gallery_column{padding-bottom: 0;}
	
	.list_photo{ overflow: visible; margin: 0; position: relative; }
	
	li.item .item_scrap .item_first{
		padding-top: 22px;
		float: none;
   		width: 100%;
    	height: auto;
    	padding-left: 0;
	
	}
	
	.item_scrap_info .item_info_upload .head_name{display:inline-block;max-width:80%;overflow:hidden;padding-left:4px;white-space:nowrap;text-overflow:ellipsis;color:#111}
	.item_info_upload .head_name{padding-right:2px;font-size:14px;font-weight:bold;letter-spacing:-1px;line-height:58px;vertical-align:top}
	
	.item_wrap{
		position: relative;
		background-color: #fff;
	}
	
	.item_scrap_info{
		margin-top: 22px;
    	border: 1px solid #e6e6e6;
    	border-bottom: 0 none;
	}
	
	.item_sub{
		position: relative;
	}
	
	.btn_posting_wrap{
		position : fixed;
		z-index: 2100;
		bottom: 30px;
		right: 30px;
		width:82px;
		height: 82px;
		background-image: url("../image/icon_55.png");

	}
	
	.btn_posting_wrap .btn_posting {
		display: block;
		width: 82px;
		height: 82px;
		background-position: -220px -130px
	}
	
	.btn_posting_wrap .brn_posting:hover{
		background-position: -310px -13px
	
	}
	
	.btn_posting_wrap .brn_posting.scroll_down{
		display: none;
	}
	
	.btn_upload_file{
		display: block; 
		width: 100%;
		height: 100%;
		opacity: 0.01;
		filter: alpha(opacity=1);
		cursor: pointer
	}
	
	.u_vc{
		overflow: hidden!important;
		position: absolute!important;
		visibility: hidden;
		top:0;
		left:0;
		width:1px!important;
		height: 1px!important;
		padding: 0!important;
		font-size: 1px!important;
		line-height: 1px!important;
		color: transparent!important;
	}
	
	.control_box{
		background-image: url("../image/icon_18.png");
		position: absolute;
		top: 15px;
		right: 4px;
		z-index: 10

	}
	
</style>
</head>
<body>
<br>
<br>
	<div class="content">
		<div class="cont_body">
			<div class="gallery_wrap" id="_myFeedList" data-list-type="feed" data-list-status="loaded">
				<div class="gallery_column">
					<ul class="list_photo">
						<li class="item item_scrap item_first" data-post-type="multi" data-is-initialized="true">
							<div class="item_wrap">
								<div class="item_scrap_info">
									<div class="item_sub">
										<div class="item_info_upload">
											<a href="#" class="head_name">작성자</a>
											<div id="control_box">
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
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