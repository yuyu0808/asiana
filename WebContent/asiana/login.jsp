<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/reset.css" type="text/css" rel="stylesheet">
<link href="css/login.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script> 
<script type="text/javascript">
$(document).ready(function(){
	//포커스 이벤트
	$('.inputfocus').focus(function(){	
		$(this).css('border','1px solid #241CB0');
	});
	
	$('.inputfocus').blur(function(){
		$(this).css('border','1px solid #a6a6a6');
	});
});

//아이디 공백, 특수문자 입력 제어
function special_filter(str_value){
	return str_value.replace(/[^a-zA-Z0-9]/gi, "");
}

//비밀번호 공백 제어
function gap_filter(str_value) {
	return str_value.replace(/[\s]/g , "");
}

//로그인버튼 클릭
function login() {
	if(document.frm.member_id.value==""){
		alert("아이디를 입력하세요.");
		document.frm.member_id.focus();
		return false;
	}
	
	if(document.frm.member_id.value.length<4){
		alert("아이디는 4~12자리입니다.");
		document.frm.member_id.focus();
		return false;
	}
	
	if(document.frm.passwd.value==""){
		alert("비밀번호를 입력하세요.");
		document.frm.passwd.focus();
		return false;
	}
	
	if(document.frm.passwd.value.length<5){
		alert("비밀번호는 5~10자리입니다.");
		document.frm.passwd.focus();
		return false;
	}
	document.frm.submit();
}
</script>
</head>

<body onload="init()">
<form method="post" name="frm">
<div class="locationBox">
<div class="locationInner">
<ul>
<li>
<a href="#">HOME</a>
<span>></span>
</li>
<li>로그인</li>
</ul>
</div>
</div>

<div class="loginBox">
<div class="hr">
<div id="containerBody">
<h2>로그인</h2>
</div>
</div>

<div class="loginArea">

<ul id="contType">
<li><label>아이디</label>
<input type="text" id="forLoginID" class="inputfocus" name="member_id" maxlength="12" style="ime-mode: disabled;" onkeyup="this.value=special_filter(this.value)">
</li>

<li><label>비밀번호</label>
<input type="password" id="forLoginPasswd" class="inputfocus" maxlength="10" name="passwd" onkeyup="this.value=gap_filter(this.value)">
</li>

<li>
<input type="image" id="btnLogin" onclick="return login()">
</li>
</ul>

<ul id="contType_sub">
<li>
<label id="labelSave"><input type="checkbox" id="saveID"> 아이디 저장</label>
</li>
<li>
<p>* 아이디와 비밀번호는 대/소문자를 구별하여 입력하시기 바랍니다.</p>
</li>
</ul>

<div class="sub_loginArea">

<div>
<span class="btnType02">
<a href="#">아이디 찾기</a>
</span>

<span class="btnType02">
<a href="#">비밀번호 찾기</a>
</span>

<span class="btnType02">
<a href="CheckRegistered.jsp">회원가입</a>
</span>
</div>

</div>
</div>
</div>
</form>
</body>
</html>