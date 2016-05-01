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
		  
		    if(i%2!=0) // 되돌아올 때
		    {   
		        obj.src="../image/icon_35.png";
		    } 
		    else // 처음 클릭했을때
		    {   
		        obj.src="../image/icon_36.png";
		    }
		}
		
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
								<a href="#" onmousedown="follow(1); return true;" onmouseup="window.location='/Reviewer/follow/followerPro.do?id=${id},from_id=${from.from_id }'"> <img src="../image/icon_35.png" id="fc" /></a>
							</td>
				 	</c:forEach> 
				</tr>
			</table>
		
	</body>
</html>