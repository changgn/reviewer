<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<html>
<head>
<title>���̵� ã��</title>
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
<div id="find">
	<form action="idSearch.do" method="post" name="idSearch" id="idSearch" >
	<div id="find_id">
		<div class="find_title"><h1>���̵� ã��</h1></div>
		<div class="size_long" id="text_phone_num"><input type="text" class="text_find" id="phone_num" name="phone_num" placeholder="�ڵ��� ��ȣ(01012345678)"></div>
		<div id="submit_find_id" class="btn_long"><a href="#">�� �� �� Ȯ ��</a></div>
	</div>
	</form>
	<br><br>
	<form action="pwSearch.do" method="post" name="pwSearch" id="pwSearch">
	<div id="find_pwd">
		<div class="find_title"><h1>��й�ȣ ã��</h1></div>
		<div class="size_long" id="divid"><input type="text" class="text_find" id="id" name="id" placeholder="���̵�"></div>
		<div class="size_long" id="divphone_num2"><input type="text" class="text_find" id="phone_num2" name="phone_num2" placeholder="�ڵ��� ��ȣ(01012345678)"></div>
		<div class="size_long" id="divemail"><input type="text" class="text_find" id="email" name="email" placeholder="�̸���"></div>
		<div id="submit_find_pwd" class="btn_long"><a href="#">�� �� �� ȣ Ȯ ��</a></div>
	</div>
	</form>
</div>
</body>
</html>