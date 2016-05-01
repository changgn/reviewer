<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
$(function(){
$("#btn_idchin_submit").click(function(){
	$(location).attr("href","/Reviwer/logon/idCheckPro.do"  );
	});
});
</script>
<title>아이디 중복확인</title>

</head>
<body>

<c:if test="${ idch != null}">
<%response.sendRedirect("/Reviwer/logon/inputForm.do"); %>
</c:if>
<c:if test="${ idch == a}">
		<script>
			alert("이미 사용중인 아이디 입니다.");
			history.go(-1);
		</script>
		</c:if>
<input type="text" id="idchin" name="idchin" value="${id}">
<div id="btn_idchin_submit"><a href="#" >중복확인</a></div>

</body>
</html>