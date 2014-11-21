<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/reset.css">
<link rel="stylesheet" type="text/css" href="../css/header.css">
<style type="text/css">
	.nav_sub {
		display: none;
	}
	.nav_sub>div {
		float: left;
		margin-right: 24px;
		border-top: 1px solid #dcdad6;
	}
	.nav_sub ul{
		border-bottom: 1px solid #dcdad6;
		overflow: hidden;
		clear: both;
		width: 176px;
		padding: 4px 0;
	}
	.airline_ul {border: none;padding: 9px 0 6px 22px;}
	.airline_ul li{
		background: url('../img/head/bl_gndLine.gif') no-repeat 2px 9px;
		clear: both; padding: 0 0 0 16px; line-height: 20px; width: 100%;
	}
	#head_nav span{
		background: url('../img/head/bl_gndArrow.gif') no-repeat 0 1px;
		position: relative;line-height: 17px;padding: 0 0 0 21px;display: block;
	}
</style>
<script src="../js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	$(function(){
		$('#head_nav>ul>li>a').each(function(idx){
			$(this).mouseover(function(){
				$('#nav_sub_'+idx+'+div').addClass('nav_sub_area_'+idx);
				$('.nav_sub_area_'+idx).css({
					'border': '1px solid rgb(156, 161, 166)',
					'border-top': 'none',
					'z-index': '5',
					'padding': '21px 0px 27px 10px',
					'position': 'absolute',
					'top': '66',
					'left': function(){return idx*136;},
					'display': 'block',
					'background': 'url("../img/head/bg_gnbSub.gif") 0px 100% repeat-x rgb(255, 255, 255)'
				});
				$('#nav_sub_'+idx+'>img').attr("src","../img/head/nav0"+(idx+1)+"_on.png");
			});
			$(this).mouseout(function(){
				$(this).css('padding-bottom',function(){
					return $('#nav_sub_'+idx+'+div').css('height');
				});
				$('#nav_sub_'+idx+'+div').removeClass('.nav_sub_area_'+idx);
				$('#nav_sub_'+idx+'>img').attr("src","../img/head/nav0"+(idx+1)+"_off.png");
			});
		});
		
	});
