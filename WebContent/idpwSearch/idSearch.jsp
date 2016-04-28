<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<html>
<head>
<title>아이디 찾기</title>
</head>
<body>
<c:if test="${message==null}">
	<div id="find_id_result">
		<div class="size_long"><h1 class="title_find">아이디 찾기</h1></div>
		<div class="size_long"><h1 class="title_find">아이디는 ${id} 입니다.</h1></div>
	</div>
</c:if>
<c:if test="${message!=null}">
	<% response.sendRedirect("/Reviwer/idpwSearch/idpwSearchNew.do?message=errorPhoneNum"); %>
</c:if>
</body>
</html>