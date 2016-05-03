<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
		$("#idchin").focus();
	});
$(function(){
	$("#submit_idchin").click(function(){
		if($("#idchin").val()==""){
			alert("아이디를 입력하세요");
			$("#idchin").focus();
			return false;
		}
		var url = "/reviewer/logon/idCheckForm.do?id=" + $("#idchin").val();
		$(location).attr("href", url);
	});
});
</script>
<title>아이디 중복확인</title>
<style>
#text_idchin {
	padding: 0;
}
#text_idchin input{
	padding: 10px;
	width: 100%;
	height: 100%;
	font-size: 20px;
}
</style>
</head>
<body>

<c:if test="${ idch == null}">
	<script>
		alert("사용 가능한 아이디 입니다.");
		opener.document.getElementById("input_check").value = "check";
		opener.document.getElementById("id").value = "${id}";
		opener.document.getElementById("passwd").focus();
		self.close();
	</script>
</c:if>
<c:if test="${ idch != null}">
	<script>
		alert("이미 사용중인 아이디 입니다.");
	</script>
</c:if>
<div id="text_idchin" class="size_short"><input type="text" id="idchin" name="idchin" value="${id}"></div>
<div id="submit_idchin" class="btn_short"><a href="#" >확&nbsp;&nbsp;인</a></div>

</body>
</html>