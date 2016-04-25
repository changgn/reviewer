<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>카테고리 설정</title>
<script>  
	$(document).ready(function(){
		$("#group2").css("display","none");
		$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
	});
	$(function(){
		$(".btn_group1").click(function(){
			if($("#group2").attr("class")=="selected"){
				$("[class='selected']").css("display","none");
				$("[class='selected']").removeAttr("class");
			}
			else {
				$("[class='selected']").css("display","none");
				$("[class='selected']").removeAttr("class");
				$("#group2").attr("class","selected");
				$("#group2").css("display","block");
			}
		});
		$("#group2_11").click(function(){
			if($("#group3_11").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_11").attr("class","selected");
				$("#group3_11").css("display","block");
			}
		});
		$("#group2_12").click(function(){
			if($("#group3_12").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_12").attr("class","selected");
				$("#group3_12").css("display","block");
			}
		});
		$("#group2_13").click(function(){
			if($("#group3_13").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_13").attr("class","selected");
				$("#group3_13").css("display","block");
			}
		});
		$("#group2_14").click(function(){
			if($("#group3_14").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_14").attr("class","selected");
				$("#group3_14").css("display","block");
			}
		});
		$("#group2_15").click(function(){
			if($("#group3_15").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_15").attr("class","selected");
				$("#group3_15").css("display","block");
			}
		});
		$("#group2_21").click(function(){
			if($("#group3_21").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_21").attr("class","selected");
				$("#group3_21").css("display","block");
			}
		});
		$("#group2_22").click(function(){
			if($("#group3_22").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_22").attr("class","selected");
				$("#group3_22").css("display","block");
			}
		});
		$("#group2_23").click(function(){
			if($("#group3_23").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_23").attr("class","selected");
				$("#group3_23").css("display","block");
			}
		});
		$("#group2_24").click(function(){
			if($("#group3_24").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_24").attr("class","selected");
				$("#group3_24").css("display","block");
			}
		});
		$("#group2_31").click(function(){
			if($("#group3_31").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_31").attr("class","selected");
				$("#group3_31").css("display","block");
			}
		});
		$("#group2_32").click(function(){
			if($("#group3_32").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_32").attr("class","selected");
				$("#group3_32").css("display","block");
			}
		});
		$("#group2_33").click(function(){
			if($("#group3_33").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_33").attr("class","selected");
				$("#group3_33").css("display","block");
			}
		});
		$("#group2_34").click(function(){
			if($("#group3_34").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_34").attr("class","selected");
				$("#group3_34").css("display","block");
			}
		});
		$("#group2_41").click(function(){
			if($("#group3_41").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_41").attr("class","selected");
				$("#group3_41").css("display","block");
			}
		});
		$("#group2_42").click(function(){
			if($("#group3_42").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_42").attr("class","selected");
				$("#group3_42").css("display","block");
			}
		});
		$("#group2_43").click(function(){
			if($("#group3_43").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_43").attr("class","selected");
				$("#group3_43").css("display","block");
			}
		});
		$("#group2_44").click(function(){
			if($("#group3_44").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_44").attr("class","selected");
				$("#group3_44").css("display","block");
			}
		});
		$("#group2_51").click(function(){
			if($("#group3_51").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_51").attr("class","selected");
				$("#group3_51").css("display","block");
			}
		});
		$("#group2_52").click(function(){
			if($("#group3_52").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_52").attr("class","selected");
				$("#group3_52").css("display","block");
			}
		});
		$("#group2_53").click(function(){
			if($("#group3_53").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_53").attr("class","selected");
				$("#group3_53").css("display","block");
			}
		});
		$("#group2_54").click(function(){
			if($("#group3_54").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_54").attr("class","selected");
				$("#group3_54").css("display","block");
			}
		});
		$("#group2_55").click(function(){
			if($("#group3_55").attr("class")=="selected"){
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
			}
			else {
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").css("display","none");
				$("#group3_11, #group3_12, #group3_13, #group3_14, #group3_15, #group3_21, #group3_22, #group3_23, #group3_24, #group3_31, #group3_32, #group3_33, #group3_34, #group3_41, #group3_42, #group3_43, #group3_44, #group3_51, #group3_52, #group3_53, #group3_54, #group3_55").removeAttr("class");
				$("#group3_55").attr("class","selected");
				$("#group3_55").css("display","block");
			}
		});
		$("#111").click(function(){
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			if($("[id='add_111']").attr("id")=="add_111"){
				alert("이미 선택한 카테고리입니다.");
			} else{
				$(".category_added").append("<div id='add_111' class='size_long'><h1 class='text_sub'>가전, 컴퓨터, 모니터</h1></div>");
			}
		});
		$("#112").click(function(){
			$("[class='selected']").css("display","none");
			$("[class='selected']").removeAttr("class");
			if($("[id='add_112']").attr("id")=="add_112"){
				alert("이미 선택한 카테고리입니다.");
			} else{
				$(".category_added").append("<div id='add_112' class='size_long'><h1 class='text_sub'>가전, 컴퓨터, 노트북</h1></div>");
			}
		});
	});
