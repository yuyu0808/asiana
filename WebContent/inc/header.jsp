<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/reset.css">
<link rel="stylesheet" type="text/css" href="../css/header.css">
<script type="text/javascript">
	function a_click(){
		alert('a');
	}
</script>
</head>
<body>
<div id="header">
	<!-- login_bar 시작 -->
	<div class="login_bar">
		<div>
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
			<div style="position: absolute; top:0px; right:0;">
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
						<li></li>
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