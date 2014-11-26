<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ATeam PJ</title>
<link href="css/reset.css" type="text/css" rel="stylesheet">
<script src="js/jquery-1.11.1.js"></script>
<script src="js/jquery.innerfade.js"></script>
<script type="text/javascript">
var lang_select_a = "";
var lang_select_a2 = "";
	$(function(){
		$('#head_nav>ul>li>a').each(function(idx){
			$(this).mouseover(function(){
				$('#nav_sub_'+idx+'+div').addClass('nav_sub_area_'+idx);
				$('.nav_sub_area_'+idx).css({
					'border': '1px solid rgb(156, 161, 166)',
					'border-top': 'none',
					'z-index': '200',
					'padding': '21px 0px 27px 10px',
					'position': 'absolute',
					'top': '66',
					'left': function(){return idx*136;},
					'display': 'block',
					'background': 'url("img/head/bg_gnbSub.gif") 0px 100% repeat-x rgb(255, 255, 255)'
				});
				$(this).children('img').attr("src","img/head/nav0"+(idx+1)+"_on.png");
			}).mouseout(function(){
				$('#head_nav,#head_nav>ul>li>a').not(this).hover(function(){
					$('#nav_sub_'+idx+'+div').removeClass('nav_sub_area'+idx);
					$('#nav_sub_'+idx+'+div').hide();
					$('#nav_sub_'+idx+'>img').attr("src","img/head/nav0"+(idx+1)+"_off.png");
				});
			});
			$('#lang_list>li>a').click(function(){
				$('#lang_list>li>a').css({
					'color': 'rgb(51, 51, 51)',
					'text-decoration': 'none',
					'background': 'rgb(255, 255, 255)'
				});
				$(this).css({
					'color': 'rgb(32, 28, 180)',
					'text-decoration': 'underline',
					'background': 'rgb(232, 232, 247)'
				});
				$('#lang_list ul').parent().children('ul').css('display','none');
				$(this).parent().children('ul').css('display','block');
				lang_select_a = $(this).text().replace(/\s/g,'');
			});
			$('#lang_list ul>li>a').click(function(){
				$('#lang_list ul>li>a').css({
					'color': 'rgb(51, 51, 51)',
					'text-decoration': 'none',
					'background': 'rgb(255, 255, 255)'
				});
				$(this).css({
					'color': 'rgb(32, 28, 180)',
					'text-decoration': 'underline',
					'background': 'rgb(232, 232, 247)'
				});
				lang_select_a2 = $(this).text().replace(/\s/g,'');
			});
		});
	});
	function show_lang() {
		$('#div_lang').show();
	}
	function lang_close() {
		$('#div_lang').hide();
	}
	function lang_select() {
		$('#select_lang').text(lang_select_a +" - "+ lang_select_a2);
		lang_close();
	}
	// header 자바스크립트 이벤트
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#top_inner_fade").innerfade({
			animationtype:'fade', 
			speed:750,
			timeout:2000,
			type:'sequence',
			containerheight:'auto'
			
		});//상단 이벤트 슬라이드
				
	});
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#top_inner_fade2").innerfade({
			animationtype:'fade', 
			speed:750,
			timeout:2000,
			type:'sequence',
			containerheight:'auto'
			
		});//중단 이벤트 슬라이드
				
	});
