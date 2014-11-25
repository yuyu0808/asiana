<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
Calendar cal = Calendar.getInstance();
String strYear = request.getParameter("year");
String strMonth = request.getParameter("month");

int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);
 

if(strYear != null) {
	year = Integer.parseInt(strYear);
	month = Integer.parseInt(strMonth);
}
//년도/월 셋팅
cal.set(year, month, 1);
int startDay = cal.getMinimum(java.util.Calendar.DATE);
int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
int newLine = 0;

//오늘 날짜 저장.
Calendar todayCal = Calendar.getInstance();
SimpleDateFormat sdf = new SimpleDateFormat("yyyMMdd");
int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));
 
%>
<html>
<HEAD>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script type="text/javascript">
	function select_date(date){
		alert(date);
	}
</script>
<style TYPE="text/css">
body{
	margin: 0 auto;
	padding: 0;
}

td {
	font-family: "돋움";
	font-size: 9pt;
	color: #595959;
}

th {
	font-family: "돋움";
	font-size: 9pt;
	color: #000000;
}

select {
	font-family: "돋움";
	font-size: 9pt;
	color: #595959;
}

.divDotText {
	overflow: hidden;
	text-overflow: ellipsis;
}

A:link {
	font-size: 9pt;
	font-family: "돋움";
	color: #000000;
	text-decoration: none;
}

A:visited {
	font-size: 9pt;
	font-family: "돋움";
	color: #000000;
	text-decoration: none;
}

A:active {
	font-size: 9pt;
	font-family: "돋움";
	color: red;
	text-decoration: none;
}

A:hover {
	font-size: 9pt;
	font-family: "돋움";
	color: red;
	text-decoration: none;
}
</style>
</HEAD>
<BODY>
	<form name="calendarFrm" id="calendarFrm" action="" method="post">
		<DIV id="content">
			<!--날짜 네비게이션  -->
			<table width="210px" border="0" cellspacing="1" cellpadding="1" bgcolor="#F3F9D7" style="border: 1px solid #CED99C">
				<tr>
					<td height="60">
						<table width="230px" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td align="center"><a
									href="<c:url value='calendar.jsp' />?year=<%=year-1%>&month=<%=month%>"
									target="_self"> <b>&lt;&lt;</b> <!-- 이전해 -->
								</a> <%if(month > 0 ){ %> <a
									href="<c:url value='calendar.jsp' />?year=<%=year%>&month=<%=month-1%>"
									target="_self"> <b>&lt;</b> <!-- 이전달 -->
								</a> <%} else {%> <b>&lt;</b> <%} %> &nbsp;&nbsp; <%=year%>년 <%=month+1%>월
									&nbsp;&nbsp; <%if(month < 11 ){ %> <a
									href="<c:url value='calendar.jsp' />?year=<%=year%>&month=<%=month+1%>"
									target="_self"> <!-- 다음달 --> <b>&gt;</b>
								</a> <%}else{%> <b>&gt;</b> <%} %> <a
									href="<c:url value='calendar.jsp' />?year=<%=year+1%>&month=<%=month%>"
									target="_self"> <!-- 다음해 --> <b>&gt;&gt;</b>
								</a></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<br>
			<table border="0" cellspacing="1" cellpadding="1" bgcolor="#FFFFFF">
				<THEAD>
					<TR bgcolor="#CECECE">
						<TD width='30px'>
							<DIV align="center">
								<font color="red">일</font>
							</DIV>
						</TD>
						<TD width='30px'>
							<DIV align="center">월</DIV>
						</TD>
						<TD width='30px'>
							<DIV align="center">화</DIV>
						</TD>
						<TD width='30px'>
							<DIV align="center">수</DIV>
						</TD>
						<TD width='30px'>
							<DIV align="center">목</DIV>
						</TD>
						<TD width='30px'>
							<DIV align="center">금</DIV>
						</TD>
						<TD width='30px'>
							<DIV align="center">
								<font color="#529dbc">토</font>
							</DIV>
						</TD>
					</TR>
				</THEAD>
				<TBODY>
					<TR>
					<%
					//처음 빈공란 표시
					for(int index = 1; index < start ; index++ ) {
					%>
						<TD >&nbsp;</TD>
					<%
					newLine++;
					}
					for(int index = 1; index <= endDay; index++) {
						String color = "";
						if(newLine == 0) {
							color = "RED";
						} else if(newLine == 6) {
							color = "#529dbc";
						} else {
							color = "BLACK";
						};
						String sUseDate = Integer.toString(year); 
						sUseDate += Integer.toString(month+1).length() == 1 ? "0" + Integer.toString(month+1) : Integer.toString(month+1);
						sUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index) : Integer.toString(index);
						int iUseDate = Integer.parseInt(sUseDate);
						String backColor = "#EFEFEF";
						if(iUseDate == intToday ) {
							backColor = "#c9c9c9";
						}
						%>
							
							<TD valign='top' align='left' height='40px' bgcolor='<%=backColor %>' nowrap>
							<a href='#none' onclick="select_date(<%=iUseDate%>);">
								<font color='<%=color%>'><%=index %></font>
							</a>  
							</TD>
						<% 
						newLine++;
						if(newLine == 7) {
						%>
							</TR>
							<%
							if(index <= endDay) {
							%>
							<TR>
							<%
							}
							newLine=0;
						}
					}
							//마지막 공란 LOOP 
							while(newLine > 0 && newLine < 7){
								%>
  								<TD>&nbsp;</TD>
  								<%
								newLine++;
							}
							%>
					</TR>
				</TBODY>
			</TABLE>
		</DIV>
	</form>
</BODY>
</HTML>