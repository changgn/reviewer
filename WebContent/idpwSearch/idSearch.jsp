<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<html>
<head>
<title>���̵� ã��</title>
</head>
<body>
<c:if test="${message==null}">
	<div id="find_id_result">
		<div class="size_long"><h1 class="title_find">���̵� ã��</h1></div>
		<div class="size_long"><h1 class="title_find">���̵�� ${id} �Դϴ�.</h1></div>
	</div>
</c:if>
<c:if test="${message!=null}">
	<% response.sendRedirect("/Reviwer/idpwSearch/idpwSearchNew.do?message=errorPhoneNum"); %>
</c:if>
</body>
</html>