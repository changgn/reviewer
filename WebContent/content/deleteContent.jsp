<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<title>게시글 삭제중</title>
</head>
<body>
<c:if test="${errorId!=null}">
	<script>
		alert("게시글 작성자만 삭제할 수 있습니다");
		history.go(-1);
	</script>
</c:if>
<c:if test="${errorId==null}">
	<% response.sendRedirect("/Reviewer/main/mainForm.do"); %>
</c:if>
</body>
</html>