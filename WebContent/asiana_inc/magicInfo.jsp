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
<script src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(function(){
	$('.info_content a').click(function(){
		$('.info_view').toggle();
		$(this).css('background',function(){
			if($('.info_view').css('display') == "none"){
				return "#fff url('img/sub_event/blP_arrow.gif') no-repeat 678px 25px;color: #2a2c39;font-size: 16px;font-weight: bold;padding: 19px 0 18px 7px";
			} else {
				return "#f5f5f5 url('img/sub_event/blP_arrow_on.gif') no-repeat 678px 25px";
			}
		});
	});
});
</script>
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
#containerBody {
	margin: 0 0 0 195px;
	padding: 27px 0 100px 50px;
	min-height: 780px;
}
#containerBody h3 {
	font-size: 24px;
	color: #010101;
	font-weight: normal;
	margin: 0 0 44px 0;
	line-height: 28px;
}
.info_view strong {
	display: inline-block;
	margin: 0 0 15px 0;
	line-height: 20px;
	color: #000;
	font-size: 14px;
}
.info_content h5 {
	margin: 0 0 13px 0;
	display: block;
	font-size: 0.83em;
	font-weight: bold;
}
.info_view {
	position: relative;
	color: #666;
	line-height: 20px;
	padding: 21px 0 46px 7px;
	display: none;
}
.info_view ul li {
	float: left;
	width: 333px;
	margin: 45px 0 0 33px;
	border-bottom: none;
}
</style>
</head>
<body>
	<!-- header 시작 -->
	
	<!-- header 끝 -->
	<!-- section 시작 -->
	<section id="main">
		<!-- 헤더와 메인 사이 로케이션 박스 시작 -->
		<div id="locationBox" style="background: url('img/sub_event/bg_location.jpg') no-repeat center bottom;">
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
		<div id="containerBox" style="background: url('img/sub_event/bgP_body_boardingpass.jpg') no-repeat center 0">
			<div id="container" style="width: 956px;margin: 0 auto;position: relative;">
				<!-- aside(메인 왼쪽) 시작 -->
				<jsp:include page="aside.jsp" />
				<!-- aside(메인 왼쪽) 끝 -->
				<!-- 메인 오른쪽 -->
				<div id="skipCt">
					<section id="containerBody">
						<h3>매직 보딩 패스</h3>
						<div class="eventbox bg2">
							<div class="boarding">
								<h4 style="padding: 3px 0 0 1px;">
									<img src="img/sub_event/textP_boarding1.png">
								</h4>
								<div style="margin: 31px 0 59px 0;line-height: 22px;color: #000;">
									<img src="img/sub_event/textP_boarding2.png" style="margin: 0 0 9px 0;">
									<p style="margin: 0 0 0 1px;">
									아시아나항공 국내선, 국제선 이용 고객 (공동운항 항공편 제외)<br> 
									탑승일 기준 7일 동안 제휴사에서 이용하실 수 있습니다.
									</p>
								</div>
								<div class="info_content">
									<h5>
										<img src="img/sub_event/textP_boarding3.gif" style="border: 0 none;vertical-align: top;font-weight: bold;font-size: 0.83em;">
									</h5>
									<ul style="border-top: 1px solid #60656c;margin: 0 0 44px 0;">
										<li style="border-bottom: 1px dotted #c2c3c5;">
											<strong style="font-weight: bold; display: block;">
												<a href="#none" style="display: block;background:#fff url('img/sub_event/blP_arrow.gif') no-repeat 678px 25px;color: #2a2c39;font-size: 16px;font-weight: bold;padding: 19px 0 18px 7px;">01. 탑승권 자세히 보기</a>
											</strong>
											<div class="info_view">
											아래 4가지 타입 중 소지하고 계시는 보딩패스를 제시하시면 매직보딩패스 서비스를 이용하실 수 있습니다.<br>
											(이용 시 신분증을 함께 제시하시기 바랍니다.)
												<ul style="margin: -10px 0 0 -33px;">
													<li>
														<strong>01. 종이 탑승권</strong>
														<img src="img/sub_event/bgP_boarding_img1.jpg">													<p>
														탑승권 부분을 절취하여 제시하시면 매직보딩패스로 이용<br>
														가능합니다. 이용 시 신분증을 함께 제시하시기 바랍니다.
														</p>
													</li>
													<li>
														<strong>02. 국내선 키오스크 발급 탑승권</strong>
														<img src="img/sub_event/bgP_boarding_img2.jpg">
														<p>
														국내선 키오스크 발급 탑승권을 제시하시면<br> 
														매직보딩패스로 이용 가능합니다.
														</p>
													</li>
													<li>
														<strong>03. 온라인 체크인 시 이메일 보딩패스</strong>
														<img src="img/sub_event/bgP_boarding_img3.jpg">
														<p>
														홈페이지 및 모바일 웹/앱에서 인터넷 체크인을 하시는 경우<br> 
														메일로 받으신 탑승권 양식을 출력하여 제시하시면<br> 
														매직보딩패스로 이용 가능합니다.
														</p>
													</li>
													<li>
														<strong>04. 모바일 탑승권</strong>
														<img src="img/sub_event/bgP_boarding_img4.jpg">
														<p>
														모바일 웹/앱의 모바일탑승권을 제시하시면<br> 
														매직보딩패스로 이용 가능합니다.
														</p>
													</li>
												</ul>
												<strong style="color: #333;font-size: 11px;position: absolute;top: -37px;right: 41px;">
												<a href="#none">닫기</a>
											</strong>
											</div>
										</li>
										<li style="border-bottom: 1px dotted #c2c3c5;">
											<strong style="font-weight: bold; display: block;">
												<a href="#none" style="display: block;background:#fff url('img/sub_event/blP_arrow.gif') no-repeat 678px 25px;color: #2a2c39;font-size: 16px;font-weight: bold;padding: 19px 0 18px 7px;">02. 이용 규정</a>
											</strong>
											<div class="info_view2">
												- 탑승권은 본인만 사용 가능합니다.<br> 
												- 일부 제휴사는 사전 예약이 필요하오니, 제휴사/혜택에서 확인하시기 바랍니다.<br> 
												- 제공 혜택은 제휴사의 사정에 따라 사전 예고 없이 변경될 수 있습니다.
												<span style="background: url('img/sub_event/bg_btnLeft2.jpg') no-repeat 0 0; display: inline-block;">
													<a href="#none" style="background: url('img/sub_event/bg_btnRight2.jpg') no-repeat right 0;padding: 0 29px 0 13px;display: block;height: 22px;line-height: 22px;line-height: 22px;color: #4c4c4c;">이용 조건 모두 보기</a>
												</span>
												<strong style="color: #333;font-size: 11px;position: absolute;top: -37px;right: 41px;">
												<a href="#none">닫기</a>
											</strong>
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
	
	<!-- footer 끝 -->
</body>
</html>