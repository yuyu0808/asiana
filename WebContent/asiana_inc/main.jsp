<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- header 시작 -->
	<header>
		<jsp:include page="../asiana_inc/header.jsp" />
	</header>
	<!-- header 끝 -->
	<!-- section 시작 -->
	<section id="main">
		<!-- 헤더와 메인 사이 로케이션 박스 시작 -->
		<div id="locationBox"></div>
		<!-- 헤더와 메인 사이 로케이션 박스 끝 -->
		<!-- 메인 시작 -->
		<div id="containerBox">
			<div id="container" style="width: 956px;margin: 0 auto;position: relative;">
				<!-- aside(메인 왼쪽) 시작 -->
				<jsp:include page="aside.jsp"></jsp:include>
				<!-- aside(메인 왼쪽) 끝 -->
				<!-- 메인 오른쪽 -->
				
			</div>
		</div>
		<!-- 메인 끝 -->
	</section>
	<!-- section 끝 -->
	<!-- footer 시작 -->
	
<!-- footer 끝 -->
</body>
</html>