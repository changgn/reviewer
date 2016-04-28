<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>수정성공</title>
</head>
<body>
<c:if test="smessage!=null">
${smessage }
<% response.sendRedirect("/Reviwer/main/mainForm.do"); %>
</c:if>
<c:if test="fmessage!=null">
${fmessage }
<% response.sendRedirect("/Reviwer/logon/modifyForm.do"); %>
</c:if>
</body>
</html>