<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<title>회원탈퇴</title>
<style>
#passwd {
	display: none;
}
</style>

<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>


<script>
	$(document).ready(function(){
		$("#divpasswd").click(function(){
			$("#divpasswd").hide();
			$("#passwd").show();
			$("#passwd").focus();
		});
	});
</script>
</head>
<body>
	<form action="deletePro.do" method="post" name="deleteForm">
		<table>
			<tr>
				<td>회원탈퇴</td>
			</tr>
			<tr>
			${id }
			</tr>
			<tr>
				<td>
					<div id="divpasswd">비밀번호 입력</div> 
					<input type="password" id="passwd" name="passwd" placeholer="비밀번호">
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="회원탈퇴"></td>
			</tr>
		</table>
	</form>
</body>

</html>