<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정</title>
</head>
<body>
	<form method="post" action="modifyPro.do" name="modifyForm">
		<table border="1">
			<tr>
				<%-- <td>${데이터베이스.id}</td> --%>
			</tr>
			<tr>
				<td><input type="password" name="passwd"></td>
			</tr>
			<tr>
				<td><input type="password" name="passwd2"></td>
			</tr>
			<tr>
				<td><input type="text" name="name" value="${데이터베이스.name }"></td>
			</tr>
			<tr>
				<td><input type="text" name="birth" value="${데이터베이스.birth }"></td>
			</tr>
			<tr>
				<td><input type="radio" name="gender" value="male">남자</td>
			</tr>
			<tr>
				<td><input type="radio" name="gender" value="female">여자
				</td>
			</tr>
			<tr>
				<td><input type="email" name="email" value="${ 데이터베이스.email}"></td>
			</tr>
			<tr>
				<td><input type="number" name="pone_num" value="${데이터베이스.pone_num }"> 약관<input
					type="checkbox"></td>
			</tr>
			<tr>
				<td><input type="submit" value="수정"></td>
			</tr>

		</table>
	</form>
	<input type="reset" value="다시작성" onclick="">
	<input type="button" value="취소" onclick="">
	<input type="button" value="회원탈퇴" onclick="">


</body>
</html>