<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<title>Insert title here</title>
</head>
<body>

<c:if test="${ message!=null}">
${message }
<%response.sendRedirect("/Reviwer/main/mainForm.do"); %>
</c:if>
<c:if test="${ mesaage ==null}">
<%response.sendRedirect("/Reviwer/logon/loginForm.do"); %>
</c:if>
</body>
</html>