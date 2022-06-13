<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 가계부 지출 내역</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/main.css" />
</head>
<body>
	<!-- 상단 네비게이션바 -->
	<jsp:include page="./guestNavTerm.jsp"></jsp:include>
	    
	<div class="container mt-3">
      	<div class="row">
      		<div class="col-12" style="text-align: center;">
    			<h2>이번달 지출</h2>
    		</div>
	    </div>
	    <div class="row">
	    	<div class="col-12">
	    		2022년 5월 지출 합계 : 1,300,000 원
	    	</div>
	    </div>
	    <div class="row mt-3" >
	    	<div class="col-12" >
	    		<table class="table table-striped" >
			        <thead>
			            <tr>
			                <th class="mobile" style="width: 120px; text-align: center;">날짜</th>
			                <th class="mobile" style="width: 120px; text-align: center;">1차 분류</th>
			                <th style="width: 120px; text-align: center;">2차 분류</th>
			                <th class="mobile" style="text-align: center;">상세내역</th>
			                <th style="width: 200px; text-align: center;">금액</th>
			            </tr>
			        </thead>
			        <tbody>
			            <tr>
			                <td class="mobile" style="text-align: center;">2022-05-01</td>
			                <td class="mobile" style="text-align: center;">식비</td>
			                <td style="text-align: center;">외식</td>
			                <td style="text-align: center;">족발집에서</td>
			                <td class="mobile" style="text-align: center;">20,000원</td>
			            </tr>
			            <tr>
			                <td class="mobile" style="text-align: center;">2022-05-05</td>
			                <td class="mobile" style="text-align: center;">식비</td>
			                <td style="text-align: center;">커피/음료</td>
			                <td style="text-align: center;">오늘도 엔제리너스</td>
			                <td class="mobile" style="text-align: center;">12,000원</td>
			            </tr>
			            <tr>
			                <td class="mobile" style="text-align: center;">2022-05-10</td>
			                <td class="mobile" style="text-align: center;">식비</td>
			                <td style="text-align: center;">간식</td>
			                <td style="text-align: center;">편의점</td>
			                <td class="mobile" style="text-align: center;">3,000원</td>
			            </tr>
			            <tr>
			                <td class="mobile" style="text-align: center;">2022-05-25</td>
			                <td class="mobile" style="text-align: center;">식비</td>
			                <td style="text-align: center;">주식</td>
			                <td style="text-align: center;"></td>
			                <td class="mobile" style="text-align: center;">10,000원</td>
			            </tr>
			            <tr>
			                <td class="mobile" style="text-align: center;">2022-05-26</td>
			                <td class="mobile" style="text-align: center;">식비</td>
			                <td style="text-align: center;">주식</td>
			                <td style="text-align: center;">회식~~</td>
			                <td class="mobile" style="text-align: center;">50,000원</td>
			            </tr>
			        </tbody>
			    </table>	
	    	</div>
	    </div>
	    <div class="row">
	    	<div class="col-12">
	    		<a href="#" class="btn btn-primary float-right"
	         	style="background-color: #1fa766;">내 가계부로 돌아가기</a>
	    	</div>
	    </div>
    </div>	


	<script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>