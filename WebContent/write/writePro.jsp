<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<% response.sendRedirect("/reviewer/content/contentForm.do?board_num=" + request.getAttribute("board_num")); %>
</body>
</html>