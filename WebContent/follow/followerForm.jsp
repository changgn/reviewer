<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
		$(function(){
			while(fromId!=null){
				var from = ${fromId};
				while(mytoIdList!=null){
					var myTo = ${fromId}
					if(from==myTo){
						$('followImageSpace').data("${fromId}", "1");
					}else{
						$('followImageSpace').data("${fromId}", "0");
					}
				}
			}
			var va = $('followImageSpace').data("${fromId}");
		})
		
		
		$('#image2').hidden();
		$(document).ready(function(){
			
			// toggle 누르면 선택되고 다시 누르면 해제
			$('#followImage').toggle(function(){
				
			}); 
		})
		
		
		
		</script>
		<style>
			#followerTable{ margin: auto; }
			#followerList{ height:50px;  background-color: aqua;}
			#followerListName{font-size: 30px;}
			#followerId{font-size: 15px; width:100px; height:35px; }
			#followImageSpace{width:35px; height:35px;} 
		</style>
	</head>
	
	<body>
		<table id="followerTable" >
			<tr id="followerList" align="center">
				<td id="follwerListName"> ${id}님의 팔로워 목록 </td>
			</tr>
			<tr>
				<c:forEach var="fromId" items="${fromIdList}"> 
					<td id="followerId" align="left">
						${fromId}
					</td>
					<c:forEach var="myTo" items="${mytoIdList }">
						<td id= "followImageSpace"width="50">
							<a href="#">
								<c:if test="${fromId==myTo}">
									<img id="image1" src="../image/icon_35.png" />
								</c:if>
								<c:if test="${fromId!=myTo}">
									<img id="image2" src="../image/icon_36.png" />
								</c:if>
							</a>
						</td>
					</c:forEach>
				 </c:forEach> 
			</tr>
		</table> 
	</body>
</html>