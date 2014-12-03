<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/reset.css" type="text/css" rel="stylesheet">
<link href="css/GetPassword.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//비밀번호 텍스트 상자 포커스이벤트
	$('.inputfocus').focus(function(){
		$(this).css('border','1px solid #241CB0');
	});
	
	$('.inputfocus').blur(function(){
		$(this).css('border','1px solid #a6a6a6');
	});
});

//비밀번호 공백 제어
function gap_filter(str_value) {
	return str_value.replace(/[\s]/g , "");
}

//확인버튼 클릭
function confirm() {
	if(document.frm.passwd.value==""){
		alert("비밀번호를 입력하세요.");
		document.frm.passwd.focus();
		return false;
	}
	
	if(document.frm.passwd.value.length<5 || document.frm.passwd.value.length>10){
		alert("비밀번호는 5~10자리입니다.");
		document.frm.passwd.focus();
		return false;
	}	
	document.frm.submit();
}
</script>

<style type="text/css">
.top5{
font-weight: bold;
background: #73706c;
color: #fff !important; 
}

.sub5{
display: block !important;
}

.sub5 .index1{
font-weight: bold;
}
</style>
</head>

<body>
<form action="GetMemberInfo.jsp" method="post" name="frm">
<div class="locationBox">
<div class="locationInner">
<ul>
<li>
<a href="#">HOME</a>
<span>></span>
</li>
<li> 
<a href="MyAsiana.jsp">마이 아시아나</a>
<span>></span>
</li>
<li> 
<a href="#">회원정보</a>
<span>></span>
</li>
<li> 
회원정보 변경
</li>
</ul>
</div>
</div>

<div class="myasianaBox subMain">
<div class="container">

<!-- 메뉴 -->
<jsp:include page="MyAsanaMenu.jsp" />

<!-- 본문 -->
<div id="skipCt">
<div id="containerBody">
<h3 class="h3_type01">비밀번호 확인</h3>
<h4 class="h4_type01">회원님의 개인정보를 안전하게 보호하기 위해 비밀번호를 다시 입력하여 주세요.</h4>
<table class="myBoxType2">

<tr class="tableTRtype2">
<td>
회원 아이디
</td>

<td>
<strong>
<span class="fontPerple">jwan0510</span>
</strong>
</td>
</tr>

<tr class="tableTRtype2">
<td class="line"> 
비밀번호
</td>

<td class="line"> 
<input type="password" name="passwd" class="inputfocus" maxlength="10" onkeyup="this.value=gap_filter(this.value)">
</td>
</tr>
</table>

<ul class="alertList01">
<li>회원님의 개인정보를 보호하기 위해, 회원정보 조회시 비밀번호 재확인합니다.</li>
<li>비밀번호는 대/소문자를 구별하여 입력하시기 바랍니다.</li>
</ul>

<div class="btn_personneList">
<input type="image" class="confirm" onclick="return confirm()">
</div>
</div>
</div>
</div>

</div>
</form>
</body>
</html>