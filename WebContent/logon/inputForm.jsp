<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
</head>
<body>
	<form method="post" action="inputPro.do" name="inputForm">
		<table border="1">
			<tr>
				<td><input type="text" name="id"><input type="button"
					value="중복확인" onclick=""></td>
			</tr>
			<tr>
				<td><input type="password" name="passwd"></td>
			</tr>
			<tr>
				<td><input type="password" name="passwd2"></td>
			</tr>
			<tr>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td><input type="text" name="birth"></td>
			</tr>
			<tr>
				<td><input type="radio" id="man"
						name="gender" value="male"><label for="man">남자</label>
					</span><input type="radio" id="woman" name="gender" value="female"><label for="woman">여자</label> ></td>
			</tr>
			<tr>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td><input type="number" name="phone_num"> 약관<input
					type="checkbox"></td>
			</tr>
			<tr>
				<td><input type="submit" value="회원가입"></td>
			</tr>

		</table>
	<input type="reset" value="다시작성" onclick="">
	<input type="button" value="취소" onclick="">
	</form>
	
	


</body>
</html>