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
		});
		</script>
		<style>
			#followerNameList { margin: 0 auto; margin-top: 15px; padding-top: 10px;}
			#followerList { width: 500px; margin: 0 auto; }
			#followerIdList a { font-size: 30px;}
		</style>
	</head>
	
	<body>
		<div id="followerTable" >
			<div id="followerNameList" class="size_long title_find">
				 ${id}님의 팔로워 목록 
			</div>
			<div id="followerList">
				<c:forEach var="fromId" items="${fromIdList}"> 
					<div id="followerIdList" class="title_find">
						<a href="/reviewer/profile/myProfile.do?id=${fromId}">${fromId}</a>
					</div>
					<div id="followerImage">
						<img id="follow" src="../image/icon_35.png"/>
						<form name="followPro" id="followPro" method="post">${fromId}</form>
					</div>
				 </c:forEach> 
			</div>
		</div> 
	</body>
</html>