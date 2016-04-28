<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<title>로그인중</title>
</head>
<body>
<c:if test="${ message == null}">
	<%response.sendRedirect("/Reviwer/main/mainForm.do"); %>
</c:if>
<c:if test="${ message != null}">
	<c:if test="${ message == 'errID'}">
		<script>
			alert("아이디가 일치하지 않습니다");
			history.go(-1);
		</script>
	</c:if>
	<c:if test="${ message == 'errPwd'}">
		<script>
			alert("비밀번호가 일치하지 않습니다");
			history.go(-1);
		</script>
	</c:if>
</c:if>
</body>
</html>