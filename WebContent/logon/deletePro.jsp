<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<title>Insert title here</title>
</head>
<body>
<c:if test="${errorPasswd==null}">
<% response.sendRedirect("/Reviwer/logon/loginForm.do"); %>
</c:if>
<c:if test="${errorPasswd!=null}">
	<script>
		alert("비밀번호가 일치하지 않습니다");
		history.go(-1);
	</script>
</c:if>
</body>
</html>