</script>
<style type="text/css">
/* 헤더 css 시작 */
.vertical-align{vertical-align:middle;}
#header li{float:left;}
.clear{clear: both;height: 0;line-height: 0;position: absolute;visibility: hidden;width:0;}
.login_bar{background:url('img/head/bg_top.gif') repeat-x 0 0;}
.section {position: relative; width: 954px; border-left: 1px solid #dbdee1; z-index: 201; margin: 0 auto;}
.section p{background: url(img/head/bg_topGary.gif) repeat 0 0; display: inline-block; height: 30px; border-right: 1px solid #dbdee1; width: 229px;}
.lang_a{height: 30px;font-size: 11px;display: block;line-height: 30px;font-weight: bold;padding: 0 0 0 13px;}
.login_div a{padding: 9px 15px 8px 15px; height: 12px; display: inline-block; font-size: 11px; color: #5e14cc;}
.earth{background: url(img/head/bl_earth.jpg) no-repeat; display: inline-block; width: 18px; height: 18px; margin: 0 0 -4px 0; padding: 0 10px 0 0;}
.lang{color: #666; display: inline-block; padding: 0 27px 0 29px; background: url('img/head/bl_arrow_on.gif') no-repeat right 0; font-weight: normal;}
#div_lang{display: none;border: 1px solid rgb(49, 44, 206);position: absolute;top: 0px;left: -1px;width: 318px;z-index: 200;background: rgb(255, 255, 255);}
#lang_list{background: url('img/head/bg_language.gif') no-repeat 0 0;height: 186px;margin: 6px 0 10px 0;padding: 11px 0 0 0px;position: relative;}
#lang_list li{margin: 0 0px 3px 1px; float: none;}
#lang_list li a {display: block;color: rgb(51, 51, 51);line-height: 20px;width: 119px;font-weight: bold;text-decoration: none;padding: 0px 0px 0px 19px;/* background: url('../img/head/bl_gray.gif') 9px 9px no-repeat; */}
#lang_list ul {position: absolute; top: 11px;right: 1px;display: none;}
#header_main{background: url('img/head/bg_header.jpg') no-repeat center; position: relative;}
.headInner{background: url('img/head/bg_headerInner.jpg') no-repeat; height: 110px; width: 956px; margin:0 auto; position: relative;}
.search{position: absolute;top: 10px;right: 0;width: 155px;}
.frm_span{background: url('img/head/bg_topsearch.png') no-repeat;height: 21px;display: inline-block;}
#frm_search input[type='text']{background: none;border: none;border-radius: 0;vertical-align: middle;width: 118px;padding: 0 0 0 11px;height: 21px;line-height: 19px;font-size: 11px;color: #fff;}
#frm_search input[type='image']{border: none;border-radius: 0;vertical-align: top;}
#head_nav{position: absolute;right: -27px;bottom: 1px;height: 65px;background: url('img/head/bg_nav.gif') no-repeat 0 0;}
.nav_sub {display: none;}
.nav_sub>div {float: left;margin-right: 24px;border-top: 1px solid #dcdad6;}
.nav_sub ul{border-bottom: 1px solid #dcdad6;overflow: hidden;clear: both;width: 176px;padding: 4px 0;}
.airline_ul {border: none;padding: 9px 0 6px 22px;}
.airline_ul li{background: url('img/head/bl_gndLine.gif') no-repeat 2px 9px;clear: both; padding: 0 0 0 16px; line-height: 20px; width: 100%;}
#head_nav span{background: url('img/head/bl_gndArrow.gif') no-repeat 0 1px;position: relative;line-height: 17px;padding: 0 0 0 21px;display: block;}
/* 헤더 css 끝 */
#main {
	width: 100%;
	height: 100%;
	overflow: hidden;
	position: relative;
	
}
#main_top{width:100%; overflow: hidden; height:353px;}
#main_top li{width:100%; height:353px;}
#main_top li .banner{width:100%; height:353px; z-index: 2;
position: absolute;
}
#main_top .banner_1 {
	background-image: url("img/main/banner_1.jpg");
	background-position: center;
	background-repeat: no-repeat;
}

#main_top .banner_2 {
	background-image: url("img/main/banner_2.jpg");
	background-position: center;
	background-repeat: no-repeat;
}

#main_top .banner_3 {
	background-image: url("img/main/banner_3.jpg");
	background-position: center;
	background-repeat: no-repeat;
}

#main_top .banner_4 {
	background-image: url("img/main/banner_4.jpg");
	background-position: center;
	background-repeat: no-repeat;
}

#main_top .banner_5 {
	background-image: url("img/main/banner_5.jpg");
	background-position: center;
	background-repeat: no-repeat;
}



.top_div{width:422px; height:312px; margin-left:234px; margin-top:20px;
z-index:20;position: absolute; background-color: white;
}
.top_div_in{width:80px; height:312px; float: left;
}
.top_div_right{width:334px; height:312px; margin-left: 80px;

}
.top_in_form{width:321px; height:291px;}



.in_grey span{background-image: url("img/main/Sbtn_TTypeL02_2.gif");}
.in_red span{width:124px; height:25px;display:block;
background-image: url("img/main/Sbtn_TTypeL02_2.gif");}
.in_red span a{width:116px; height:25px; padding: 0 15px;
line-height: 25px; color:white; font-weight: bold;
}
#main_middle{width:976px; height:313px;
margin: 0 auto;
}
.middel_top_div{width:976px; height:80px; margin: 0 auto;
background-image: url("img/main/middle_top.png"); background-repeat: no-repeat;
background-position: center;
}
.middel_top_a{display:block; height:80px;width:100px;
margin-left: 840px; padding-top: 25px;}

