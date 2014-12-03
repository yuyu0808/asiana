<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예매3</title>
<link type="text/css" rel="stylesheet" href="css/reserve3.css">
<style type="text/css">
</style>
</head>
<body>
	<section id="main_container">
		<div class="locationBox">
			<div class="location">
				<ul>
					<li><a href="#">HOME</a> <span>&gt;</span></li>
					<li><a href="#">예매</a> <span>&gt;</span></li>
					<li>국내선 예매</li>
				</ul>
			</div>
		</div>

		<div id="containerBox">
			<div id="skipct">
				<h3>국내선 예매</h3>
				<ul class="rv_stepBox">
					<li class="step01_end">1. 여정 선택</li>
					<li class="step02_end">2. 운임/항공편 선택</li>
					<li class="step03_on">3. 여정/탑승자 확인</li>
					<li class="step04_off">4. 운임확인/결제</li>
					<li class="step05_off">5. 예약완료</li>
				</ul>

				<p class="helpOp">
					<span class="btnType06"><a href="#">예약도움말</a></span>
				</p>
				<!-- 위에 상단 끝 -->

				<!-- 본문  -->
				<div class="itineraryBoxPs fareBox">
					<div class="fareInner">
						<!-- 선택한 공항 시간, 인원 박스 시작 -->
						<div class="selectITbox3 domesticFlight">
							<div class="selectITinner3"></div>
						</div>
						<!-- 선택한 공항 시간, 인원 박스 끝 -->

						<!-- 알림문 -->
						<div class="notice_container">
							<div class="notice_Inner innerType01">
								<ul class="notice">
									<li>반드시 실제 탑승하실 분의 성명을 입력하십시오. (예약 후 변경이 불가합니다)</li>
									<li>외국 국적이신 경우 성함을 여권상 영문으로 입력하여 주시기 바랍니다.</li>
									<li>탑승 완료 후에는 소급하여 할인을 적용 받을 수 없으므로 할인 대상 손님께서는 항공권 구입, 탑승
										시<br>할인 증빙서류를 소지하여 주시기 바랍니다.
									</li>
									<li>스타얼라이언스 회원사로 마일리지 적립을 원하는 경우 반드시 영문 성함으로 입력하여 주시기
										바랍니다. 에어부산이 운항하는 공동운항편은 스타얼라이언스 회원사로 마일리지 적립이 불가합니다.</li>
									<li><img src="img/bg_communal2.gif" alt="공동운항"> 표기는
										공동운항을 의미하며, 마우스를 클릭하시면 세부 항공편이 안내됩니다.</li>
								</ul>
							</div>
						</div>
						<!-- 알림문 끝 -->

					</div>
				</div>
				<!-- 본문끝 -->

			</div>
		</div>
		<!-- containerBox끝  -->

	</section>
</body>
</html>