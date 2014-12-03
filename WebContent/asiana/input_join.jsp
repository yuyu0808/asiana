<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/reset.css" type="text/css" rel="stylesheet">
<link href="css/input_join.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<%
request.setCharacterEncoding("utf-8");
String share_info=request.getParameter("share_info");
%>
<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script> 
<script type="text/javascript">
$(document).ready(function(){
	//포커스 이벤트
	$('input[type=text], input[type=password]').focus(function(){	
		$(this).css('border','1px solid #241CB0');
	});
	
	$('input[type=text], input[type=password]').blur(function(){
		$(this).css('border','1px solid #a6a6a6');
	});
});

//아이디 공백, 특수문자 입력 제어
function special_filter(str_value){
	return str_value.replace(/[^\w]/gi, "");
}

//전화번호 숫자만 입력
function number_filter(str_value) {
	return str_value.replace(/[^0-9]/gi, "");
}

//비밀번호 공백 제어
function gap_filter(str_value) {
	return str_value.replace(/[\s]/gi , "");
}

function domain_filter(str_value) {
	return str_value.replace(/[^a-z.]/g, "");
}

//ID 중복확인
function IDCheck(){
	if(document.fr.member_id.value==""){
		alert("아이디를 입력하세요.");
		document.fr.memeber_id.focus();
		return false;
	}
}

//다음 우편번호 서비스
function openDaumPostcode(){
	new daum.Postcode({
        oncomplete: function(data) {
            document.fr.post_code1.value = data.postcode1;
            document.fr.post_code2.value = data.postcode2;
            document.fr.address1.value = data.address;
            document.fr.address2.focus();
        }
    }).open();
}

//월별 일 수 구하기 & 2월 윤년 구분
function date() {
 var years=Number(document.fr.years.value);
 var month=Number(document.fr.month.value);
 var day="";

 	switch (month) {
 	case 1: case 3: case 5: case 7: case 8: case 10: case 12:		
 		for(var i=1;i<=31;i++){
	   		day+="<option value="+i+">"+i+"</option>";
 		}
  	   	document.fr.day.innerHTML=day;
 		break;
 
 	case 4: case 6: case 9: case 11:
		for(var i=1;i<=30;i++){
 		    day+="<option value="+i+">"+i+"</option>";
 		}
  		document.fr.day.innerHTML=day;
  		break;
 
 	case 2:
  		if(years%4 == 0 && years%100 != 0 || years%400 == 0){
   			for(var i=1;i<=29;i++){
   				day+="<option value="+i+">"+i+"</option>";
  			}  			
  			document.fr.day.innerHTML=day; 			
  			break;
  		}else{
  			for(var i=1;i<=28;i++){  				
   				day+="<option value="+i+">"+i+"</option>";
   			} 
   			document.fr.day.innerHTML=day;
   			break;
 	 	}
    }
}

//e-mail 주소 선택
function domainsel() {
	if(document.fr.domain.value==""){
		document.fr.email_Domain.readOnly=false;
		document.fr.email_Domain.value="";
		document.fr.email_Domain.focus();
	}else{
		document.fr.email_Domain.value=document.fr.domain.value;
		document.fr.email_Domain.readOnly=true;
	}
}

