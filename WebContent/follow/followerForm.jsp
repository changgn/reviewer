<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
		
		$(document).ready(function(){
			$("#image1").$(this).attr("src").toggle(function(){
				// icon35에서 icon36으로 
				$("#image1").attr("src", "../image/icon_36.png");
				$("#image1").click(function(){
					$("#image1").bind("click",function(){
						$("#image1").attr("src","../image/icon_36.png");
					})
				});
				$("img").bind("click", function(){
					var src = ($(this).attr("src")==="../image/icon_35.png")
					? "../image/icon_36.png" : "../image/icon_35.png";
					$(this).attr("src",src);
				})
				
				// icon36에서 icon35으로 
				$("#image1").attr("src", "../image/icon_35.png");
				$("#image1").click(function(){
					$("#image1").bind("click",function(){
						$("#image1").attr("src","../image/icon_35.png");
					})
				});
				$("img").bind("click", function(){
					var src = ($(this).attr("src")==="../image/icon_36.png")
					? "../image/icon_36.png" : "../image/icon_36.png";
					$(this).attr("src",src);
				})
			})
		})

		</script>
		<style>
			*{font-size: 20px; font-family: 나눔고딕;}
			div#followerTable{margin: 10px; margin-left:150px; margin-right: 150px; margin-top: 50px; }
			div#followerNameList{witdh:300px; height:40px; background-color: aqua;}
			div#followwerList{width:350px; height:50px; background-color: maroon;} 
		</style>
	</head>
	
	<body>
		<div id="followerTable" >
			<div id="followerNameList">
				 ${id}님의 팔로워 목록 
			</div>
			<div id="followerList">
				<c:forEach var="fromId" items="${fromIdList}"> 
					<div id="followerIdList">
						${fromId}
					</div>
					<c:forEach var="myTo" items="${mytoIdList }">
						<div id= "followImageSpace">
							<a href="#" class="fis">
								<c:if test="${check!=0}">
									<img id="image1" src="../image/icon_35.png" />
								</c:if>
								<c:if test="${check==1}">
									<img id="image1" src="../image/icon_36.png" />
								</c:if>
							</a>
						</div>
					</c:forEach>
				 </c:forEach> 
			</div>
		</div> 
	</body>
</html>