<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<style>

#id {display:none;}

#passwd {display:none;}

</style>
<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<script>
$(document).ready(function(){
	$("#divid").click(function(){
		$("#divid").hide();
		$("#id").show();
		$("#id").focus();
	});
	
	$("#divpasswd").click(function(){
		$("#divpasswd").hide();
		$("#passwd").show();
		$("#passwd").focus();
	});

	$("#loginForm").submit(function(){
		if($("#id").val()==""){
			alert("아이디를 입력하세요.");
		return false;
		}
		if($("#passwd").val()==""){
			alert("비밀번호를 입력하세요.")
			return false;
		}
	});
	
});

</script>

<title>로그인</title>
</head>
<body>
	<form method="post" action="loginPro.do" name="loginFrom" id="loginForm">
		<table border="1">
			<tr>
				<td><img src="" >로고</td>
			</tr>
			<tr>
				<td><div id="divid" >아이디</div>
				<input type="text" id="id" name="id" placeholder="아이디" >
				 </td>
			</tr>
			<tr>
				<td>
				<div id="divpasswd">비밀번호</div>					
				<input type="password" id="passwd" name="passwd" placeholder="passwd"></td>
			
			
			</tr>
			<tr>
				<td><input type="submit" value="login"></td>
			</tr>
		</table>
	</form>
	<table>
		<tr>
			<td><input type="button" value="회원가입" id="resister" name="resister" onclick="javascript:window.location='/logon/inputForm.do'"></td>
		</tr>
		<tr>
			<td><input type="button" value="아이디/비밀번호 찾기" id="idpwSearch" name="idpwSearch" onclick="javascript:window.location='/idpwSearch/idSearchNew.do'">
			</td>
		</tr>
	</table>

</body>
</html>