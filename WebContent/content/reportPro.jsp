<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<title>신고중</title>
</head>
<body>
	<c:if test="${reportok == 'reportok' }">
		<script>
			alert("게시글이 신고 되었습니다.");
			history.go(-1);
		</script>
	</c:if>
	<c:if test="${reportok == 'reportfalse'}">
		<% response.sendRedirect("/reviewer/main/mainForm.do"); %>
	</c:if>
</body>
</html>