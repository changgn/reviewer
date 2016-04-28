<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입 확인</title>
</head>
<body>

<c:if test="${smessage!=null}">
${smessage }
<%-- <%response.sendRedirect("/Reviewer/logon/logonForm.do"); %> --%>
<meta http-equiv="Refresh" content="2;url=/Reviwer/logon/loginForm.do">
</c:if>
<c:if test="${fmesaage!=null}">
	${fmessage }
<%response.sendRedirect("/Reviwer/logon/inputForm.do"); %>
</c:if>
</body>
</html>