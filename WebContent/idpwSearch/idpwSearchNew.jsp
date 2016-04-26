<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>아이디 찾기(새창)</title>
<style>
/* #phone_num {display:none;} */
#id {display:none;}
#phone_num2 {display:none;}
#email {display:none;}
</style>

<script src=" https://code.jquery.com/jquery-2.2.3.min.js"></script>

<script>
$(document).ready(function(){

 	$("#divphone_num").click(function(){
		$("#divphone_num").hide();
		$("#phone_num").show();
		$("#phone_num").focus();
	});
	 
	$("#divid").click(function(){
		$("#divid").hide();
		$("#id").show();
		$("#id").focus();
	});
	
	$("#divphone_num2").click(function(){
		$("#divphone_num2").hide();
		$("#phone_num2").show();
		$("#phone_num2").focus();
	});
		
	$("#divemail").click(function(){
		$("#divemail").hide();
		$("#email").show();
		$("#email").focus();
	});
});
</script>
</head>
<body>
<form action="" method="post" name="myform" >
<table border="1">
	<tr>
		<td>
		아이디 찾기
		</td>
	</tr>
	<tr>
		<td>
			<!-- <div id="divphone_num" >핸드폰 번호</div>-->
			<input type="text" id="phone_num" name="phone_num" placeholder="핸드폰 번호">
		</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="아이디확인" onclick="">
		</td>
	</tr>
</table>
</form>
<br><br>
<form action="" method="post">
<table>
	<tr>
		<td>비밀번호 찾기
		</td>
	</tr>
	<tr>
		<td>
			<div id="divid">아이디</div>
			<input type="text" id="id" name="id" placeholder="아이디">
		</td>
	</tr>
	<tr>
		<td>
			<div id="divphone_num2">핸드폰 번호</div>
			<input type="text" id="phone_num2" name="phone_num2" placeholder="핸드폰 번호">
		</td>
	</tr>
	<tr>
		<td>
			<div id="divemail">이메일</div>
			<input type="text" id="email" name="email" placeholder="이메일">
		</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="비밀번호 확인" onclick="">
		</td>
	</tr>			
</table>
</form>
</body>
</html>