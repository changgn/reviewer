<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<title>회원탈퇴</title>
</head>
<body>
<form action="deletePro.do" method="post" name="deleteForm">
<table>
<tr>
<td>
회원탈퇴
</td>
</tr>
<tr>
<td>
<input type="password" name="passwd">
</td>
</tr>
<tr>
<td>
<input type="submit" value="회원탈퇴">
</td>
</tr>
</table>
</form>
</body>

</html>