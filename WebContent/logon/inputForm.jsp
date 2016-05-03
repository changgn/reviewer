f<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<script>
$(function(){
	$("#btn_idcheck").click(function(){
		if($("#id").val()==""){
			alert("아이디를 입력하세요");
			$("#id").focus();
			return false;
		}
		var url = "/reviewer/logon/idCheckForm.do?id=" + $("#id").val();
		window.open(url, "_blank", "width=500,height=100");
	}); 
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
	$("#h_term_agree").click(function(){
		if($("#checkbox_term_agree").prop("checked")) {
			$("#checkbox_term_agree").removeAttr("checked");
		} else {
			$("#checkbox_term_agree").prop("checked", true);
		}
		
	});
	$("#join_btn_reset").click(function(){
		$("form")[0].reset();
	});
	$("#join_btn_cancel").click(function(){
		$(location).attr("href","/reviewer/logon/loginForm.do");
	});
	$("#join_btn_join").click(function(){
		if($("#id").val()==""){
			alert("아이디를 입력하세요");
			$("#id").focus();
			return false;
		}
		if($("#input_check").attr("value")=="nocheck"){
			alert("아이디 중복을 확인해 주세요");
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
		if($(".gender_check").attr("class")!="gender_check"){
			alert("성별을 입력하세요");
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
		if(!$("#checkbox_term_agree").prop("checked")){
			alert("약관에 동의 해 주세요");
			return false;
		}
		$("#inputForm").submit();
	});
});
</script>
<title>회원가입</title>
</head>
<body>
<div id="join">
	<form method="post" action="inputPro.do" name="inputForm" id="inputForm">
		<div class="size_long"><h1 class="title_find">회 원 가 입</h1></div>
		<div class="size_long" id="divid">
			<div id="join_text_id"><input class="text_login" type="text" name="id" id="id" maxlength="12" placeholder="아이디"></div>
			<div id="btn_idcheck" class="btn_short"><a href="#">확&nbsp;&nbsp;&nbsp;인</a></div>
			<input type="hidden" id="input_check" value="nocheck">
		</div>
		<div class="size_long" id="divpasswd"><input type="password" class="text_login" id="passwd" name="passwd" maxlength="15" placeholder="비밀번호"> </div>
		<div class="size_long" id="divpasswd2"><input type="password" class="text_login" id="passwd2" name="passwd2" maxlength="15" placeholder="비밀번호 재입력"></div>
		<div class="size_long" id="divname"><input type="text" class="text_login" id="name" name="name" maxlength="10" placeholder="이름"></div>
		<div class="size_long" id="divbirth"><input type="text" class="text_login" id="birth" name="birth" maxlength="6" placeholder="생년월일(900111)"></div>
		<div class="size_long" id="divgender">
			<div class="gender" id="man"><a href="#">남자</a></div>
			<div class="gender" id="woman"><a href="#">여자</a></div>
		</div>
		<div class="size_long" id="divemail"><input type="email" class="text_login" id="email" name="email" placeholder="이메일"></div>
		<div class="size_long" id="divphone_num"><input type="text" class="text_login" id="phone_num" name="phone_num" maxlength="12" placeholder="핸드폰 번호(01012345678)"></div>
		<div class="size_long" id="divterms"><input id="checkbox_term_agree" type="checkbox"><span id="h_term_agree"> 약 관 동 의</span></div>
		<div id="join_btn_join" class="btn_long"><a href="#" >회 원 가 입</a></div>
		<div id="join_btn_reset" class="btn_long"><a href="#" >다 시 작 성</a></div>
		<div id="join_btn_cancel" class="btn_long"><a href="#" >취 소</a></div>
	</form>
</div>
	


</body>
</html>