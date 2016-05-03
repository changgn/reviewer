<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정</title>

<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<script>
$(document).ready(function(){
	if("${m.gender}"=="male") {
		$("#man").css("background-color", "#066E9F");
		$("#man a").css("color", "white");
		$("#divgender").append("<input type='hidden' class='gender_check' name='gender' value='male'>");
	} else {
		$("#woman").css("background-color", "#066E9F");
		$("#woman a").css("color", "white");
		$("#divgender").append("<input type='hidden' class='gender_check' name='gender' value='female'>");
	}
});
$(function(){
	$("#man").click(function(){
		$("#woman").css("background-color", "white");
		$("#woman a").css("color", "#4C4C4C");
		$(this).css("background-color", "#066E9F");
		$("#man a").css("color", "white");
		
		$(".gender_check").remove();
		$("#divgender").append("<input type='hidden' class='gender_check' name='gender' value='male'>");
		
	});
	$("#woman").click(function(){
		$("#man").css("background-color", "white");
		$("#man a").css("color", "#4C4C4C");
		$(this).css("background-color", "#066E9F");
		$("#woman a").css("color", "white");
		
		$(".gender_check").remove();
		$("#divgender").append("<input type='hidden' class='gender_check' name='gender' value='female'>");
	});
	$("#modify_btn_reset").click(function(){
		$("form")[0].reset();
	});
	$("#modify_btn_cancel").click(function(){
		$(location).attr("href","/reviewer/logon/loginForm.do");
	});
	$("#modify_btn_modify").click(function(){
		if($("#id").val()==""){
			alert("아이디를 입력하세요");
			$("#id").focus();
			return false;
		}
		if($("#passwd").val()==""){
			alert("비밀번호를 입력하세요");
			$("#passwd").focus();
			return false;
		}
		if($("#passwd").val()!=$("#passwd2").val()){
			alert("비밀번호가 다릅니다");
			$("#passwd2").val("");
			$("#passwd2").focus();
			return false;
		}
		if($("#name").val()==""){
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}
		if($("#birth").val()==""){
			alert("생년원일을 입력하세요");
			$("#birth").focus();
			return false;
		}
		if($("#email").val()==""){
			alert("Email을 입력하세요");
			$("#email").focus();
			return false;
		}
		if($("#phone_num").val()==""){
			alert("핸드폰 번호를 입력하세요");
			$("#phone_num").focus();
			return false;
		}
		$("#modifyForm").submit();
	});
	$("#modify_btn_remove").click(function(){
		$(location).attr("href","/reviewer/logon/deleteForm.do");
	});
});
</script>
</head>
<body>
<div id="modify">
	<form method="post" action="modifyPro.do" name="modifyForm" id="modifyForm">
		<div class="size_long"><h1 class="title_find">회 원 정 보 수 정</h1></div>
		<div class="size_long" id="divid">
			<div id="join_text_id"><input class="text_login" type="text" name="id" id="id" maxlength="12" readonly value="${m.id}" placeholder="아이디"></div>
			<input type="hidden" id="input_check" value="nocheck">
		</div>
		<div class="size_long" id="divpasswd"><input type="password" class="text_login" id="passwd" name="passwd" maxlength="15" placeholder="비밀번호"> </div>
		<div class="size_long" id="divpasswd2"><input type="password" class="text_login" id="passwd2" name="passwd2" maxlength="15" placeholder="비밀번호 재입력"></div>
		<div class="size_long" id="divname"><input type="text" class="text_login" id="name" name="name" maxlength="10" value="${m.name}" placeholder="이름"></div>
		<div class="size_long" id="divbirth"><input type="text" class="text_login" id="birth" name="birth" maxlength="6" value="${m.birth}" placeholder="생년월일(900111)"></div>
		<div class="size_long" id="divgender">
			<div class="gender" id="man"><a href="#">남자</a></div>
			<div class="gender" id="woman"><a href="#">여자</a></div>
		</div>
		<div class="size_long" id="divemail"><input type="email" class="text_login" id="email" name="email" value="${m.email}" placeholder="이메일"></div>
		<div class="size_long" id="divphone_num"><input type="text" class="text_login" id="phone_num" name="phone_num" maxlength="12" value="${m.phone_num}" placeholder="핸드폰 번호(01012345678)"></div>
		<div id="modify_btn_modify" class="btn_long"><a href="#" >회 원 정 보 수 정</a></div>
		<div id="modify_btn_reset" class="btn_long"><a href="#" >다 시 작 성</a></div>
		<div id="modify_btn_cancel" class="btn_long"><a href="#" >취 소</a></div>
		<div id="modify_btn_remove" class="btn_long"><a href="#" >회 원 탈 퇴</a></div>
	</form>
</div>

</body>
</html>