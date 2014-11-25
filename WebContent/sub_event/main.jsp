<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- wrap 시작 -->
<div id="wrap">
	<!-- header 시작 -->
	<%@include file="../inc/header.jsp" %>
	<!-- header 끝 -->
	<!-- section 시작 -->
	<section id="main">
		<div id="locationBox"></div>
		<div id="containerBox">
			<div id="container" style="width: 956px;margin: 0 auto;position: relative;">
				<%@include file="aside.jsp" %>
			</div>
		</div>
	</section>
	<!-- section 끝 -->
</div>
<!-- wrap 끝 -->
</body>
</html>