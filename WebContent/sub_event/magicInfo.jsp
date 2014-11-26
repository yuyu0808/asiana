<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/reset.css" type="text/css" rel="stylesheet">
<link href="css/footer.css" type="text/css" rel="stylesheet">
<link href="css/header.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">
#main {
	width: 100%;
	height: 1140px;
	overflow: hidden;
	position: relative;
}
#locationInner {
	position: relative;
	width: 956px;
	margin: 0 auto;
	height: 30px;
	line-height: 32px;
	z-index: 10;
}
#location ul li {
	float: left;
}
#location ul li span {
	padding: 0 8px;
}
</style>
</head>
<body>
	<!-- header 시작 -->
	<%@include file="../inc/header.jsp" %>
	<!-- header 끝 -->
	<!-- section 시작 -->
	<section id="main">
		<!-- 헤더와 메인 사이 로케이션 박스 시작 -->
		<div id="locationBox" style="background: url('../img/sub_event/bg_location.jpg') no-repeat center bottom;">
			<div id="locationInner">
				<div id="location">
					<ul>
						<li>
							<a href="#">Home</a>
							<span>></span>
						</li>
						<li>
							<a href="#">이벤트혜택</a>
							<span>></span>
						</li>
						<li style="color:#999;">매직보딩패스</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 헤더와 메인 사이 로케이션 박스 끝 -->
		<!-- 메인 시작 -->
		<div id="containerBox" style="background: url('../img/sub_event/bgP_body_boardingpass.jpg') no-repeat center 0">
			<div id="container" style="width: 956px;margin: 0 auto;position: relative;">
				<!-- aside(메인 왼쪽) 시작 -->
				<%@include file="aside.jsp" %>
				<!-- aside(메인 왼쪽) 끝 -->
				<!-- 메인 오른쪽 -->
				<div id="skipCt">
					<section id="containerBody" style="margin: 0 0 0 195px;padding: 27px 0 100px 50px;min-height: 780px;">
						<h3 style="font-size: 24px;color: #010101;font-weight: normal;margin: 0 0 44px 0;line-height: 28px;">매직 보딩 패스</h3>
						<div class="eventbox bg2">
							<div class="boarding">
								<h4 style="padding: 3px 0 0 1px;">
									<img src="../img/sub_event/textP_boarding1.png">
								</h4>
								<div style="margin: 31px 0 59px 0;line-height: 22px;color: #000;">
									<img src="../img/sub_event/textP_boarding2.png" style="margin: 0 0 9px 0;">
									<p style="margin: 0 0 0 1px;">
									아시아나항공 국내선, 국제선 이용 고객 (공동운항 항공편 제외)<br> 
									탑승일 기준 7일 동안 제휴사에서 이용하실 수 있습니다.
									</p>
								</div>
								<div>
									<h5 style="margin: 0 0 13px 0;display: block;font-size: 0.83em;font-weight: bold;">
										<img src="../img/sub_event/textP_boarding3.gif" style="border: 0 none;vertical-align: top;font-weight: bold;font-size: 0.83em;">
									</h5>
									<ul style="border-top: 1px solid #60656c;margin: 0 0 44px 0;">
										<li style="border-bottom: 1px dotted #c2c3c5;">
											<strong style="font-weight: bold; display: block;">
												<a href="#none" style="display: block;background:#fff url('../img/sub_event/blP_arrow.gif') no-repeat 678px 25px;color: #2a2c39;font-size: 16px;font-weight: bold;padding: 19px 0 18px 7px;">01. 탑승권 자세히 보기</a>
											</strong>
											<div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		<!-- 메인 끝 -->
	</section>
	<!-- section 끝 -->
	<!-- footer 시작 -->
	<%@include file="../inc/footer.jsp" %>
	<!-- footer 끝 -->
</body>
</html>