<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	// 데이터 수신
	String sYear = request.getParameter("year");
	String sMonth = request.getParameter("month");
	
	// Calendar 객체 생성
	Calendar cal = Calendar.getInstance();
	
	// 현재 날짜
	int nowYear = cal.get(Calendar.YEAR);
	int nowMonth = cal.get(Calendar.MONTH);
	int nowDay = cal.get(Calendar.DAY_OF_MONTH);
	
	int selectYear = nowYear;
	int selectMonth = nowMonth;
	
	if(sYear != null || sMonth != null)
	{
		selectYear = Integer.parseInt(sYear);
		selectMonth = Integer.parseInt(sMonth);
	}
	
	String yOptions = "";
	for(int year=(selectYear-10); year<=(selectYear+10); year++)
	{
		if(sYear==null && year==nowYear)
			yOptions += "<option value='" + year +"'selected='selected'>" + year + "</option>";
		else if (sYear!=null && Integer.parseInt(sYear)==year)
			yOptions += "<option value='" + year + "'selected='selected'>" + year + "</option>";
		else
			yOptions += "<option value='" + year +"'>" + year + "</option>";
	}
	
	String mOptions = "";
	for (int month=1; month<=12; month++)
	{
		if(sMonth==null && month==nowMonth)
			mOptions += "<option value='" + month + "' selected='selected'>" + month + "</option>";
		else if(sMonth!=null && Integer.parseInt(sMonth)==month)
			mOptions += "<option value='" + month + "' selected='selected'>" + month + "</option>";
		else
			mOptions += "<option value='" + month + "'>" + month + "</options>";
	}
	
	// 월별 날짜
	int[] months = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
	
	if (selectYear%4==0 && selectYear%100!=0 || selectYear%400==0)
		months[1] = 29;
	
	// 총 날 수 누적 변수
	int nalsu;
	
	// 요일
	String[] weekNames = {"일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"};
	
	nalsu = (selectYear-1)*365 + (selectYear-1)/4 - (selectYear-1)/100 + (selectYear-1)/400;
	
	for(int i=0; i<selectMonth-1; i++)
		nalsu += months[i];
	nalsu++;
	int week = nalsu%7;
	int lastDay = months[selectMonth-1];
	
	// 달력 그리기
	String calStr = "";
	calStr += "<table border='1'  class='col-12' id='calendar'>";
	
	// 요일 이름 발생
	calStr += "<tr>";
	for (int i=0; i<weekNames.length; i++)
	{
		if(i==0)									// 일요일
			calStr += "<th style='color:red;'>" + weekNames[i] + "</th>";
		else if(i==6)								// 토요일
			calStr += "<th style='color:blue;'>" + weekNames[i] + "</th>";
		else										// 평일
			calStr += "<th>" + weekNames[i] + "</th>";
	}
	calStr += "</tr>";
	// 빈 칸 공백 td 발생
	calStr += "<tr>";
	for (int i=1; i<=week; i++)
		calStr += "<td></td>";
	
	// 날짜 td 발생
	for (int i=1; i<=lastDay; i++)
	{
		week++;								//-- 날짜가 하루씩 찍힐 때 마다(구성이 이루어질 때 마다) 요일도 함께 1씩 증가~!!!	check~!!!
		
		// 함수 만들어서 날을 넣고 꺼내야함 이거 jstl로 수정하기?		
		if(selectYear==nowYear && selectMonth == nowMonth && i==nowDay && week%7==0) //-- 토요일인 오늘
			calStr += "<td class='nowSat'>"+ i + "<br><span class='mobile'>수입 : 1,200<br>지출 : 1,200</span></td>";
		else if (selectYear==nowYear && selectMonth == nowMonth && i==nowDay && week%7==1) //-- 일요일인 오늘
			calStr += "<td class='nowSun'>" + i + "<br><span class='mobile'>수입 : 1,200<br>지출 : 1,200</span></td>";
		else if(selectYear==nowYear && selectMonth == nowMonth && i==nowDay)		//-- 평일인 오늘
			calStr += "<td class='now'>" + i  + "<br><span class='mobile'>수입 : 1,200<br>지출 : 1,200</span></td>";
		else if (week%7==0)															//-- 오늘이 아닌 토요일
			calStr += "<td class='sat'>" + i + "<br><span class='mobile'>수입 : 1,200<br>지출 : 1,200</span></td>";
		else if (week%7==1)															//-- 오늘이 아닌 일요일
			calStr += "<td class= 'sun'>" + i + "<br><span class='mobile'>수입 : 1,200<br>지출 : 1,200</span></td>";
		else																		//-- 오늘이 아닌 평일
			calStr += "<td>" + i + "<br><span class='mobile'>수입 : 1,200<br>지출 : 1,200</span></td>";
			
		if(week%7 == 0)
			calStr += "</tr><tr>";
	}
	
	// 빈칸 공백 td 발생
	for (int i=0 ; i<=week; i++, week++)
	{
		if (week%7==0)
			break;
		calStr += "<td></td>";
	}
	
	if (week%7!=0)
		calStr += "</tr>";
	
	calStr += "</table>";
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 가계부</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/main.css" />
<script type="text/javascript">
	function formCalendar(obj)
	{
		obj.submit();
	}
