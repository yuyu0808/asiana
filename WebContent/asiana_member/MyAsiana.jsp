<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/reset.css" type="text/css" rel="stylesheet">
<link href="css/MyAsiana.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
</head>

<body>
<header>
	<jsp:include page="../asiana_inc/header.jsp" />
</header>
<form action="" method="post" name="frm">
<div class="locationBox">
<div class="locationInner">
<ul>
<li>
<a href="#">HOME</a>
<span>></span>
</li>
<li> 마이 아시아나</li>
</ul>
</div>
</div>

<div class="myasianaBox subMain">
<div class="container">

<!-- 메뉴 -->
<jsp:include page="MyAsanaMenu.jsp" />

<!-- 본문 -->
<div id="skipCt">
<!-- 본문 -->
<div id="containerBody">
<div class="subMainBox">
<div class="boxInner">
<h3 class="subMainBoxh3" style="vertical-align: bottom;">
<strong style="font-size: 16px;">한주완</strong>
<img src="images/textK_myAsiana0_1.gif" style="margin: 0 0 -2px; vertical-align: baseline;">
</h3>

<ul class="subMainTopInfo">
<li class="memberInfo">

<h4 class="title">나의 정보</h4>
<table>
<tr>
<td>회원번호</td>
<td><strong>123</strong></td>
</tr>

<tr>
<td>잔여마일리지</td>
<td>
<span class="btnkType12">
<a href="#"><strong>0</strong>마일</a>
</span>
</td>
</tr>

<tr>
<td>휴대전화</td>
<td>000-0000-0000</td>
</tr>

<tr>
<td>이메일</td>
<td>000000@naver.com</td>
</tr>
</table>

</li>

<li class="couponInfo">
<h4 class="title">나의 쿠폰</h4>
<ul class="couponList">
<li class="last">발행된 쿠폰이 없습니다.</li>
</ul>
<span class="btnType02">
<a href="#">전체쿠폰</a>
</span>
</li>

<li class="logoImage">
<img src="images/logo.JPG" style="width: 222px; height: 141px;">
</li>
</ul>

<div class="subMainBtn">
<span class="btnType02">
<a href="GetPassword.jsp">회원정보 자세히 보기</a>
</span>
</div>
</div>
</div>

<div class="subMainPositionBox">
<h4 class="h4_Ticket">항공권 예약 현황</h4>
<div class="common-boxQna">
<div class="common-innerQna">
회원님의 항공권 예약 현황을 보시려면 예약조회 메뉴에서 확인하실 수 있습니다.
<p>
<span class="btnType02">
<a href="ReservationList.jsp">바로가기</a>
</span>
</p>
</div>
</div>
</div>
</div>
</div>

</div>
</div>
</form>
<footer>
	<jsp:include page="../asiana_inc/footer.jsp" />
</footer>
</body>
</html>