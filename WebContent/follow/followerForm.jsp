<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script type="text/javascript">

		$(function(){
			var followimage = $('.followimage');
			var from;
			var to;
			followimage.click(function(){
				for(){
					
				}
				if('${toId}'=='${fromId}')
				followimage.attr('src','../image/icon_36.png');
			})
		})
		function changeImg() {
		var img1 = document.getElementById('img1');

		if(img1.src.indexOf('_over') == -1) {
		img1.src = img1.src.replace('.png', '_over.png');

		} else {
		img1.src = img1.src.replace('_over.png', '.png');

		}
		}
		<img id="img1" src="../images/sub11/bt01_01_over.png" onclick="changeImg()" style="cursor:pointer"/>
		</script>
	</head>
	
	<body>
			<table align="center">
				<tr>
					<td colspan="2" align="center">
						${id}님의 팔로워 목록
					</td>
				</tr>
				
				<tr>
					<c:forEach var="fromId" items="${fromIdList}"> 
						<td width="150" align="left">
							<a href="#">${fromId}</a>
						</td>
						<td width="50" align="center">
							<!-- 팔로우 이미지 -->
							
								<a href="#"><img id="nofollow" src="../image/icon_35.png" alt="disney" /></a>
								<a href="#"><img id="okfollow" src="../image/icon_36.png" alt="disney" /></a>
							
							<!-- <a href="#"> <img id="fc" src="../image/icon_35.png" /></a> -->
						</td>
				 	</c:forEach> 
				</tr>
			</table>
	</body>
</html>