</script>
</head>
<body>
	<!-- 상단 네비게이션바 -->
	<jsp:include page="./GuestNavTerm.jsp"></jsp:include>
	
	<div class="container">
		<div class="row" >
			<div class="col-12" >
				<div>
					<span>날짜 선택 &nbsp;</span>
					<form action="" method="post">
						<select id="year" name="year" onchange="formCalendar(this.form)">
							<%=yOptions %>
						</select> 년
						<select id="month" name="month" onchange="formCalendar(this.form)">
							<%=mOptions %>
						</select> 월
					</form>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 m-2" style="text-align: center;">
				<%=selectYear %>년 <%=selectMonth %>월<br />
				<div class="page-header">
					<h1>내 가계부</h1>
				</div>
			</div>
		</div>
		<div class="row">
			<table class="col-6" style="text-align: center;" >
				<tr>
					<th style="color: #f79900; font-size: 30px">
						■ 수입
					</th>
				</tr>
				<tr>
					<td>1,200,000</td>
				</tr>
			</table>
			<table class="col-6" style="text-align: center;" >
				<tr>
					<th style="color: #03a313; font-size: 30px">
						■ 지출	
					</th>
				</tr>
				<tr>
					<td>100,000</td>
				</tr>
			</table>
		</div>
		<div class="row">
			<div class="col-6" style="text-align: left;">
				<button type="submit" class="btn btn-primary" style="background-color: #1fa766;">
					이월
				</button> 
				2,000,000
			</div>
			<div class="col-6" style="text-align: right;">
				<button type="submit" class="btn btn-primary" style="background-color: #1fa766;">
					잔액
				</button> 
				4,000,000
			</div>
		</div>
		
		<div class="row">
			<!-- <div class="col-12" id="calendar"> -->
				<!-- 달력 -->
				<%=calStr %>
		</div>
		
	</div>
	
	
	<!-- 데이터 받기 -->
	<%
	   // 내 수입/지출
	int data1 = 30;
	%>   
	
	<div class="container mt-5 mb-5">
		<div class="row">

        	<!-- 나의 수입대비지출 -->
            <div class="col-11">

            	<div class="list-group">

                	<!-- 나의 수입대비지출 프로그레스바 -->
                    <div class="progress" style="background-color: white;">

                    	<div class="progress-bar progress-bar bg-white progress-bar-animated"
                             role="progressbar"
                             style="width: <%=( data1)-5 %>%;"
                             aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
                        </div>
                        <img style="width: 100px;" src="./img2/duck.gif">
					</div>
                </div>
            </div>
        </div>
     	<div class="row">
            <div class="col-11">

            	<div class="list-group">
                	<!-- 머니리뷰 프로그레스바 -->
                    <div class="progress" style="height: 40px; background-color: #1fa766;">

                    	<div class="progress-bar progress-bar bg-warning progress-bar-animated"
                             role="progressbar"
                             style="font-size: 17pt; width: <%=data1%>%;"
                             aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
                             <%=data1%>%
                        </div>
					</div>
                </div>
            </div>
            <div class="col-1" style="place-items: left; display: grid;">
            	<button type="submit" class="btn btn-primary" style="background-color: #1fa766; height: 40px;">
					리뷰하기
				</button> 
            </div>
        </div>
        <div class="row mt-3">
        	<div class="col-12">
        		<button type="submit" class="btn btn-primary" style="background-color: #1fa766; width: 100%;">
					이번달 분석하기
				</button> 
        	</div>
        </div>
    </div>
	

	<script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>