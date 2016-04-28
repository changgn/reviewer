<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<title>Insert title here</title>
</head>
<body>
//삭제 성공
<c:if test="smessage!=null">
${smessage }
<% response.sendRedirect("/Reviwer/logon/loginForm.do"); %>
</c:if>
//삭제 실패
<c:if test="">
${fmessage}
<%response.sendRedirect("/Reviwer/logon/deleteForm.do"); %>
</c:if>
</body>
</html>