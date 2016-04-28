<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>���̵� ã��</title>
<script>
$(function(){
	$("#submit_find_id").click(function(){
		if($("#phone_num").val()=="") {
			alert("�ڵ��� ��ȣ�� �Է��� �ּ���");
			$("#phone_num").focus();
		} else {
			$(location).attr("href","/Reviwer/idpwSearch/idSearch.do");
		}
	});
	$("#submit_find_pwd").click(function(){
		if($("#id").val()=="" || $("#phone_num2").val()=="" || $("#email").val()=="") {
			if($("#id").val()=="") {
				alert("���̵� �Է��� �ּ���");
				$("#id").focus();
			} else{
				if($("#phone_num2").val()=="") {
					alert("�ڵ��� ��ȣ�� �Է��� �ּ���");
					$("#phone_num2").focus();
				} else {
					alert("�̸����� �Է��� �ּ���");
					$("#email").focus();
				}
			}
		} else {
			$(location).attr("href","/Reviwer/idpwSearch/pwSearch.do");
		}
	});
});
</script>
</head>
<body>

<c:if test="${message!=null}">
	<c:if test="${message=='errorPhoneNum'}">
		<script>alert("��ġ�ϴ� �ڵ��� ��ȣ�� �����ϴ�"); $("#phone_num").focus();</script>
	</c:if>
	<c:if test="${message=='incorrect'}">
		<script>alert("��ġ�ϴ� ������ �����ϴ�"); $("#id").focus();</script>
	</c:if>
</c:if>
<div id="find">
	<form action="idSearch.do" method="post" name="idSearch" id="idSearch" >
	<div id="find_id">
		<div class="size_long"><h1 class="title_find">���̵� ã��</h1></div>
		<div class="size_long" id="text_phone_num"><input type="text" class="text_find" id="phone_num" name="phone_num" placeholder="�ڵ��� ��ȣ(01012345678)"></div>
		<div id="submit_find_id" class="btn_long"><a href="#">�� �� �� Ȯ ��</a></div>
	</div>
	</form>
	<br><br>
	<form action="pwSearch.do" method="post" name="pwSearch" id="pwSearch">
	<div id="find_pwd">
		<div class="size_long"><h1 class="title_find">��й�ȣ ã��</h1></div>
		<div class="size_long" id="divid"><input type="text" class="text_find" id="id" name="id" placeholder="���̵�"></div>
		<div class="size_long" id="divphone_num2"><input type="text" class="text_find" id="phone_num2" name="phone_num2" placeholder="�ڵ��� ��ȣ(01012345678)"></div>
		<div class="size_long" id="divemail"><input type="text" class="text_find" id="email" name="email" placeholder="�̸���"></div>
		<div id="submit_find_pwd" class="btn_long"><a href="#">�� �� �� ȣ Ȯ ��</a></div>
	</div>
	</form>
</div>
</body>
</html>