.left_table{display: inline-block; margin-left:10px; margin-top:15px;
width:270px; height:210px;}
.table_sail .tr_1{padding-bottom: 10px;}
.table_sail .tr_2{padding-bottom: 10px;}
.table_sail td{font-weight: bold; font-size:14px; height: 23px;}
.table_sail td:nth-child(1){width:110px;}
.table_sail td:nth-child(2){width:50px;}
.table_sail td:nth-child(3){color:red; width:40px;}
.table_sail td:nth-child(4){color:red;font-size:16px;width:100px;font-weight:lighter;;}
.table_sail td:nth-child(4) span{color:black; font-size: 11px;}
.main_middle_ul{display: inline-block; margin-left:40px; 
width:650px; height:195px;}
.banner1{display: inline-block;}
.banner2{display: inline-block;}
#middle_line{height:1px;
background-image:url("img/main/bg_middleInner.jpg");
background-position: bottom; 
}
#main_bottom{width:976px; height:250px;
margin: 0 auto; }
.bottom_left{width:270px; height:195px; display: inline-block;}
.bottom_right{width:650px; height:195px; display: inline-block;
}
/* footer css 시작 */
.clear{clear: both;height: 0;line-height: 0;position: absolute;visibility: hidden;width:0;}
#footer{border-top: 1px solid #ccc;background: #e7e7e2;}
.foot_hr{border-top: 1px solid #ccc;}
.foot li{float: left; padding: 9px 9px 10px 7px; height:14px; letter-spacing: 0px;}
.foot a{font-size: 11px; color: #4c4c4c;}
.foot_li2 {position: absolute;top: -263px; width: 146px;border: 1px solid rgb(153, 153, 153);display: none;background: rgb(255, 255, 255);}
.foot_content{width:956px; padding: 13px 0 15px 0;font-size: 11px;color: #666;}
.foot_margin{margin: 0 auto;}
/* footer css 끝 */
</style>
</head>
<body>
<div id="header">
	<!-- login_bar 시작 -->
	<div class="login_bar">
		<div class="section">
			<!-- 언어 선택공간 시작 -->
			<div>
				<p>
					<a class="lang_a" href="#none" onclick="show_lang();">
						<span>
							<span class="earth"></span>
							<span id="select_lang">Korea - 한국어</span>
							<span class="lang">change</span>
						</span>
					</a>
				</p>
				<div id="div_lang">
					<span style="height: 28px;font-size: 11px;display: block;line-height: 28px;font-weight: bold;padding: 0 0 0 13px;border-bottom: 1px solid #d6d6d6;">
						<span class="earth"></span>
						<span id="select_lang">Korea - 한국어</span>
					</span>
					<div style="padding: 20px 14px;">
						<span style="font-weight: bold;">Select your region and language.</span>
						<ul id="lang_list">
							<li>
								<a href="#">
									Korea
									<ul>
										<li>
											<a href="#">English</a>
										</li>
										<li>
											<a href="#">한국어</a>
										</li>
									</ul>
								</a>
							</li>
							<li>
								<a href="#">
									USA
									<ul>
										<li>
											<a href="#">English</a>
										</li>
										<li>
											<a href="#">한국어</a>
										</li>
									</ul>
								</a>
							</li>
							<li>
								<a href="#">
									China
									<ul>
										<li>
											<a href="#">중국어</a>
										</li>
										<li>
											<a href="#">English</a>
										</li>
										<li>
											<a href="#">한국어</a>
										</li>
									</ul>
								</a>
							</li>
							<li>
								<a href="#">
									Japan
									<ul>
										<li>
											<a href="#">일본어</a>
										</li>
										<li>
											<a href="#">English</a>
										</li>
										<li>
											<a href="#">한국어</a>
										</li>
									</ul>
								</a>
							</li>
						</ul>
						<p style="text-align: right;">
							<span style="background: url('../img/head/Sbtn_TTypeL01_2.gif') no-repeat 0 0;display: inline-block;">
								<a href="#none" onclick="lang_select();" style="background: url('img/head/Sbtn_TTypeR01_2.gif') no-repeat right 0;padding: 0 15px;display: block;height: 25px;line-height: 25px;color: #fff;font-weight: bold;">적용</a>
							</span>
						</p>
					</div>
					<a href="#none" onclick="lang_close();" style="position: absolute;top: 10px;right: 16px;">
						<img src="img/head/btn_close.gif">
					</a>
				</div>
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
						<img src="img/head/logo_h1.png" alt="아시아나 항공">
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
								<input type="image" src="img/head/btn_topsearch.png" onclick="">
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
								<img src="img/head/nav01_off.png">
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
								<img src="img/head/nav02_off.png">
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
								<img src="img/head/nav03_off.png">
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
								<img src="img/head/nav04_off.png">
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
								<img src="img/head/nav05_off.png">
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
	<section id="main"> 
	<!-- 상단슬라이드+div(form) S --> 
	<section id="main_top">
	<div class="main_top_ul">
		<ul id="top_inner_fade">
			<li class="banner_1"><a href="#">
					<div class="banner">
						<span class="hidden">첫번째</span>
					</div>
			</a></li>
			<li class="banner_2"><a href="#">
					<div class="banner">
						<span class="hidden">두번째</span>
					</div>
			</a></li>
			<li class="banner_3"><a href="#">
					<div class="banner">
						<span class="hidden">세번째</span>
					</div>
			</a></li>
			<li class="banner_4"><a href="#">
					<div class="banner">
						<span class="hidden">네번째</span>
					</div>
			</a></li>
			<li class="banner_5"><a href="#">
					<div class="banner">
						<span class="hidden">다섯번째</span>
					</div>
			</a></li>
		</ul>
	</div>
	<div class="top_div">
		<div class="top_div_in">
			<div class="top_div_onc1">
			<a href="#"><img src="img/main/btn_simpleNav01_off.png"></a>
			</div>
			<div class="top_div_onc2">
			<a href="#"><img src="img/main/btn_simpleNav02_off.png"></a>
			</div> 
			<div class="top_div_onc3">
			<a href="#"><img src="img/main/btn_simpleNav03_off.png"></a>
			</div>
			<div class="top_div_onc4">
			<a href="#"><img src="img/main/btn_simpleNav04_off.png"></a>
			</div>
		</div>
		<div class="top_div_right">
			<div class="top_in_form">
				<h4>왕복</h4>
					<div class="in_formset">
					
					</div>
				<h4>편도</h4>
					<div class="in_formset">
					
					</div>
				<div>
				<a href="#">기타<img class="vertical-align" src="img/main/bl_arrowGray.gif"></a>
				</div>
				<span class="in_grey"><a href="#">마일리지항공권</a></span>
				<div class="in_red">
				<span><a href="#">항공권 조회하기</a></span>
				</div>
			</div>
		</div>
	</div>
	</section>
	 <!-- 상단슬라이드+div(form) E --> 
	 <!--  middle top line S -->
	 <div id="middle_line"></div>
	 <!--  middle top line E -->
	 <!-- 중간ul+이벤트슬라이드 S --> 
	<section id="main_middle"> 
		<!-- 중간 div 창 S -->
		<div class="middel_top_div">
		<a  class="middel_top_a" href="#"><img src="img/main/middle_top_a.png"></a>		
		</div>
		<!-- 중간 div 창 E -->
		<!-- left 특가항공권 S-->
		<div class="left_table">
			<table class="table_sail">
			<tr>
			<td class="tr_1" colspan="4">
			<img src="img/main/text_worldPrice.jpg"><a href="#"><img src="img/main/btn_addView.gif"></a>
			</td>
			</tr>
			<tr>
			<td><a href="#">칭다오[靑鳥]</a></td>
			<td><img src="img/main/dot.gif"></td>
			<td>\</td>
			<td>252,100<span>부터</span></td>
			</tr>
			<tr>
			<td><a href="#">후쿠오카</a></td>
			<td><img src="img/main/dot.gif"></td>
			<td>\</td>
			<td>284,400<span>부터</span></td>
			</tr>
			<tr>
			<td><a href="#">오사카/간사이</a></td>
			<td><img src="img/main/dot.gif"></td>
			<td>\</td>
			<td>334,800<span>부터</span></td>
			</tr>
			<tr>
			<td><a href="#">호찌민</a></td>
			<td><img src="img/main/dot.gif"></td>
			<td>\</td>
			<td>252,100<span>부터</span></td>
			</tr>
			<tr>
			<td class="tr_2"><a href="#">시애틀</a></td>
			<td class="tr_2"><img src="img/main/dot.gif"></td>
			<td class="tr_2">\</td>
			<td class="tr_2">989,100<span>부터</span></td>
			</tr>
			<tr>
			<td colspan="4">
			<img src="img/main/middle_text.jpg">
			</td>
			</tr>
			</table>
		</div>
		<!-- left 특가항공권 E-->
		<!-- right event banner S -->
		<div class="main_middle_ul">
		<ul id="top_inner_fade2">
			<li class="banner_1">
					<div class="banner1">
						<span class="hidden">첫번째1</span>
						<a href="#"><img src="img/main/mid_ba_1_1.jpg"></a>
					</div>
					<div class="banner2">
						<span class="hidden">첫번째2</span>
						<a href="#"><img src="img/main/mid_ba_1_2.jpg"></a>
					</div>
			</li>
			<li class="banner_2">
					<div class="banner1">
						<span class="hidden">첫번째1</span>
						<a href="#"><img src="img/main/mid_ba_2_1.jpg"></a>
					</div>
					<div class="banner2">
						<span class="hidden">첫번째2</span>
						<a href="#"><img src="img/main/mid_ba_2_2.jpg"></a>
					</div>
			</li>
			<li class="banner_3">
					<div class="banner1">
						<span class="hidden">첫번째1</span>
						<a href="#"><img src="img/main/mid_ba_3_1.jpg"></a>
					</div>
					<div class="banner2">
						<span class="hidden">첫번째2</span>
						<a href="#"><img src="img/main/mid_ba_3_2.jpg"></a>
					</div>
			</li>
			<li class="banner_4">
					<div class="banner1">
						<span class="hidden">첫번째1</span>
						<a href="#"><img src="img/main/mid_ba_4_1.jpg"></a>
					</div>
					<div class="banner2">
						<span class="hidden">첫번째2</span>
						<a href="#"><img src="img/main/mid_ba_4_2.jpg"></a>
					</div>
			</li>
			<li class="banner_5">
					<div class="banner1">
						<span class="hidden">첫번째1</span>
						<a href="#"><img src="img/main/mid_ba_5_1.jpg"></a>
					</div>
					<div class="banner2">
						<span class="hidden">첫번째2</span>
						<a href="#"><img src="img/main/mid_ba_5_2.jpg"></a>
					</div>
			</li>
		</ul>
	</div>
	<!-- right event banner E -->
	</section>
	 <!-- 중간ul+이벤트슬라이드 E --> 
	<!--  middle bottom line S -->
	 <div id="middle_line"></div>
	<!--  middle bottom line S --> 
	 <!-- 하단뉴스ul+ 바로가기배너 S -->
	<section id="main_bottom">
		<div class="bottom_left">
		<h2><img src="img/main/text_news.jpg"><img src="img/main/btn_addView.gif"></h2>
			<ul>
			<li><a href="#"><img src="img/main/btnJ_rolinum-num_on.png" style="width:0.5em;vertical-align:middle;">2014년 12월 국제선 유류할증료</a></li>
			<li><a href="#"><img src="img/main/btnJ_rolinum-num_on.png" style="width:0.5em;vertical-align:middle;">2014년 12월 국내선 유류할증료</a></li>
			<li><a href="#"><img src="img/main/btnJ_rolinum-num_on.png" style="width:0.5em;vertical-align:middle;">동계 기간 국제선 스케줄 변경 안내</a></li>
			<li><a href="#"><img src="img/main/btnJ_rolinum-num_on.png" style="width:0.5em;vertical-align:middle;">안전한 여행을 위한 기내 불법행위 금지 안내</a></li>
			<li><a href="#"><img src="img/main/btnJ_rolinum-num_on.png" style="width:0.5em;vertical-align:middle;">홈페이지 개인정보취급방침 변경 안내</a></li>
			</ul>
		</div>
		<div class="bottom_right">
		<img src="img/main/main_bottom_right.png">
		</div>
	 </section>
	 <!-- 하단뉴스ul+ 바로가기배너 S --> 
</section>
<!-- <div style="height: 5px;">
</div> -->
<!-- footer 시작 -->
<div id="footer">
	<!-- footer nav bar 시작 -->
	<div class="foot_hr">
		<div class="foot_margin" style="width:956px; height: 34px;">
			<ul class="foot foot_li1">
				<li><a href="#">미디어 룸</a></li>
				<li><a href="#">사이트맵</a></li>
				<li><a href="#">인터넷 도우미</a></li>
				<li><a href="#">로그인 설정 안내</a></li>
				<li><a href="#">운송약관</a></li>
				<li><a href="#">홈페이지 이용약관</a></li>
				<li>
					<a href="#" style="line-height: 26px;height: 23px;background: url(img/foot/bl_auth.png) no-repeat 0px 1px;width: 19px;display: inline-block;vertical-align: -5px;margin-top: -5px;"></a>
					<a href="#">개인정보 취급방침</a>
				</li>
			</ul>
			<div id="family" style="position: relative; float: right; padding: 7px 0 0 0; z-index: 10;">
				<a href="#" style="display: inline-block;width: 134px; height: 20px; padding: 0px 0px 13px 14px;font-size: 11px;color: rgb(102, 102, 102);vertical-align: middle;line-height: 20px;background: url(../img/bg_family.gif) 0px 0px no-repeat;">패밀리사이트</a>
				<ul class="foot foot_li2">
					<li><a href="#">아시아나 380</a></li>
					<li><a href="#">아시아나 드림윙즈</a></li>
					<li><a href="#">기내면세품</a></li>
					<li><a href="#">인재채용</a></li>
					<li><a href="#">사회공헌/윤리경영</a></li>
					<li><a href="#">서비스컨설팅</a></li>
					<li><a href="#">아시아나카고</a></li>
					<li><a href="#">아시아나 샵</a></li>
					<li><a href="#">아시아나 구매포털</a></li>
					<li><a href="#">스타일라이언스</a></li>
				</ul>
				<a href="#">
					<img src="img/foot/btn_familygo.gif">
				</a>
			</div>
		</div>
	</div>
	<!-- footer nav bar 끝 -->
	<!-- footer content 시작 -->
	<div class="foot_hr" style="position: relative;">
		<div class="foot_content foot_margin">
			<address style="line-height:16px;font-size:11px;">
				<strong style="color:#333;">아시아나항공(주)</strong>
				대표이사 사장 김수천  |  (우) 157-713 서울시 강서구 오정로 443-83 (오쇠동)
				<span class="" style="margin-left:10px;">
					<a href="#" onclick="" title="새창">지도</a>
				</span>
				<span class="">
					<a href="#" onclick="">지점연락처</a>
				</span>
				<span class="">
					<a href="#" onclick="" title="새창">사업자정보 확인</a>
				</span>
				<br>
				예약  1588-8000 / 02-2669-8000  |  아시아나클럽  1588-8180 / 02-2669-8180  |  <a href="" target="_blank" style="color:#666; font-size:11px; line-height:16px; font-weight:normal; display:inline-block; margin:-2px 0 0; padding-right:15px; text-decoration:underline; background:url() no-repeat right bottom ;">이메일문의</a>
				<br>
				사업자등록번호  104-81-17480  |  통신판매업 신고번호 제 16-2822  |  개인정보관리책임자 여객마케팅 상무 송석원
				<br>
				호스팅 서버 위치 : 아시아나IDT(주) 전산센터(서울 강서구 오쇠동)
				<p style="color:#333;padding:5px 0 0 0;">© Asiana Airlines Inc. All Rights Reserved.</p>
			</address>
			<a href="#" style="position:absolute; top: 25px; right: 250px;">
				<img src="img/foot/sb_kumhoasiana_2.jpg">
			</a>
		</div>
	</div>
	<!-- footer content 끝 -->
	<!-- footer under_logo 시작 -->
	<div class="foot_hr">
		<div class="foot_margin" style="width: 956px; padding: 20px 0 36px 0;">
			<img src="img/foot/sb_airlinetheyear.jpg" style="margin-right: 195px;">
			<img src="img/foot/sb_i_2.jpg" style="margin-top: 8px; margin-right: 95px;">
			<a href="#">
				<img src="img/foot/sb_starmember_2.jpg">
			</a>
		</div>
	</div>
	<!-- footer 이벤트 -->
	<script type="text/javascript">
	$(function(){
		$('#family').mouseout(function(){
			$('.foot_li2').css('display','none');
		}).mouseover(function(){
			$('.foot_li2').css('display','block');
		});
	});
	</script>
	<!-- footer under_logo 끝 -->
</div>
<!-- footer 끝 -->
</body>
</html>