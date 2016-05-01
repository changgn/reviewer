<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>아이디 찾기</title>
<script>
$(function(){
	$("#submit_find_id").click(function(){
		if($("#phone_num").val()=="") {
			alert("핸드폰 번호를 입력해 주세요");
			$("#phone_num").focus();
		} else {
			$("#idSearch").submit();
		}
	});
	$("#submit_find_pwd").click(function(){
		if($("#id").val()=="" || $("#phone_num2").val()=="" || $("#email").val()=="") {
			if($("#id").val()=="") {
				alert("아이디를 입력해 주세요");
				$("#id").focus();
			} else{
				if($("#phone_num2").val()=="") {
					alert("핸드폰 번호를 입력해 주세요");
					$("#phone_num2").focus();
				} else {
					alert("이메일을 입력해 주세요");
					$("#email").focus();
				}
			}
		} else {
			$("#pwSearch").submit();
		}
	});
});
</script>
</head>
<body>

<c:if test="${message!=null}">
	<c:if test="${message=='errorPhoneNum'}">
		<script>alert("일치하는 핸드폰 번호가 없습니다"); $("#phone_num").focus();</script>
	</c:if>
	<c:if test="${message=='incorrect'}">
		<script>alert("일치하는 정보가 없습니다"); $("#id").focus();</script>
	</c:if>
</c:if>
<div id="find">
	<form action="idSearch.do" method="post" name="idSearch" id="idSearch" >
		<div id="find_id">
			<div class="size_long"><h1 class="title_find">아이디 찾기</h1></div>
			<div class="size_long" id="text_phone_num"><input type="text" class="text_login" id="phone_num" name="phone_num" maxlength="12" placeholder="핸드폰 번호(01012345678)"></div>
			<div id="submit_find_id" class="btn_long"><a href="#">아 이 디 확 인</a></div>
		</div>
	</form>
	<br><br>
	<form action="pwSearch.do" method="post" name="pwSearch" id="pwSearch">
		<div id="find_pwd">
			<div class="size_long"><h1 class="title_find">비밀번호 찾기</h1></div>
			<div class="size_long" id="divid"><input type="text" class="text_login" id="id" name="id" placeholder="아이디"></div>
			<div class="size_long" id="divphone_num2"><input type="text" class="text_login" id="phone_num2" name="phone_num2" maxlength="12" placeholder="핸드폰 번호(01012345678)"></div>
			<div class="size_long" id="divemail"><input type="text" class="text_login" id="email" name="email" placeholder="이메일"></div>
			<div id="submit_find_pwd" class="btn_long"><a href="#">비 밀 번 호 확 인</a></div>
		</div>
	</form>
</div>
</body>
</html>