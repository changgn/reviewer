<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<title>회원탈퇴</title>
<style>
#remove {
	margin: 0 auto;
	margin-top: 300px;
}
</style>
<script>
$(function(){
	$("#remove_btn_remove").click(function(){
		if($("#passwd").val()=="") {
			alert("비밀번호를 입력하세요");
			return false;
		} else {
			$("#deleteForm").submit();
		}
	});
});
</script>
</head>
<body>
<div id="remove">
	<form action="deletePro.do" method="post" name="deleteForm" id="deleteForm">
		<div class="size_long text_long">회 원 탈 퇴</div>
		<div class="size_long" id="divpasswd"><input type="password" class="text_login" id="passwd" name="passwd" maxlength="15" placeholder="비밀번호"> </div>
		<div id="remove_btn_remove" class="btn_long"><a href="#" >회 원 탈 퇴</a></div>
	</form>
</div>
</body>

</html>