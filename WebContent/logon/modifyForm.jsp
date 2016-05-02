<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정</title>

<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<script>
$("#modifyForm").submit(function(){

		if($("#passwd").val()==""){
			alert("비밀번호를 입력하세요.");
		return false;
		}
		
		if($("#name").val()==""){
			alert("이름을 입력하세요.");
		return false;
		}
		
		if($("#birth").val()==""){
			alert("생년원일을 입력하세요.");
		return false;
		}
		
		if($("#email").val()==""){
			alert("Email을 입력하세요.");
		return false;
		}
		
		if($("#phone_num").val()==""){
			alert("핸드폰 번호를 입력하세요.");
		return false;
		}
			
	});
</script>
</head>
<body>
	<form method="post" action="modifyPro.do" id="modifyForm" name="modifyForm">
		<table border="1">
			<tr>
				 <td>
				 <div id="divid">${sessionScope.id}</div>
				 </td> 
			</tr>
			<tr>
				<td><input type="password" id="passwd" name="passwd"></td>
			</tr>
			<tr>
				<td><input type="password" id="passwd2" name="passwd2"></td>
			</tr>
			<tr>
				<td><input type="text" name="name" id="name" value="${m.name }"></td>
			</tr>
			<tr>
				<td><input type="text" name="birth" id="birth" value="${m.birth }"></td>
			</tr>
			<tr>
				<td><input type="radio" name="gender" value="male">남자</td>
			</tr>
			<tr>
				<td><input type="radio" name="gender" value="female">여자
				</td>
			</tr>
			<tr>
				<td><input type="email" name="email" id="email" value="${ m.email}"></td>
			</tr>
			<tr>
				<td><input type="number" name="phone_num" id="phone_num" value="${m.phone_num }"> 
				약관<input type="checkbox"></td>
			</tr>
			<tr>
				<td><input type="submit" value="수정"></td>
			</tr>

		</table>
	</form>
	<input type="reset" value="다시작성">
	<input type="button" value="취소" onclick="javascript:window.location='/main/main.do'">
	<input type="button" value="회원탈퇴" onclick="javascript:window.location='deleteForm.do'">


</body>
</html>