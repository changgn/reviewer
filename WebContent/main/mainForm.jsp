<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>메인페이지</title>
<style type='text/css'>

	div{ display: block; }
	
	.btn_posting_wrap{
		position : fixed;
		z-index: 2100;
		bottom: 30px;
		right: 30px;
		width:82px;
		height: 82px;
		background-color: navy;

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
		opacity:0.01;
		filter: alpha(opacity=1);
		cursor:pointer
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
	
</style>
</head>
<body>
<br>
<br>
<center>
	<div class="maincontent">
		<table id="maintable" border="1" width="700" align="center">
				<tr height="50">
						<td colspan="3" align="center" width="100">
							<a href="#">작성자</a>				
						</td>
						<td colspan="1" align="center" width="50">
							<a href="#">팔로우이미지</a>
						</td>
						<td width="200">
						</td>
						<td width="200">
						</td>
						<td align="center" width="100">
							시간
						</td>
						<td align="center" width="50">
							<a href="#">글메뉴이미지</a>
						</td>
				</tr>
				<tr height="50">
						<td colspan="7" align="center" width="650">
							<a href="#">내용</a>
						</td>
						<td align="center" width="50">
							<a href="#">더보기</a>
						</td>
				</tr>
				<tr height="300">	
					<td colspan="8" align="center" width="700">
						<a href="#">사진</a>
					</td>
				</tr>
				<tr height="50">
					<td colspan="8" align="center" width="700">
						카테고리 정보
					</td>
				</tr>
				<tr height="50">
					<td align="center" width="50">
						<a href="#">추천</a>
					</td>
					<td align="center" width="50">
						<a href="#">댓글</a>
					</td>
					<td align="center" width="50">
						<a href="#">스크랩</a>
					</td>
				</tr>
		</table>
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
</center>
</body>
</html>