//가입 클릭
function join() {
	if(document.fr.member_id.value==""){
		alert("아이디를 입력하세요.");
		document.fr.member_id.focus();
		return false;
	}
	
	if(document.fr.member_id.value.length<4){
		alert("아이디는 4~12자리입니다.");
		document.fr.member_id.focus();
		return false;
	}
	
	if(document.fr.passwd.value==""){
		alert("비밀번호를 입력하세요.");
		document.fr.passwd.focus();
		return false;
	}
	
	if(document.fr.passwd.value.length<5){
		alert("비밀번호는 5~10자리입니다.");
		document.fr.passwd.focus();
		return false;
	}
	
	if(document.fr.repasswd.value==""){
		alert("비밀번호 확인을 입력하세요.");
		document.fr.repasswd.focus();
		return false;
	} 
	
	if(document.fr.passwd.value!=document.fr.repasswd.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.fr.repasswd.focus();
		return false;
	} 
	
	if(document.fr.member_id.value == document.fr.passwd.value){
		alert("아이디와 비밀번호가 일치합니다.");
		document.fr.passwd.focus();
		return false;
	}
	
	if(document.fr.name.value==""){
		alert("이름을 입력하세요.");
		document.fr.name.focus();
		return false;
	} 
	
	if(document.fr.years.value=="년도"){
		alert("년도을 정확히 선택하세요.");
		document.fr.years.focus();
		return false;
	}
	
	if(document.fr.month.value=="월"){
		alert("월을 정확히 선택하세요.");
		document.fr.month.focus();
		return false;
	}
	
	if(document.fr.day.value=="일"){
		alert("일을 정확히 선택하세요.");
		document.fr.day.focus();
		return false;
	}
	
	document.fr.birthday.value = document.fr.years.value+"년 "+document.fr.day.value+"월 "+document.fr.day.value+"일";
	
	if(document.fr.gender[0].checked == false && document.fr.gender[1].checked == false){
		alert("성별을 선택하세요.");
		document.fr.gender[0].focus();
		return false;
	}
	
	if(document.fr.post_code1.value==""){
		alert("우편번호를 검색하세요.");
		document.fr.postSelect.focus();
		return false;
	}
	
	document.fr.post_code.value=document.fr.post_code1.value+"-"+document.fr.post_code2.value;
	
	if(document.fr.address2.value=="" || document.fr.address2.value=="상세 주소"){
		alert("상세주소를 입력하세요.");
		document.fr.address2.focus();
		return false;
	}
	
	document.fr.address.value=document.fr.address1.value+"&"+document.fr.address2.value;
	
	if(document.fr.telephone1.value=="" && document.fr.telephone2.value=="" && document.fr.telephone3.value==""
		&& document.fr.mobile1.value=="" && document.fr.mobile2.value=="" && document.fr.mobile3.value==""){
		alert("전화번호와 휴대전화번호 중\r\n한 개는 꼭 입력하셔야 합니다.");	
		return false;
	}
	
	if(document.fr.telephone1.value!="" || document.fr.telephone2.value!="" || document.fr.telephone3.value!=""){
		if(document.fr.telephone1.value=="" || document.fr.telephone2.value=="" || document.fr.telephone3.value==""){
			alert("전화번호를 정확히 입력하세요.");
			return false;
		}
	}
	
	document.fr.telephone.value=document.fr.telephone1.value+"-"+document.fr.telephone2.value+"-"+document.fr.telephone3.value;
	
	if(document.fr.mobile1.value!="" || document.fr.mobile2.value!="" || document.fr.mobile3.value!=""){
		if(document.fr.mobile1.value=="" || document.fr.mobile2.value=="" || document.fr.mobile3.value==""){
			alert("휴대전화번호를 정확히 입력하세요.");
			return false;
		}
	}
	
	document.fr.mobile.value=document.fr.mobile1.value+"-"+document.fr.mobile2.value+"-"+document.fr.mobile3.value;
	
	if(document.fr.email_id.value==""){
		alert("e-mail을 입력하세요.");
		document.fr.email_id.focus();
		return false;
	}
	
	if(document.fr.email_Domain.value==""){
		alert("e-mail주소를 선택하세요.");
		document.fr.domain.options[0].focus();
		return false;
	}
	
	document.fr.email.value=document.fr.email_id.value+"@"+document.fr.email_Domain.value;	
	
	document.fr.submit();
}
</script>
</head>

<body>
<form method="post" name="fr">
<input type="hidden" name="share_info" value="<%=share_info%>">
<div class="stepBox">
<img src="images/StepOnArrow.JPG" style="margin: 15px 550px;">
</div>

<div class="issueCont">
<div class="memberLeftArea">
<h2>
<img src="images/textK_member_step5_1.gif">
</h2>
</div>

<div class="memberwrap">
<img class="logo" src="images/join.JPG">

<table class="memberBox">
<tr>
<td>회원아이디</td>
<td><input class="input" type="text" id="idtxt" name="member_id" maxlength="12" style="ime-mode:disabled" onkeyup="this.value=special_filter(this.value)"> 
<input type="button" value="중복확인" class="idCheck" onclick="return IDCheck()">
<p class="noticeInTd">
* 4~12자리 영문(대소문자 구별), 숫자 조합 입력 가능 (단 한글, 공백, 특수문자 입력 불가)
</p>
</td>
</tr>

<tr>
<td>비밀번호</td>
<td><input type="password" maxlength="10" name="passwd" onkeyup="this.value=gap_filter(this.value)">
<p class="noticeInTd">
* 띄어쓰기 없는 영문 대소문자, 모든 문자, 숫자로 5~10자
</p>
</td>
</tr>

