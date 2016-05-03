<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>진행중</title>
</head>
<body>
<% response.sendRedirect("/reviewer/profile/myProfile.do?id=" + request.getAttribute("id")); %>
</body>
</html>