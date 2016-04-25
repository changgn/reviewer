<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>카테고리 설정</title>
<script>  
$("select[id=group_large]").change(function(){  // 셀렉트 박스가 체인지 될때 이벤트  
   var valX = $(this).val(); // 현재 선택된 값  
   var url = "http://localhost:8089/Reviwer/category_set/category_setForm.jsp"; // 데이터를 호출할 URL  
   $.ajax({  
      url        :  url,  
      type       : "POST",  
      data    : "key="+valX,  
      dataType   : "jsp",  
      contentType: "application/x-www-form-urlencoded; charset=UTF-8",  
      success    : function (data) {  
         $.each(data, function(i, d) { 
                   $("select[name=group_middle]").append('<option value="' + d.seq+ '">' + d.title+ '</option>'); 
         });
      }
   });
});  
</script>
</head>
<body>
	<div class="category_add">
		<div class="size_long category_text"><h1 class="text_main">카테고리 설정</h1></div>
		<div class="size_long category_setting">
			<select id="group_large" class="category_group"><option>대분류</option></select>
			<select id="group_middle" class="category_group"><option>중분류</option></select>
			<select id="group_small" class="category_group"><option>소분류</option></select>
		</div>
		<div class="btn_long"><a href="#">카 테 고 리&nbsp;&nbsp;&nbsp;추 가</a></div>
	</div>
	<div class="category_save">
		<div class="category_all">
			<c:if test="${CategoryListSize!=0}">
				<c:forEach var="Category" items="${CategoryList}">
					<div class="category_set size_long">
						<div class="size_short">
							${Category.group1}, ${Category.group2}, ${Category.group3}
						</div>
						<div class="btn_short"><a href="">삭&nbsp;&nbsp;&nbsp;제</a></div>
					</div>
				</c:forEach>
			</c:if>
			<c:if test="${CategoryListSize==0}">
			<div class="size_long category_text"><h1 class="text_sub">카테고리를 추가해 주세요</h1></div>
			</c:if>
			<div class="category_added"></div>
		</div>
		<div class="btn_long"><a href="#">변 경 내 용&nbsp;&nbsp;&nbsp;저 장</a></div>
	</div>
</body>
</html>