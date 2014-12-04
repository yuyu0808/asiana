<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/reset.css" type="text/css" rel="stylesheet">
<script src="js/jquery-1.11.1.js"></script>
<title>Insert title here</title>
<style type="text/css">
.top1{
font-weight: bold;
background: #73706c;
color: #fff !important; 
}

.sub1{
display: block !important;
}

.sub1 .index1{
font-weight: bold;
}

.locationBox{
background: url(images/bg_location.jpg) no-repeat center bottom;
}

.locationInner{
width: 956px;
height: 30px;
line-height: 32px;
margin: 0 auto;
}

.locationBox .locationInner ul li{
float: left;
color: #999;
font-size: 11px;
text-align: left center;
}

.locationBox .locationInner ul li a{
color: #333;
}

.locationInner span{
padding: 0 8px;
}

.subMain{
background: url(images/bg_body1_1.jpg) repeat-x center 0;
height: 1050px;
}

.subMain .container{
width: 956px;
margin: 0 auto;
position: relative;
}

#skipCt{
min-height: 650px;
}

#skipCt #containerBody{
padding: 35px 0 100px 30px;
margin-left: 195px;
min-height: 780px;
}

#skipCt #containerBody .h3_type01{
font-size: 24px;
color: #010101;
font-weight: normal;
margin: 3px 0 47px;
line-height: 28px;
}

#skipCt #containerBody .inquiryTextBox{
position: relative;
margin-bottom: 25px;
}

.LineBox{
background: url(images/bg_reEndBoxTop2.gif) no-repeat;
padding-top: 5px;
margin-bottom: 11px;
}

.LineBox .LineInner{
margin-top: -1px;
}

.LineBox .LineInner .LineBottom{
background: url(images/bg_reEndBoxDB2.gif) no-repeat 0 bottom;
padding: 0 20px 34px 20px;
min-height: 119px;
}

.LineBox .LineInner .LineBottom .h4_type01{
position: relative;
top: -4px;
margin-bottom: 10px;
display: block;
overflow: inherit;
}

.LineBox .LineInner .LineBottom .bgText{
background: url(images/bl_notice.gif) no-repeat;
font-size: 13px;
padding-left: 25px;
line-height: 18px;
}

.LineBox .bgType01{
background: url(images/bg_reEndBoxDT2.gif) no-repeat;
padding-top: 5px;
}

.LineBox .bgType01 .bgBottomType{
background: url(images/bg_reEndBoxBottom2.gif) no-repeat 0 bottom;
}

.rangeText{
text-align: right;
color: #808080;
font-size: 11px;
line-height: 21px;
padding-bottom: 5px;
}
</style>
</head>

<body>
<header>
	<jsp:include page="../asiana_inc/header.jsp" />
</header>
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
<a href="#">예약</a>
<span>></span>
</li>
<li> 
항공권 예약 현황
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
<h3 class="h3_type01">항공권 예약 현황</h3>
<div class="inquiryTextBox">
<p class="inquiryTitle">
<img src="images/text_inquiry.gif">
</p>

<div class="LineBox">
<div class="LineInner">
<div class="LineBottom">

<h4 class="h4_type01">
<img src="images/text_myReservation.jpg">
</h4>

<p class="reCntText bgText">
<strong>최근 6개월 중에 예약하신 내역이 없습니다.</strong>
</p>

</div>
</div>

<div class="LineInner bgType01">
<div class="LineBottom bgBottomType">
<p class="rangeText" style="border-bottom: 1px solid #5c5f66;">
첫 여정의 출발 일시가 빠른 순서로 정렬됩니다.
</p>
</div>
</div>

</div>
</div>
</div>
</div>

</div>
</div>
<footer>
	<jsp:include page="../asiana_inc/footer.jsp" />
</footer>
</body>
</html>