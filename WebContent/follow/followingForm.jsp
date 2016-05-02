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
	</head>
	<body>
		<table border="1" align="center">
				<tr>
					<td colspan="2" align="center">
						<c:out value="${id }님의 팔로잉 목록"/>
					</td>
				</tr>
				
				<tr>
					<c:forEach var="toId" items="${toIdList}">
						<td width="150" align="left">
							<!-- id를 팔로우 한 상대 아이디 목록 -->
							아이디
							<a href="../profile/tithyneprofile.do?id=${toId}"><c:out value="${toId}"/></a>
						</td>
					
							<td width="50" align="center">
								<!-- 팔로우 이미지 -->
								
								<a href="#" onmousedown="follow(1); return true;" onmouseup="window.location='/Reviewer/follow/followerPro.do?id=${id},from_id=${toId }'"> <img src="../image/icon_36.png" id="fc" /></a>

							</td>
					</c:forEach>
				</tr>
			</table>
	</body>
</html>