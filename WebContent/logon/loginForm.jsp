<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
</head>
<body>
	<form method="post" action="loginPro.do" name="loginFrom">
		<table border="1">
			<tr>
				<td><img src="" >로고</td>
			</tr>
			<tr>
				<td><input type="text" id="id" name="id" placeholder="아이디"  > </td>
			</tr>
			<tr>
				<td><input type="password" name="passwd"></td>
			</tr>
			<tr>
				<td><input type="submit" value="login"></td>
			</tr>
		</table>
	</form>
	<table>
		<tr>
			<td><input type="button" value="회원가입" name="resiter"></td>
		</tr>
		<tr>
			<td><input type="button" value="아이디/비밀번호 찾기" name="idpwSearch">
			</td>
		</tr>
	</table>

</body>
</html>