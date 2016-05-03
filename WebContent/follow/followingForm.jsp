<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
		$(function(){
			$('img').on({
				'click' : function(){
					var src = ($(this).attr('src')==='../image/icon_35.png')
					? '../image/icon_36.png'
							: '../image/icon_35.png';
					$(this).attr('src', src);
					
				}
			})
			$('src').change(function(){
				$('form').submit();
				location.reload();
			})
		});
		
		</script>
		<style>
			#followingNameList { margin: 0 auto; margin-top: 15px; padding-top: 10px;}
			#followingList { width: 500px; margin: 0 auto; }
			#followingIdList a { font-size: 30px;}
		</style>
	</head>
	<body>
		<div id="followingTable" >
			<div id="followingNameList" class="size_long title_find">
				 ${id}님의 팔로잉 목록 
			</div>
			<div id="followingList">
				<c:forEach var="toId" items="${toIdList}"> 
					<div id="followingIdList" class="title_find">
						<a href="/reviewer/profile/myProfile.do?id=${toId}">${toId}</a>
					</div>
						<img id="follow" src="../image/icon_35.png"/>
						<form name="followPro" id="followPro" method="post">${fromId}</form>
				 </c:forEach> 
			</div>
		</div> 
	</body>
</html>