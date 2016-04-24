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
<style>
.text_main {
	margin: 10px;
	font-size: 50px;
	color: #4C4C4C;
}
.size_long {
	width: 500px;
	height: 60px;
	margin: 15px auto;
	border: 1px solid #4C4C4C;
}
.size_short {
	float: left;
	width: 399px;
	height: 58px;
	padding-top: 13px;
	font-size: 28px;
}
.btn_long {
	width: 500px;
	height: 60px;
	margin: 10 auto;
	padding: 10px;
	background-color: #066E9F;
}
.btn_long a {
	font-size: 30px;
	color: white;
}
.btn_short {
	float: left;
	width: 99px;
	height: 58px;
	padding: 10px;
	background-color: #4C4C4C;
}
.btn_short a {
	font-size: 30px;
	color: white;
}

.category_all {
	heigh: auto;
}
.category_save {
	min-height: 600px;
}
.category_text{ 
	margin-top: 60px;
	border: 0px;
}
.category_setting {
	height: 40px;
	padding-top: 15px;
	border: 0px;
}
.category_group {
	font-size: 28px;
	width: 163px;
}
</style>
</head>
<body>
	<div class="category_add">
		<div class="size_long category_text"><h1 class="text_main">카테고리 설정</h1></div>
		<div class="size_long category_setting">
			<select id="group_large" class="category_group"><option>대분류</option></select>
			<select id="group_middle" class="category_group"><option>중분류</option></select>
			<select id="group_small" class="category_group"><option>소분류</option></select>
		</div>
		<div class="btn_long"><a href="#">추&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가</a></div>
	</div>
	<div class="category_save">
		<div class="category_all">
			<div class="category_set size_long">
				<div class="size_short">기존 카테고리</div>
				<div class="btn_short"><a href="">삭&nbsp;&nbsp;&nbsp;제</a></div>
			</div>
			<div class="category_added"></div>
		</div>
		<div class="btn_long"><a href="#">저&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;장</a></div>
	</div>
</body>
</html>