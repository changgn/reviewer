<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>

#id {display:none;}
#passwd {display:none;}
#passwd2 {display:none;}
#name {display:none;}
#birth{display:none;}
#email {display:none;}
#phone_num{display:none;}
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
	$("#divpasswd2").click(function(){
		$("#divpasswd2").hide();
		$("#passwd2").show();
		$("#passwd2").focus();
	});

	
	$("#divname").click(function(){
		$("#divname").hide();
		$("#name").show();
		$("#name").focus();
	});
	
	$("#divbirth").click(function(){
		$("#divbirth").hide();
		$("#birth").show();
		$("#birth").focus();
	});
	
	$("#divemail").click(function(){
		$("#divemail").hide();
		$("#email").show();
		$("#email").focus();
	});
	$("#divphone_num").click(function(){
		$("#divphone_num").hide();
		$("#phone_num").show();
		$("#phone_num").focus();
	});
	$("#inputForm").submit(function(){
		if($("#id").val()==""){
			alert("아이디를 입력하세요.");
		return false;
		}
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

});


</script>
<title>회원가입</title>
</head>
<body>
	<form method="post" action="inputPro.do" name="inputForm" id="inputForm">
		<table border="1">
			<tr>
				<td>
				<div id="divid">아이디</div>
				<input type="text" name="id" id="id" placeholder="id">
				<input type="button"value="중복확인" onclick=""></td>
			</tr>
			<tr>
				<td>
				<div id="divpasswd">비밀번호 </div>
				<input type="password" id="passwd" name="passwd" placeholder="passwd"></td>
			</tr>
			<tr>
				<td>
				<div id="divpasswd2">비밀번호 확인</div>
				<input type="password" id="passwd2" name="passwd2" placeholder="passwd확인"></td>
			</tr>
			<tr>
				<td>
				<div id="divname">이름</div>
				<input type="text" id="name" name="name" placeholder="name"></td>
			</tr>
			<tr>
				<td>
				<div id="divbirth">생년월일</div>
				<input type="text" id="birth" name="birth" placeholder="Birth"></td>
			</tr>
			<tr>
				<td><input type="radio" id="man"
						name="gender" value="male"><label for="man">남자</label>
					</span><input type="radio" id="woman" name="gender" value="female"><label for="woman">여자</label> ></td>
			</tr>
			<tr>
				<td>
				<div id="divemail">이메일</div>
				<input type="email" id="email" name="email" placeholder="email"></td>
			</tr>
			<tr>
				<td>
				<div id="divphone_num">핸드폰 번호</div>
				<input type="number" id="phone_num" name="phone_num" placeholder="phoneNumber"> 
				<br>약관<input type="checkbox"></td>
			</tr>
			
			
			<tr>
				<td><input type="submit" value="회원가입"></td>
			</tr>
			
		</table>
	<input type="reset" value="다시작성" >
	<input type="button" value="취소" onclick="javascript:window.location='loginForm.do'">
	</form>
	
	


</body>
</html>