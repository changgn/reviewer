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
					var url = "reviewer/follow/followPro.do?check="+${SessionScop.check};
					window.location.href(url);
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
					var url = "reviewer/follow/followPro.do?check="+${SessionScop.check};
					window.location.href(url);
				})
			})
		})
		
		</script>
	</head>
	<body>
		<div id="followingTable" >
			<div id="followingNameList">
				 ${id}님의 팔로잉 목록 
			</div>
			<div id="followingList">
				<c:forEach var="toId" items="${fromIdList}"> 
					<div id="followingIdList">
						${fromId}
					</div>
						<div id= "followImageSpace">
							<a href="#" class="fis">
								<c:if test="${check==0}">
									<img id="image1" src="../image/icon_35.png" />
								</c:if>
								<c:if test="${check!=0}">
									<img id="image1" src="../image/icon_36.png" />
								</c:if>
							</a>
						</div>
				 </c:forEach> 
			</div>
		</div> 
	</body>
</html>