</script>
</head>
<body>
<div id="header">
	<!-- login_bar 시작 -->
	<div class="login_bar">
		<div class="section">
			<!-- 언어 선택공간 시작 -->
			<div>
				<p>
					<a class="login_a" href="#none" onclick="show_lang();">
						<span>
							<span class="earth"></span>
							<span id="select_lang">Korea-한국어</span>
							<span class="lang">change</span>
						</span>
					</a>
				</p>
			</div>
			<div id="div_lang">
				
			</div>
			<!--  언어선택공간 끝 -->
			<div class="login_div" style="position: absolute; top:0px; right:0; z-index:9999;">
				<ul>
					<li><a href="#"><strong>로그인</strong></a></li>
					<li><a href="#"><strong>회원가입</strong></a></li>
					<li><a href="#"><strong>마이 아시아나</strong></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- login_bar 끝 -->
	<!-- header main 시작 -->
	<div id="header_main">
		<!-- 메인 로고,검색,네비 시작 -->
		<div class="headInner">
			<div>
				<h1 style="padding: 28px 0 0 1px; margin: 0 0 0 -1px;">
					<!-- 메인 로고 시작 -->
					<a href="#">	
						<img src="../img/head/logo_h1.png" alt="아시아나 항공">
					</a>
					<!-- 메인 로고 끝 -->
				</h1>
				<!-- 메인 검색 시작 -->
				<div class="search">
					<form id="frm_search" name="frm_search" onkeyup="ajax_search(this.frm_txt.value)">
						<fieldset>
							<legend>검색</legend>
							<span class="frm_span">
								<input type="text" name="frm_txt">
								<input type="image" src="../img/head/btn_topsearch.png" onclick="">
							</span>
						</fieldset>
					</form>
				</div>
				<!-- 메인 검색 끝 -->
				<!-- 메인 네비 시작 -->
				<div id="head_nav">
					<div class="clear"></div>
					<ul>
						<!-- 항공권 예매 list -->
						<li>
							<a href="#" id="nav_sub_0">
								<img src="../img/head/nav01_off.png">
							</a>
							<!-- 항공권 예매 마우스 오버시 나타나는 div -->
							<div class="nav_sub">
								<!-- 항공권 예매 div 좌측 -->
								<div>
									<ul>
										<li>
											<a href="#">
												<span>항공권 예매</span>
											</a>
											<ul class="airline_ul">
												<li>
													<a href="#">국내선</a>
												</li>
												<li>
													<a href="#">국제선</a>
												</li>
												<li>
													<a href="#">예약조회</a>
												</li>
											</ul>
										</li>
									</ul>
									<ul>
										<li>
											<a href="#">
												<span>할인항공권</span>
											</a>
										</li>
									</ul>
									<ul>
										<li>
											<a href="#">
												<span>마일리지항공권 발급</span>
											</a>
										</li>
									</ul>
									
								</div>
								<!-- 항공권 예매 div 우측 -->
								<div>
									<ul>
										<li>
											<a href="#">
												<span>스케쥴 조회</span>
											</a>
										</li>
									</ul>
									<ul>
										<li>
											<a href="#">
												<span>운임 조회</span>
											</a>
										</li>
									</ul>
									<ul>
										<li>
											<a href="#">
												<span>체크인/탑승권 발급</span>
											</a>
										</li>
									</ul>
									<ul>
										<li>
											<a href="#">
												<span>항공기 출도착 안내</span>
											</a>
										</li>
									</ul>
									<ul>
										<li>
											<a href="#">
												<span>취항 노선</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<!-- 아시아나 클럽 list -->
						<li>
							<a href="#" id="nav_sub_1">
								<img src="../img/head/nav02_off.png">
							</a>
							<div class="nav_sub">
								<ul>
									<li>
										<a href="#">
											<span>아시아나클럽 홈</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>아시아나클럽 소개</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>아시아나 마일리지 적립</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>아시아나 마일리지 사용</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>스타얼라이언스/제휴항공사</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>마일리지 적립 제휴사</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>마일리지 사용 제휴사</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>할인 제휴사</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>뉴스/이벤트/뉴스레터</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<!-- 서비스 안내 list -->
						<li>
							<a href="#" id="nav_sub_2">
								<img src="../img/head/nav03_off.png">
							</a>
							<div class="nav_sub">
								<ul>
									<li>
										<a href="#">
											<span>서비스 안내 홈</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>클래스별 서비스</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>항공권 예매</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>사전 좌석 예약</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>인터넷/모바일 탑승권</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>공항에서</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>수하물/유실물</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>기내에서</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>특별서비스</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>항공기 안내</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>모바일 서비스</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>유료 부가 서비스</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>양식 다운로드</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<!-- 여행상품/정보 list -->
						<li>
							<a href="#" id="nav_sub_3">
								<img src="../img/head/nav04_off.png">
							</a>
							<div class="nav_sub">
								<ul>
									<li>
										<a href="#">
											<span>여행상품/정보 홈</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>해외여행상품</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>국내여행상품</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>호텔/리조트</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>렌터카</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>스마트 여행 계획</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>취항지 여행정보</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>여행 매거진</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>여행 갤러리</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>여행 부가정보</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<!-- 이벤트/혜택 list -->
						<li>
							<a href="#" id="nav_sub_4">
								<img src="../img/head/nav05_off.png">
							</a>
							<div class="nav_sub">
								<ul>
									<li>
										<a href="#">
											<span>이벤트/혜택 홈</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>이벤트</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>문화초대</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>아시아나 라이크</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>당첨자 발표</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>매직보딩패스</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>신용카드 혜택</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>아시아나 항공교실</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<!-- 메인 네비 끝 -->
			</div>
		</div>
		<!-- 메인 로고,검색,네비 끝 -->
	</div>
	<!-- header main 끝 -->
</div>
</body>
</html>