</script>
</head>
<body>
	<div class="category_add">
		<div class="size_long category_text"><h1 class="text_main">카테고리 설정</h1></div>
		<div id="group">
			<div id="group1" class="size_long category_setting">
				<div class="btn_group1"><a id="group1_1" href="#">가&nbsp;&nbsp;전</a></div>
				<div class="btn_group1"><a id="group1_2" href="#">가&nbsp;&nbsp;구</a></div>
				<div class="btn_group1"><a id="group1_3" href="#">유&nbsp;&nbsp;아</a></div>
				<div class="btn_group1"><a id="group1_4" href="#">생&nbsp;&nbsp;활</a></div>
				<div class="btn_group1"><a id="group1_5" href="#">뷰&nbsp;&nbsp;티</a></div>
			</div>
			<div id="group2">
				<div class="group2">
					<div class="btn_group2"><a id="group2_11" href="#">컴퓨터</a></div>
					<div class="btn_group2"><a id="group2_12" href="#">주방가전</a></div>
					<div class="btn_group2"><a id="group2_13" href="#">생활가전</a></div>
					<div class="btn_group2"><a id="group2_14" href="#">계절가전</a></div>
					<div class="btn_group2"><a id="group2_15" href="#">모바일</a></div>
				</div>
				<div class="group2">
					<div class="btn_group2"><a id="group2_21" href="#">침대</a></div>
					<div class="btn_group2"><a id="group2_22" href="#">수납가구</a></div>
					<div class="btn_group2"><a id="group2_23" href="#">사무가구</a></div>
					<div class="btn_group2"><a id="group2_24" href="#">거실가구</a></div>
				</div>
				<div class="group2">
					<div class="btn_group2"><a id="group2_31" href="#">기저귀/분유/물티슈</a></div>
					<div class="btn_group2"><a id="group2_32" href="#">목욕/위생/화장품</a></div>
					<div class="btn_group2"><a id="group2_33" href="#">유모차/카시트</a></div>
					<div class="btn_group2"><a id="group2_34" href="#">완구/도서</a></div>
				</div>
				<div class="group2">
					<div class="btn_group2"><a id="group2_41" href="#">주방용품</a></div>
					<div class="btn_group2"><a id="group2_42" href="#">세탁/청소용품</a></div>
					<div class="btn_group2"><a id="group2_43" href="#">욕실/위생용품</a></div>
					<div class="btn_group2"><a id="group2_44" href="#">애완용품</a></div>
				</div>
				<div class="group2">
					<div class="btn_group2"><a id="group2_51" href="#">가방/지갑</a></div>
					<div class="btn_group2"><a id="group2_52" href="#">시계/쥬얼리</a></div>
					<div class="btn_group2"><a id="group2_53" href="#">신발</a></div>
					<div class="btn_group2"><a id="group2_54" href="#">잡화/소품</a></div>
					<div class="btn_group2"><a id="group2_55" href="#">의류/언더웨어</a></div>
				</div>
			</div>
			<div id="group3_11">
				<div class="group3_btn">
					<div class="btn_group3"><a id="111" href="#">모니터</a></div>
					<div class="btn_group3"><a id="112" href="#">노트북</a></div>
					<div class="btn_group3"><a id="113" href="#">본체</a></div>
					<div class="btn_group3"><a id="114" href="#">주변기기</a></div>
					<div class="btn_group3"><a id="115" href="#">기타부품</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_12">
				<div class="group3_btn">
					<div class="btn_group3"><a id="121" href="#">냉장고</a></div>
					<div class="btn_group3"><a id="122" href="#">김치냉장고</a></div>
					<div class="btn_group3"><a id="123" href="#">정수기</a></div>
					<div class="btn_group3"><a id="124" href="#">전기밥솥</a></div>
					<div class="btn_group3"><a id="125" href="#">전자레인지</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_13">
				<div class="group3_btn">
					<div class="btn_group3"><a id="131" href="#">TV</a></div>
					<div class="btn_group3"><a id="132" href="#">세탁기</a></div>
					<div class="btn_group3"><a id="133" href="#">청소기</a></div>
					<div class="btn_group3"><a id="134" href="#">카메라</a></div>
					<div class="btn_group3"><a id="135" href="#">기타가전</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_14">
				<div class="group3_btn">
					<div class="btn_group3"><a id="141" href="#">에어컨</a></div>
					<div class="btn_group3"><a id="142" href="#">선풍기</a></div>
					<div class="btn_group3"><a id="143" href="#">공기청정기</a></div>
					<div class="btn_group3"><a id="144" href="#">가습기</a></div>
					<div class="btn_group3"><a id="145" href="#">난방기</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_15">
				<div class="group3_btn">
					<div class="btn_group3"><a id="151" href="#">휴대폰</a></div>
					<div class="btn_group3"><a id="152" href="#">태블릿</a></div>
					<div class="btn_group3"><a id="153" href="#">악세사리</a></div>
					<div class="btn_group3"><a id="154" href="#">스마트워치</a></div>
					<div class="btn_group3"><a id="155" href="#">기타가전</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_21">
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="211" href="#">침대</a></div>
					<div class="btn_group3"><a id="212" href="#">매트리스</a></div>
					<div class="btn_group3"><a id="213" href="#">화장대</a></div>
					<div class="btn_group3"><a id="214" href="#">침대프레임</a></div>
					<div class="btn_group3"><a id="215" href="#">침구</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_22">
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="221" href="#">장롱</a></div>
					<div class="btn_group3"><a id="222" href="#">행거</a></div>
					<div class="btn_group3"><a id="223" href="#">수납장</a></div>
					<div class="btn_group3"><a id="224" href="#">선반</a></div>
					<div class="btn_group3"><a id="225" href="#">식탁</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_23">
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="231" href="#">책상</a></div>
					<div class="btn_group3"><a id="232" href="#">의자</a></div>
					<div class="btn_group3"><a id="233" href="#">책장</a></div>
					<div class="btn_group3"><a id="234" href="#">책상소품</a></div>
					<div class="btn_group3"><a id="235" href="#">기타가구</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_24">
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="241" href="#">소파</a></div>
					<div class="btn_group3"><a id="242" href="#">TV거실장</a></div>
					<div class="btn_group3"><a id="243" href="#">거실테이블</a></div>
					<div class="btn_group3"><a id="244" href="#">장식장</a></div>
					<div class="btn_group3"><a id="245" href="#">커튼</a></div>
					<div class="btn_group3"><a id="246" href="#">기타가구</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_31">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="311" href="#">기저귀</a></div>
					<div class="btn_group3"><a id="312" href="#">국내분유</a></div>
					<div class="btn_group3"><a id="313" href="#">해외분유</a></div>
					<div class="btn_group3"><a id="314" href="#">물티슈</a></div>
					<div class="btn_group3"><a id="315" href="#">이유식</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_32">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="321" href="#">샴푸/바디</a></div>
					<div class="btn_group3"><a id="322" href="#">목욕용품</a></div>
					<div class="btn_group3"><a id="323" href="#">유아화장품</a></div>
					<div class="btn_group3"><a id="324" href="#">위생용품</a></div>
					<div class="btn_group3"><a id="325" href="#">기타용품</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_33">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="331" href="#">유모차</a></div>
					<div class="btn_group3"><a id="332" href="#">카시트</a></div>
					<div class="btn_group3"><a id="333" href="#">아기띠</a></div>
					<div class="btn_group3"><a id="334" href="#">보행기</a></div>
					<div class="btn_group3"><a id="335" href="#">기타용품</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_34">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="341" href="#">레고</a></div>
					<div class="btn_group3"><a id="342" href="#">작동완구</a></div>
					<div class="btn_group3"><a id="343" href="#">교육/블럭완구</a></div>
					<div class="btn_group3"><a id="344" href="#">인형</a></div>
					<div class="btn_group3"><a id="345" href="#">기타완구</a></div>
				</div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_41">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="411" href="#">냄비</a></div>
					<div class="btn_group3"><a id="412" href="#">프라이팬</a></div>
					<div class="btn_group3"><a id="413" href="#">식기</a></div>
					<div class="btn_group3"><a id="414" href="#">용기</a></div>
					<div class="btn_group3"><a id="415" href="#">기타</a></div>
				</div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_42">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="421" href="#">세제</a></div>
					<div class="btn_group3"><a id="422" href="#">섬유유연제</a></div>
					<div class="btn_group3"><a id="423" href="#">주방세제</a></div>
					<div class="btn_group3"><a id="424" href="#">청소용품</a></div>
					<div class="btn_group3"><a id="425" href="#">기타</a></div>
				</div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_43">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="431" href="#">욕실인테리어</a></div>
					<div class="btn_group3"><a id="432" href="#">수건</a></div>
					<div class="btn_group3"><a id="433" href="#">샤워기/욕조</a></div>
					<div class="btn_group3"><a id="434" href="#">화장지</a></div>
					<div class="btn_group3"><a id="435" href="#">기타</a></div>
				</div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_44">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="441" href="#">애견사료</a></div>
					<div class="btn_group3"><a id="442" href="#">간식/영양제</a></div>
					<div class="btn_group3"><a id="443" href="#">집/이동장/생활</a></div>
					<div class="btn_group3"><a id="444" href="#">위생/장난감</a></div>
					<div class="btn_group3"><a id="445" href="#">기타</a></div>
				</div>
				<div class="group3_btn"></div>
			</div>
			<div id="group3_51">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="511" href="#">여성가방</a></div>
					<div class="btn_group3"><a id="512" href="#">남성가방</a></div>
					<div class="btn_group3"><a id="513" href="#">캐쥬얼가방</a></div>
					<div class="btn_group3"><a id="514" href="#">여행가방</a></div>
					<div class="btn_group3"><a id="515" href="#">지갑</a></div>
				</div>
			</div>
			<div id="group3_52">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="521" href="#">시계</a></div>
					<div class="btn_group3"><a id="522" href="#">스마트워치</a></div>
					<div class="btn_group3"><a id="523" href="#">헤어액서서리</a></div>
					<div class="btn_group3"><a id="524" href="#">목걸이</a></div>
					<div class="btn_group3"><a id="525" href="#">반지/귀걸이</a></div>
				</div>
			</div>
			<div id="group3_53">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="531" href="#">여성구두</a></div>
					<div class="btn_group3"><a id="532" href="#">남성구두</a></div>
					<div class="btn_group3"><a id="533" href="#">운동화</a></div>
					<div class="btn_group3"><a id="534" href="#">샌들/슬리퍼</a></div>
					<div class="btn_group3"><a id="535" href="#">워커/부츠</a></div>
				</div>
			</div>
			<div id="group3_54">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="541" href="#">선글라스/안경</a></div>
					<div class="btn_group3"><a id="542" href="#">우산/양산</a></div>
					<div class="btn_group3"><a id="543" href="#">스카프/머플러</a></div>
					<div class="btn_group3"><a id="544" href="#">모자</a></div>
					<div class="btn_group3"><a id="545" href="#">장갑/벨트/넥타이</a></div>
					<div class="btn_group3"><a id="546" href="#">기타</a></div>
				</div>
			</div>
			<div id="group3_55">
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn"></div>
				<div class="group3_btn">
					<div class="btn_group3"><a id="551" href="#">남성의류</a></div>
					<div class="btn_group3"><a id="552" href="#">여성의류</a></div>
					<div class="btn_group3"><a id="553" href="#">캐주얼의류</a></div>
					<div class="btn_group3"><a id="554" href="#">아동의류</a></div>
					<div class="btn_group3"><a id="555" href="#">기타</a></div>
				</div>
			</div>
		</div>
		<div class="category_added"></div>
		<div class="btn_long"><a href="#">카 테 고 리&nbsp;&nbsp;&nbsp;추 가</a></div>
	</div>
	<div class="category_save">
		<div class="category_all">
			<c:if test="${CategoryListSize!=0}">
				<c:forEach var="Category" items="${CategoryList}">
					<div class="category_set size_long">
						<div class="size_short">
							${Category.group1}, ${Category.group2}, ${Category.group3}
						</div>
						<div class="btn_short"><a href="">삭&nbsp;&nbsp;&nbsp;제</a></div>
					</div>
				</c:forEach>
			</c:if>
			<c:if test="${CategoryListSize==0 || CategoryListSize==null}">
			<div class="size_long category_text"><h1 class="text_sub">카테고리를 추가해 주세요</h1></div>
			</c:if>
		</div>
	</div>
</body>
</html>