<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<html>
<head>
<title>댓글 작성중</title>
</head>
<body>
<% response.sendRedirect("/Reviwer/content/contentForm.do?board_num=" + request.getAttribute("board_num") + "&comment=true");%>
</body>
</html>