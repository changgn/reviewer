$(document).ready(function(){
	$("#group2").css("display","none");
	$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
});
$(function(){
	// 사용할 변수 생성
	var allcategory = $("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55");
	var addtag = null;
	
	// 대분류 버튼이 눌렸을 때 중분류 div 보이게/안보이게 토글
	$(".btn_group1").click(function(){
		if($("#group2").attr("class")=="selected"){
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
		}
		else {
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$("#group2").attr("class","selected");
			$("#group2").css("display","block");
		}
	});

	// 중분류 버튼이 눌렸을 때 소분류 div 보이게/안보이게 토글
	$("#group2_11").click(function(){
		if($("#group3_11").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_11").attr("class","selected");
			$("#group3_11").css("display","block");
		}
	});
	$("#group2_12").click(function(){
		if($("#group3_12").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_12").attr("class","selected");
			$("#group3_12").css("display","block");
		}
	});
	$("#group2_13").click(function(){
		if($("#group3_13").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_13").attr("class","selected");
			$("#group3_13").css("display","block");
		}
	});
	$("#group2_14").click(function(){
		if($("#group3_14").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_14").attr("class","selected");
			$("#group3_14").css("display","block");
		}
	});
	$("#group2_15").click(function(){
		if($("#group3_15").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_15").attr("class","selected");
			$("#group3_15").css("display","block");
		}
	});
	$("#group2_21").click(function(){
		if($("#group3_21").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_21").attr("class","selected");
			$("#group3_21").css("display","block");
		}
	});
	$("#group2_22").click(function(){
		if($("#group3_22").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_22").attr("class","selected");
			$("#group3_22").css("display","block");
		}
	});
	$("#group2_23").click(function(){
		if($("#group3_23").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_23").attr("class","selected");
			$("#group3_23").css("display","block");
		}
	});
	$("#group2_24").click(function(){
		if($("#group3_24").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_24").attr("class","selected");
			$("#group3_24").css("display","block");
		}
	});
	$("#group2_31").click(function(){
		if($("#group3_31").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_31").attr("class","selected");
			$("#group3_31").css("display","block");
		}
	});
	$("#group2_32").click(function(){
		if($("#group3_32").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_32").attr("class","selected");
			$("#group3_32").css("display","block");
		}
	});
	$("#group2_33").click(function(){
		if($("#group3_33").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_33").attr("class","selected");
			$("#group3_33").css("display","block");
		}
	});
	$("#group2_34").click(function(){
		if($("#group3_34").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_34").attr("class","selected");
			$("#group3_34").css("display","block");
		}
	});
	$("#group2_41").click(function(){
		if($("#group3_41").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_41").attr("class","selected");
			$("#group3_41").css("display","block");
		}
	});
	$("#group2_42").click(function(){
		if($("#group3_42").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_42").attr("class","selected");
			$("#group3_42").css("display","block");
		}
	});
	$("#group2_43").click(function(){
		if($("#group3_43").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_43").attr("class","selected");
			$("#group3_43").css("display","block");
		}
	});
	$("#group2_44").click(function(){
		if($("#group3_44").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_44").attr("class","selected");
			$("#group3_44").css("display","block");
		}
	});
	$("#group2_51").click(function(){
		if($("#group3_51").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_51").attr("class","selected");
			$("#group3_51").css("display","block");
		}
	});
	$("#group2_52").click(function(){
		if($("#group3_52").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_52").attr("class","selected");
			$("#group3_52").css("display","block");
		}
	});
	$("#group2_53").click(function(){
		if($("#group3_53").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_53").attr("class","selected");
			$("#group3_53").css("display","block");
		}
	});
	$("#group2_54").click(function(){
		if($("#group3_54").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_54").attr("class","selected");
			$("#group3_54").css("display","block");
		}
	});
	$("#group2_55").click(function(){
		if($("#group3_55").attr("class")=="selected"){
			allcategory.css("display","none");
			allcategory.removeAttr("class");
		}
		else {
			allcategory.css("display","none");
			allcategory.removeAttr("class");
			$("#group3_55").attr("class","selected");
			$("#group3_55").css("display","block");
		}
	});
	
	// 소분류 버튼이 눌렸을 때 해당 카테고리 정보를 가진 div, form data 전송을 위한 input태그 추가
	$("#111").click(function(){
		if($("[id='add_111']").attr("id")=="add_111"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_111' class='added_category size_long'><h1 class='text_sub'>가전, 컴퓨터, 모니터</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='111'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#112").click(function(){
		if($("[id='add_112']").attr("id")=="add_112"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_112' class='added_category size_long'><h1 class='text_sub'>가전, 컴퓨터, 노트북</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='112'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#113").click(function(){
		if($("[id='add_113']").attr("id")=="add_113"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_113' class='added_category size_long'><h1 class='text_sub'>가전, 컴퓨터, 본체</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='113'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#114").click(function(){
		if($("[id='add_114']").attr("id")=="add_114"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_114' class='added_category size_long'><h1 class='text_sub'>가전, 컴퓨터, 주변기기</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='114'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#115").click(function(){
		if($("[id='add_115']").attr("id")=="add_115"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_115' class='added_category size_long'><h1 class='text_sub'>가전, 컴퓨터, 기타부품</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='115'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#121").click(function(){
		if($("[id='add_121']").attr("id")=="add_121"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_121' class='added_category size_long'><h1 class='text_sub'>가전, 주방가전, 냉장고</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='121'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#122").click(function(){
		if($("[id='add_122']").attr("id")=="add_122"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_122' class='added_category size_long'><h1 class='text_sub'>가전, 주방가전, 김치냉장고</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='122'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#123").click(function(){
		if($("[id='add_123']").attr("id")=="add_123"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_123' class='added_category size_long'><h1 class='text_sub'>가전, 주방가전, 정수기</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='123'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#124").click(function(){
		if($("[id='add_124']").attr("id")=="add_124"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_124' class='added_category size_long'><h1 class='text_sub'>가전, 주방가전, 전기밥솥</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='124'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#125").click(function(){
		if($("[id='add_125']").attr("id")=="add_125"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_125' class='added_category size_long'><h1 class='text_sub'>가전, 주방가전, 전자레인지</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='125'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#131").click(function(){
		if($("[id='add_131']").attr("id")=="add_131"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_131' class='added_category size_long'><h1 class='text_sub'>가전, 생활가전, TV</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='131'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#132").click(function(){
		if($("[id='add_132']").attr("id")=="add_132"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_132' class='added_category size_long'><h1 class='text_sub'>가전, 생활가전, 세탁기</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='132'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#133").click(function(){
		if($("[id='add_133']").attr("id")=="add_133"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_133' class='added_category size_long'><h1 class='text_sub'>가전, 생활가전, 청소기</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='133'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#134").click(function(){
		if($("[id='add_134']").attr("id")=="add_134"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_134' class='added_category size_long'><h1 class='text_sub'>가전, 생활가전, 카메라</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='134'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#135").click(function(){
		if($("[id='add_135']").attr("id")=="add_135"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_135' class='added_category size_long'><h1 class='text_sub'>가전, 생활가전, 기타가전</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='135'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#141").click(function(){
		if($("[id='add_141']").attr("id")=="add_141"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_141' class='added_category size_long'><h1 class='text_sub'>가전, 계절가전, 에어컨</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='141'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#142").click(function(){
		if($("[id='add_142']").attr("id")=="add_142"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_142' class='added_category size_long'><h1 class='text_sub'>가전, 계절가전, 선풍기</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='142'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#143").click(function(){
		if($("[id='add_143']").attr("id")=="add_143"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_143' class='added_category size_long'><h1 class='text_sub'>가전, 계절가전, 공기청정기</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='143'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#144").click(function(){
		if($("[id='add_144']").attr("id")=="add_144"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_144' class='added_category size_long'><h1 class='text_sub'>가전, 계절가전, 가습기</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='144'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#145").click(function(){
		if($("[id='add_145']").attr("id")=="add_145"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_145' class='added_category size_long'><h1 class='text_sub'>가전, 계절가전, 난방기</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='145'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#151").click(function(){
		if($("[id='add_151']").attr("id")=="add_151"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_151' class='added_category size_long'><h1 class='text_sub'>가전, 모바일, 휴대폰</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='151'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#152").click(function(){
		if($("[id='add_152']").attr("id")=="add_152"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_152' class='added_category size_long'><h1 class='text_sub'>가전, 모바일, 태블릿</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='152'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#153").click(function(){
		if($("[id='add_153']").attr("id")=="add_153"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_153' class='added_category size_long'><h1 class='text_sub'>가전, 모바일, 악세사리</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='153'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#154").click(function(){
		if($("[id='add_154']").attr("id")=="add_154"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_154' class='added_category size_long'><h1 class='text_sub'>가전, 모바일, 스마트워치</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='154'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#155").click(function(){
		if($("[id='add_155']").attr("id")=="add_155"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_155' class='added_category size_long'><h1 class='text_sub'>가전, 모바일, 기타가전</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='155'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#211").click(function(){
		if($("[id='add_211']").attr("id")=="add_211"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_211' class='added_category size_long'><h1 class='text_sub'>가구, 침대, 침대</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='211'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#212").click(function(){
		if($("[id='add_212']").attr("id")=="add_212"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_212' class='added_category size_long'><h1 class='text_sub'>가구, 침대, 매트리스</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='212'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#213").click(function(){
		if($("[id='add_213']").attr("id")=="add_213"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_213' class='added_category size_long'><h1 class='text_sub'>가구, 침대, 화장대</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='213'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#214").click(function(){
		if($("[id='add_214']").attr("id")=="add_214"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_214' class='added_category size_long'><h1 class='text_sub'>가구, 침대, 침대프레임</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='214'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#215").click(function(){
		if($("[id='add_215']").attr("id")=="add_215"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_215' class='added_category size_long'><h1 class='text_sub'>가구, 침대, 침구</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='215'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#221").click(function(){
		if($("[id='add_221']").attr("id")=="add_221"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_221' class='added_category size_long'><h1 class='text_sub'>가구, 수납가구, 장롱</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='221'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#222").click(function(){
		if($("[id='add_222']").attr("id")=="add_222"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_222' class='added_category size_long'><h1 class='text_sub'>가구, 수납가구, 행거</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='222'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#223").click(function(){
		if($("[id='add_223']").attr("id")=="add_223"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_223' class='added_category size_long'><h1 class='text_sub'>가구, 수납가구, 수납장</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='223'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#224").click(function(){
		if($("[id='add_224']").attr("id")=="add_224"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_224' class='added_category size_long'><h1 class='text_sub'>가구, 수납가구, 선반</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='224'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#225").click(function(){
		if($("[id='add_225']").attr("id")=="add_225"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_225' class='added_category size_long'><h1 class='text_sub'>가구, 수납가구, 식탁</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='225'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#231").click(function(){
		if($("[id='add_231']").attr("id")=="add_231"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_231' class='added_category size_long'><h1 class='text_sub'>가구, 사무가구, 책상</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='231'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#232").click(function(){
		if($("[id='add_232']").attr("id")=="add_232"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_232' class='added_category size_long'><h1 class='text_sub'>가구, 사무가구, 의자</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='232'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#233").click(function(){
		if($("[id='add_233']").attr("id")=="add_233"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_233' class='added_category size_long'><h1 class='text_sub'>가구, 사무가구, 책장</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='233'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#234").click(function(){
		if($("[id='add_234']").attr("id")=="add_234"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_234' class='added_category size_long'><h1 class='text_sub'>가구, 사무가구, 책상소품</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='234'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#235").click(function(){
		if($("[id='add_235']").attr("id")=="add_235"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_235' class='added_category size_long'><h1 class='text_sub'>가구, 사무가구, 기타가구</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='235'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#241").click(function(){
		if($("[id='add_241']").attr("id")=="add_241"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_241' class='added_category size_long'><h1 class='text_sub'>가구, 거실가구, 소파</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='241'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#242").click(function(){
		if($("[id='add_242']").attr("id")=="add_242"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_242' class='added_category size_long'><h1 class='text_sub'>가구, 거실가구, TV거실장</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='242'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#243").click(function(){
		if($("[id='add_243']").attr("id")=="add_243"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_243' class='added_category size_long'><h1 class='text_sub'>가구, 거실가구, 거실테이블</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='243'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#244").click(function(){
		if($("[id='add_244']").attr("id")=="add_244"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_244' class='added_category size_long'><h1 class='text_sub'>가구, 거실가구, 장식장</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='244'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#245").click(function(){
		if($("[id='add_245']").attr("id")=="add_245"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_245' class='added_category size_long'><h1 class='text_sub'>가구, 거실가구, 커튼</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='245'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#246").click(function(){
		if($("[id='add_246']").attr("id")=="add_246"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_246' class='added_category size_long'><h1 class='text_sub'>가구, 거실가구, 기타가구</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='246'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#311").click(function(){
		if($("[id='add_311']").attr("id")=="add_311"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_311' class='added_category size_long'><h1 class='text_sub'>유아, 기저귀/분유/물티슈, 기저귀</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='311'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#312").click(function(){
		if($("[id='add_312']").attr("id")=="add_312"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_312' class='added_category size_long'><h1 class='text_sub'>유아, 기저귀/분유/물티슈, 국내분유</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='312'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#313").click(function(){
		if($("[id='add_313']").attr("id")=="add_313"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_313' class='added_category size_long'><h1 class='text_sub'>유아, 기저귀/분유/물티슈, 해외분유</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='313'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#314").click(function(){
		if($("[id='add_314']").attr("id")=="add_314"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_314' class='added_category size_long'><h1 class='text_sub'>유아, 기저귀/분유/물티슈, 물티슈</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='314'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#315").click(function(){
		if($("[id='add_315']").attr("id")=="add_315"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_315' class='added_category size_long'><h1 class='text_sub'>유아, 기저귀/분유/물티슈, 이유식</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='315'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#321").click(function(){
		if($("[id='add_321']").attr("id")=="add_321"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_321' class='added_category size_long'><h1 class='text_sub'>유아, 목욕/위생/화장품, 샴푸/바디</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='321'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#322").click(function(){
		if($("[id='add_322']").attr("id")=="add_322"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_322' class='added_category size_long'><h1 class='text_sub'>유아, 목욕/위생/화장품, 목욕용품</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='322'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#323").click(function(){
		if($("[id='add_323']").attr("id")=="add_323"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_323' class='added_category size_long'><h1 class='text_sub'>유아, 목욕/위생/화장품, 유아화장품</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='323'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#324").click(function(){
		if($("[id='add_324']").attr("id")=="add_324"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_324' class='added_category size_long'><h1 class='text_sub'>유아, 목욕/위생/화장품, 위생용품</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='324'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#325").click(function(){
		if($("[id='add_325']").attr("id")=="add_325"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_325' class='added_category size_long'><h1 class='text_sub'>유아, 목욕/위생/화장품, 기타용품</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='325'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#331").click(function(){
		if($("[id='add_331']").attr("id")=="add_331"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_331' class='added_category size_long'><h1 class='text_sub'>유아, 유모차/카시트, 유모차</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='331'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#332").click(function(){
		if($("[id='add_332']").attr("id")=="add_332"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_332' class='added_category size_long'><h1 class='text_sub'>유아, 유모차/카시트, 카시트</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='332'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#333").click(function(){
		if($("[id='add_333']").attr("id")=="add_333"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_333' class='added_category size_long'><h1 class='text_sub'>유아, 유모차/카시트, 아기띠</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='333'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#334").click(function(){
		if($("[id='add_334']").attr("id")=="add_334"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_334' class='added_category size_long'><h1 class='text_sub'>유아, 유모차/카시트, 보행기</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='334'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#335").click(function(){
		if($("[id='add_335']").attr("id")=="add_335"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_335' class='added_category size_long'><h1 class='text_sub'>유아, 유모차/카시트, 기타용품</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='335'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#341").click(function(){
		if($("[id='add_341']").attr("id")=="add_341"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_341' class='added_category size_long'><h1 class='text_sub'>유아, 완구/도서, 레고</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='341'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#342").click(function(){
		if($("[id='add_342']").attr("id")=="add_342"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_342' class='added_category size_long'><h1 class='text_sub'>유아, 완구/도서, 작동완구</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='342'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#343").click(function(){
		if($("[id='add_343']").attr("id")=="add_343"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_343' class='added_category size_long'><h1 class='text_sub'>유아, 완구/도서, 교육/블럭완구</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='343'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#344").click(function(){
		if($("[id='add_344']").attr("id")=="add_344"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_344' class='added_category size_long'><h1 class='text_sub'>유아, 완구/도서, 인형</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='344'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#345").click(function(){
		if($("[id='add_345']").attr("id")=="add_345"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_345' class='added_category size_long'><h1 class='text_sub'>유아, 완구/도서, 기타완구</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='345'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#411").click(function(){
		if($("[id='add_411']").attr("id")=="add_411"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_411' class='added_category size_long'><h1 class='text_sub'>생활, 주방용품, 냄비</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='411'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#412").click(function(){
		if($("[id='add_412']").attr("id")=="add_412"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_412' class='added_category size_long'><h1 class='text_sub'>생활, 주방용품, 프라이팬</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='412'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#413").click(function(){
		if($("[id='add_413']").attr("id")=="add_413"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_413' class='added_category size_long'><h1 class='text_sub'>생활, 주방용품, 식기</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='413'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#414").click(function(){
		if($("[id='add_414']").attr("id")=="add_414"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_414' class='added_category size_long'><h1 class='text_sub'>생활, 주방용품, 용기</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='414'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#415").click(function(){
		if($("[id='add_415']").attr("id")=="add_415"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_415' class='added_category size_long'><h1 class='text_sub'>생활, 주방용품, 기타</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='415'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#421").click(function(){
		if($("[id='add_421']").attr("id")=="add_421"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_421' class='added_category size_long'><h1 class='text_sub'>생활, 세탁/청소용품, 세제</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='421'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#422").click(function(){
		if($("[id='add_422']").attr("id")=="add_422"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_422' class='added_category size_long'><h1 class='text_sub'>생활, 세탁/청소용품, 섬유유연제</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='422'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#423").click(function(){
		if($("[id='add_423']").attr("id")=="add_423"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_423' class='added_category size_long'><h1 class='text_sub'>생활, 세탁/청소용품, 주방세제</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='423'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#424").click(function(){
		if($("[id='add_424']").attr("id")=="add_424"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_424' class='added_category size_long'><h1 class='text_sub'>생활, 세탁/청소용품, 청소용품</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='424'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#425").click(function(){
		if($("[id='add_425']").attr("id")=="add_425"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_425' class='added_category size_long'><h1 class='text_sub'>생활, 세탁/청소용품, 기타</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='425'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#431").click(function(){
		if($("[id='add_431']").attr("id")=="add_431"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_431' class='added_category size_long'><h1 class='text_sub'>생활, 욕실/위생용품, 욕실인테리어</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='431'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#432").click(function(){
		if($("[id='add_432']").attr("id")=="add_432"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_432' class='added_category size_long'><h1 class='text_sub'>생활, 욕실/위생용품, 수건</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='432'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#433").click(function(){
		if($("[id='add_433']").attr("id")=="add_433"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_433' class='added_category size_long'><h1 class='text_sub'>생활, 욕실/위생용품, 샤워기/욕조</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='433'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#434").click(function(){
		if($("[id='add_434']").attr("id")=="add_434"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_434' class='added_category size_long'><h1 class='text_sub'>생활, 욕실/위생용품, 화장지</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='434'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#435").click(function(){
		if($("[id='add_435']").attr("id")=="add_435"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_435' class='added_category size_long'><h1 class='text_sub'>생활, 욕실/위생용품, 기타</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='435'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#441").click(function(){
		if($("[id='add_441']").attr("id")=="add_441"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_441' class='added_category size_long'><h1 class='text_sub'>생활, 애완용품, 애견사료</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='441'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#442").click(function(){
		if($("[id='add_442']").attr("id")=="add_442"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_442' class='added_category size_long'><h1 class='text_sub'>생활, 애완용품, 간식/영양제</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='442'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#443").click(function(){
		if($("[id='add_443']").attr("id")=="add_443"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_443' class='added_category size_long'><h1 class='text_sub'>생활, 애완용품, 집/이동장/생활</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='443'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#444").click(function(){
		if($("[id='add_444']").attr("id")=="add_444"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_444' class='added_category size_long'><h1 class='text_sub'>생활, 애완용품, 위생/장난감</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='444'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#445").click(function(){
		if($("[id='add_445']").attr("id")=="add_445"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_445' class='added_category size_long'><h1 class='text_sub'>생활, 애완용품, 기타</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='445'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#511").click(function(){
		if($("[id='add_511']").attr("id")=="add_511"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_511' class='added_category size_long'><h1 class='text_sub'>뷰티, 가방/지갑, 여성가방</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='511'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#512").click(function(){
		if($("[id='add_512']").attr("id")=="add_512"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_512' class='added_category size_long'><h1 class='text_sub'>뷰티, 가방/지갑, 남성가방</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='512'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#513").click(function(){
		if($("[id='add_513']").attr("id")=="add_513"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_513' class='added_category size_long'><h1 class='text_sub'>뷰티, 가방/지갑, 캐쥬얼가방</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='513'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#514").click(function(){
		if($("[id='add_514']").attr("id")=="add_514"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_514' class='added_category size_long'><h1 class='text_sub'>뷰티, 가방/지갑, 여행가방</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='514'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#515").click(function(){
		if($("[id='add_515']").attr("id")=="add_515"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_515' class='added_category size_long'><h1 class='text_sub'>뷰티, 가방/지갑, 지갑</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='515'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#521").click(function(){
		if($("[id='add_521']").attr("id")=="add_521"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_521' class='added_category size_long'><h1 class='text_sub'>뷰티, 시계/쥬얼리, 시계</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='521'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#522").click(function(){
		if($("[id='add_522']").attr("id")=="add_522"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_522' class='added_category size_long'><h1 class='text_sub'>뷰티, 시계/쥬얼리, 스마트워치</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='522'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#523").click(function(){
		if($("[id='add_523']").attr("id")=="add_523"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_523' class='added_category size_long'><h1 class='text_sub'>뷰티, 시계/쥬얼리, 헤어액서서리</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='523'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#524").click(function(){
		if($("[id='add_524']").attr("id")=="add_524"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_524' class='added_category size_long'><h1 class='text_sub'>뷰티, 시계/쥬얼리, 목걸이</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='524'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#525").click(function(){
		if($("[id='add_525']").attr("id")=="add_525"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_525' class='added_category size_long'><h1 class='text_sub'>뷰티, 시계/쥬얼리, 반지/귀걸이</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='525'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#531").click(function(){
		if($("[id='add_531']").attr("id")=="add_531"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_531' class='added_category size_long'><h1 class='text_sub'>뷰티, 신발, 여성구두</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='531'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#532").click(function(){
		if($("[id='add_532']").attr("id")=="add_532"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_532' class='added_category size_long'><h1 class='text_sub'>뷰티, 신발, 남성구두</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='532'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#533").click(function(){
		if($("[id='add_533']").attr("id")=="add_533"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_533' class='added_category size_long'><h1 class='text_sub'>뷰티, 신발, 운동화</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='533'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#534").click(function(){
		if($("[id='add_534']").attr("id")=="add_534"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_534' class='added_category size_long'><h1 class='text_sub'>뷰티, 신발, 샌들/슬리퍼</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='534'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#535").click(function(){
		if($("[id='add_535']").attr("id")=="add_535"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_535' class='added_category size_long'><h1 class='text_sub'>뷰티, 신발, 워커/부츠</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='535'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#541").click(function(){
		if($("[id='add_541']").attr("id")=="add_541"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_541' class='added_category size_long'><h1 class='text_sub'>뷰티, 잡화/소품, 선글라스/안경</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='541'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#542").click(function(){
		if($("[id='add_542']").attr("id")=="add_542"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_542' class='added_category size_long'><h1 class='text_sub'>뷰티, 잡화/소품, 우산/양산</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='542'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#543").click(function(){
		if($("[id='add_543']").attr("id")=="add_543"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_543' class='added_category size_long'><h1 class='text_sub'>뷰티, 잡화/소품, 스카프/머플러</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='543'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#544").click(function(){
		if($("[id='add_544']").attr("id")=="add_544"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_544' class='added_category size_long'><h1 class='text_sub'>뷰티, 잡화/소품, 모자</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='544'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#545").click(function(){
		$("[class='selected']").css("display","none");
		$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
		if($("[id='add_545']").attr("id")=="add_545"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$(".category_added").append("<div id='add_545' class='added_category size_long'><h1 class='text_sub'>뷰티, 잡화/소품, 장갑/벨트/넥타이</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='545'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#546").click(function(){
		if($("[id='add_546']").attr("id")=="add_546"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_546' class='added_category size_long'><h1 class='text_sub'>뷰티, 잡화/소품, 기타</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='546'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#551").click(function(){
		if($("[id='add_551']").attr("id")=="add_551"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_551' class='added_category size_long'><h1 class='text_sub'>뷰티, 의류/언더웨어, 남성의류</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='551'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#552").click(function(){
		if($("[id='add_552']").attr("id")=="add_552"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_552' class='added_category size_long'><h1 class='text_sub'>뷰티, 의류/언더웨어, 여성의류</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='552'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#553").click(function(){
		if($("[id='add_553']").attr("id")=="add_553"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_553' class='added_category size_long'><h1 class='text_sub'>뷰티, 의류/언더웨어, 캐주얼의류</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='553'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#554").click(function(){
		if($("[id='add_554']").attr("id")=="add_554"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_554' class='added_category size_long'><h1 class='text_sub'>뷰티, 의류/언더웨어, 아동의류</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='554'>"
			$("#writeBoard").append(addtag);
		}
	});
	$("#555").click(function(){
		if($("[id='add_555']").attr("id")=="add_555"){
			alert("이미 선택한 카테고리입니다.");
		} else{
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			$(".category_added div").remove();
			$(".category_added").append("<div id='add_555' class='added_category size_long'><h1 class='text_sub'>뷰티, 의류/언더웨어, 기타</h1></div>");
			$("[name='addCategory']").remove();
			addtag = "<input type='hidden' name='addCategory' value='555'>"
			$("#writeBoard").append(addtag);
		}
	});
	
	// 카테고리 추가 버튼을 눌렀을 때 추가할 카테고리의 갯수 정보를 가진 input 태그 추가 후 해당 폼 전송
	$("#btn_add").click(function(){
		if(addcount == 0)
		{
			alert("카테고리를 선택해 주세요.");
		} else {
			addtag = "<input type='hidden' name='addcount' value='" + addcount +"'>"
			$("#writeBoard").append(addtag);
			$("#writeBoard").submit();
		}
	});

});