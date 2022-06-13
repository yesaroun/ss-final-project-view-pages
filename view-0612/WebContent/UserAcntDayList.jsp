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
<title>가계부 당일 내역</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/main.css" />
</head>
<body>
	<!-- 상단 네비게이션바 -->
	<jsp:include page="./UserNav.jsp"></jsp:include>
	    

     <div class="container mt-3">
      	<div class="row">
      		<div class="col-12" style="text-align: center;">
    			<h2>5월 9일 가계부</h2>
    		</div>
	    </div>
		<form class="row mt-3">
				<table class="col-12">
					<tbody>
						<tr>
							<td>
								<select name="division" style="width: 100%;">
									<option value="" selected>구분</option>
									<option value="in">수입</option>
									<option value="out">지출</option>
								</select>
							</td>
							<td>
								<select name="division" style="width: 100%;">
									<option value="" selected>1차</option>
									<option value="mainIn">주수입</option>
									<option value="subIn">부수입</option>
								</select>
							</td>
							<td>
								<select name="division"style="width: 100%;">
									<option value="" selected>2차</option>
									<option value="salary">급여</option>
									<option value="ex">기타</option>
								</select>
							</td>
							<td>
								<input type="text"style="width: 100%;">
							</td>
							<td>
								<input type="text"style="width: 100%;">
							</td>
							<td>
								<button id="next-btn" type="submit" class="btn btn-primary" style="background-color: #1fa766; width: 100%;">등록</button>
							</td>
							<td>
								<img src="img2/icon.png" alt="아이콘" style="width: 35px;">
							</td>
						</tr>
					</tbody>
				</table>
		</form>
	    <div class="row mt-3">
	    	<div class="col-12">
	    		<table class="table table-striped" >
			        <thead>
			            <tr>
			                <th class="mobile" style="width: 120px; text-align: center;">분류</th>
			                <th class="mobile" style="width: 120px; text-align: center;">1차 분류</th>
			                <th style="width: 120px; text-align: center;">2차 분류</th>
			                <th class="mobile" style="text-align: center;">상세내역</th>
			                <th style="width: 200px; text-align: center;">금액</th>
			            </tr>
			        </thead>
			        <tbody>
			            <tr>
			                <td class="mobile" style="text-align: center;">수입</td>
			                <td class="mobile" style="text-align: center;">주수입</td>
			                <td style="text-align: center;">급여</td>
			                <td style="text-align: center;">5월 월급~~</td>
			                <td class="mobile" style="text-align: center;">2,000,000원</td>
			            </tr>
			            <tr>
			                <td class="mobile" style="text-align: center;">수입</td>
			                <td class="mobile" style="text-align: center;">부수입</td>
			                <td style="text-align: center;">기타</td>
			                <td style="text-align: center;">당근마켓에서 책 판매</td>
			                <td class="mobile" style="text-align: center;">12,000원</td>
			            </tr>
			            <tr>
			                <td class="mobile" style="text-align: center;">수입</td>
			                <td class="mobile" style="text-align: center;">부수입</td>
			                <td style="text-align: center;">이자</td>
			                <td style="text-align: center;"></td>
			                <td class="mobile" style="text-align: center;">300,000원</td>
			            </tr>
			            <tr>
			                <td class="mobile" style="text-align: center;">지출</td>
			                <td class="mobile" style="text-align: center;">식비</td>
			                <td style="text-align: center;">외식</td>
			                <td style="text-align: center;">치킨</td>
			                <td class="mobile" style="text-align: center;">100,000원</td>
			            </tr>
			            <tr>
			                <td class="mobile" style="text-align: center;">지출</td>
			                <td class="mobile" style="text-align: center;">식비</td>
			                <td style="text-align: center;">외식</td>
			                <td style="text-align: center;">돈가스</td>
			                <td class="mobile" style="text-align: center;">500,000원</td>
			            </tr>
			        </tbody>
			    </table>	
	    	</div>
	    </div>
		<div class="row">
			<div class="col-12">
				<div class="text-center" style="margin-right: auto; margin-left: auto;">
					<a href="#" class="btn btn-primary"
	         		style="background-color: #1fa766;">내 가계부로 돌아가기</a>
				</div>
			</div>
		</div>
    </div>	

	    
	<script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>