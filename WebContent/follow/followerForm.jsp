<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
		var i = 0;
		function follow(post_id)
		{   
		    i = i + post_id;
		    var obj = document.getElementById('fc');   
		    if(!obj) return;   
		  
		    if(i%2!=0)
		    {   
		        obj.src="../image/icon_36.png"; 
		        
		    } 
		    else 
		    {   
		        obj.src="../image/icon_35.png";
		    }
		}

		</script>
<!-- 		<style>
			.btn_follow_img{width:35px; height:35px; background-image: url("../image/icon_35.png");}
		</style> -->
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
							<c:if test="${check==0}">
								<a href="#" onclick="follow(1); return true; window.location='/Reviewer/follow/followerPro.do?id=${id},chekc=${check }'"> <img src="../image/icon_35.png" id="fc" /></a>
							</c:if>
							<c:if test="${check!=0}">
								<a href="#" onclick="follow(1); return true; window.location='/Reviewer/follow/followerPro.do?id=${id},chekc=${check }'"> <img src="../image/icon_36.png" id="fc" /></a>
							</c:if>
							<!-- <a href="#"> <img id="fc" src="../image/icon_35.png" /></a> -->
						</td>
				 	</c:forEach> 
				</tr>
	
			</table>
	</body>
	
</html>