<tr>
<td>비밀번호 확인</td>
<td><input type="password" maxlength="10" name="repasswd" onkeyup="this.value=gap_filter(this.value)">
<p class="noticeInTd">* 비밀번호를 한번 더 입력해 주세요</p>
</td>
</tr>

<tr>
<td>이름</td>
<td><input type="text" class="inputname" name="name"></td>
</tr>

<tr>
<td>생년월일</td>
<td>
<select name="years" onchange="date()">
<option value="년도">년도</option>
<%
for(int i=2014;i>=1900;i--){
	%><option value="<%=i%>"><%=i%></option> <%
}
%>
</select>
<span>&nbsp;년&nbsp;</span>

<select class="month" name="month" onchange="date()">
<option value="월">월</option>
<%
for(int i=1;i<=12;i++){
	%><option value="<%=i%>"><%=i%></option> <%
}
%>
</select>
<span>&nbsp;월&nbsp;</span>

<select class="day" name="day">
<option value="일">일</option>
</select>

<span>&nbsp;일&nbsp;</span>
<input type="hidden" name="birthday">

<label class="birth"><input type="radio"  name="cal_type" value="양력" checked="checked"> 양력</label>
<label class="birth"><input type="radio"  name="cal_type" value="음력"> 음력</label>
</td>
</tr>

<tr>
<td>성별</td>
<td>
<label class="gender"><input type="radio"  name="gender" value="남"> 남자</label>
<label class="gender"><input type="radio"  name="gender" value="여"> 여자</label>
</td>
</tr>

<tr>
<td>주소</td>
<td>
<ul class="ulfirst">
<li><input type="text" class="postNum" name="post_code1" readonly="readonly"  onclick="openDaumPostcode()"> -</li>
<li>&nbsp;<input type="text" class="postNum" name="post_code2" readonly="readonly"  onclick="openDaumPostcode()"></li>
<li>
<span class="postNumBtn">
<a onclick="openDaumPostcode()">우편번호 검색</a>
</span>
</li>
</ul>
<input type="hidden" name="post_code">

<ul class="nextUl">
<li><input type="text" class="wAress0" name="address1" value="기본 주소" readonly="readonly" onclick="openDaumPostcode()"></li>
<li><input type="text" class="wAress0" name="address2" placeholder="상세주소"></li>
</ul>
<input type="hidden" name="address">
</td>
</tr>


<tr>
<td>전화번호</td>
<td>
<p class="noticeInTd">
* 연락 가능한 번호는 전화번호와 휴대전화번호 중 한 개는 꼭 입력하셔야 합니다. 
</p>
<strong>
<label>전화번호</label><br>
</strong>

<input type="text" class="selTelNum" maxlength="3" name="telephone1" onkeyup="this.value=number_filter(this.value)"> -
 <input type="text" class="selTelNum" maxlength="4" name="telephone2" onkeyup="this.value=number_filter(this.value)"> -
 <input type="text" class="selTelNum" maxlength="4" name="telephone3" onkeyup="this.value=number_filter(this.value)"><br>
 <input type="hidden" name="telephone">
<strong>
<label>휴대전화번호</label><br>
</strong>

<input type="text" class="selTelNum" maxlength="3" name="mobile1" onkeyup="this.value=number_filter(this.value)"> -
 <input type="text" class="selTelNum" maxlength="4" name="mobile2" onkeyup="this.value=number_filter(this.value)"> -
 <input type="text" class="selTelNum" maxlength="4" name="mobile3" onkeyup="this.value=number_filter(this.value)">
 <input type="hidden" name="mobile">
</td>
</tr>

<tr>
<td>e-mail</td>
<td>
<input type="text" class="email_id" name="email_id" style="ime-mode:disabled"> 
<span>@</span> 
<input type="text" class="email_Domain" name="email_Domain" onkeyup="this.value=domain_filter(this.value)">
<select class="domain" name="domain" onchange="domainsel()" onblur="domainsel()">
<option value="">직접입력</option>
<option value="naver.com">naver.com</option>
<option value="nate.com">nate.com</option>
<option value="hanmail.net">hanmail.net</option>
<option value="hotmail.com">hotmail.com</option>
<option value="paran.com">paran.com</option>
<option value="dreamwiz.com">dreamwiz.com</option>
</select>
<input type="hidden" name="email">
</td>
</tr>
</table>

<div class="btn">
<input type="image" class="close">
<input type="image" class="join" onclick="return join()">
</div>
</div>
</div>
</form>
</body>
</html>