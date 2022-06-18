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
<title>추가정보1</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/main.css" />
</head>
<body>
	<!-- ○ 상단 네비게이션 include -->
	<jsp:include page="./UserNav.jsp"></jsp:include>

    <!-- 회원가입 상단 아이콘 -->
	<div class="container-fixed m-4">
        <div class="row sign-up-form">
            <h2 id="sign-up-intro">회원가입 <span id="sign-up-moneylog">MONEYLOG</span></h2>
        </div>
        <div class="row sign-up-form">
            <div class="sign-up-process col-12">
                <div class="row">
                    <div class="col-3 text-center bg-light p-3">
                        <img src="./img2/file-text-white.svg" alt="약관동의아이콘">
                        <br>
                        약관동의
                    </div>
                    <div class="col-3 text-center bg-light p-3">
                        <img src="./img2/search-white.svg" alt="본인인증아이콘">
                        <br>
                        본인인증
                    </div>
                    <div class="col-3 text-center bg-light p-3">
                        <img src="./img2/user-plus-black.svg" alt="회원정보입력">
                        <br>
                        회원정보 입력
                    </div>
                    <div class="col-3 text-center bg-light p-3">
                        <img src="./img2/user-check-white.svg" alt="">
                        <br>
                        회원가입 완료
                    </div>
                </div>
            </div>
        </div>

		<div class="row mt-3 sign-up-form">
			<div class="col-12">
				<h3 id="sign-up-info">추가정보</h3>
			</div>
		</div>

		<div class="row sign-up-form mt-3">
			<div class="col-12">
				<div class="list-group">
					<!-- 머니리뷰 프로그레스바 -->
					<div class="progress" style="max-width: 600px; background-color:#9b9b9b;">
	
						<div class="progress-bar progress-bar bg-warning progress-bar-animated"
							role="progressbar"
							style="font-size: 17pt; width: 66%;"
							aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
						</div>
					</div>
				</div>
			</div>
		</div>

        <div class="row bg-light sign-up-form mt-3">
			<div class="sign-up-process col-12">
                <form class="pt-3 md-3" method="post" id="plusInputForm" style="max-width: 720px">
					<div class="form-group">
						<label class="sign-up-title">주민등록번호</label>
						<div class="row">
							<input type="text" class="form-control col-4 mr-1 ml-3  form-checking" placeholder="주민번호 앞자리" required> - <input type="text" class="form-control col-1 ml-1" required> 
							<input type="text" class="form-control col-1" style="text-align: center;" disabled placeholder="*">
							<input type="text" class="form-control col-1" style="text-align: center;" disabled placeholder="*">
							<input type="text" class="form-control col-1" style="text-align: center;" disabled placeholder="*">
							<input type="text" class="form-control col-1" style="text-align: center;" disabled placeholder="*">
							<input type="text" class="form-control col-1" style="text-align: center;" disabled placeholder="*">
							<input type="text" class="form-control col-1" style="text-align: center;" disabled placeholder="*">
						</div>
						
						<table class="table">
							<tbody>
								<!-- 계정 정보 -->
								<tr>
									<th style="text-align: center;" class="sign-up-title">결혼여부</th>
									<th style="text-align: center;" class="sign-up-title">자녀수</th>
								</tr>
								
								<tr>
									<td style="text-align: center;">
										<select class="form-control selectpicker">
											<option value="none" selected="selected">==선택==</option>
											<option value="0">미혼</option>
											<option value="1">기혼</option>
										</select>
									</td>
									<td style="text-align: center;">
										<select class="form-control selectpicker">
											<option value="none" selected="selected">==선택==</option>
											<option value="0">없음</option>
											<option value="1">1명</option>
											<option value="2">2명</option>
											<option value="3">3명 이상</option>
										</select>
									</td>
								</tr>
								
								<!-- 계정 정보 -->
								<tr>
									<th style="text-align: center;" class="sign-up-title">총가구구성원수</th>
									<th style="text-align: center;" class="sign-up-title">주거형태</th>
								</tr>
								
								<tr>
									<td style="text-align: center;">
										<select class="form-control selectpicker">
											<option value="none" selected="selected">==선택==</option>
											<option value="0">1명</option>
											<option value="1">2명</option>
											<option value="2">3명</option>
											<option value="3">4명 이상</option>
										</select>
									</td>
									<td style="text-align: center;">
										<select class="form-control selectpicker">
											<option value="none" selected="selected">==선택==</option>
											<option value="0">월세</option>
											<option value="1">전세</option>
											<option value="2">자가</option>
										</select>
									</td>
								</tr>
								
								<!-- 계정 정보 -->
								<tr>
									<th style="text-align: center;" class="sign-up-title">반려동물</th>
									<th style="text-align: center;" class="sign-up-title">차량운용대수</th>
									
								</tr>
								
								<tr>
									<td style="text-align: center;">
										<select class="form-control selectpicker">
											<option value="none" selected="selected">==선택==</option>
											<option value="0">없음</option>
											<option value="1">1마리</option>
											<option value="2">2마리</option>
											<option value="3">3마리 이상</option>
										</select>
									</td>
									<td style="text-align: center;">
										<select class="form-control selectpicker">
											<option value="none" selected="selected">==선택==</option>
											<option value="0">없음</option>
											<option value="1">1대</option>
											<option value="2">2대</option>
											<option value="3">3대 이상</option>
										</select>
									</td>
								</tr>
							</tbody>
						</table>
					<button type="submit" class="btn btn-primary mb-3" style="background-color: #9b9b9b; float: left;">이전</button>
					<button id="next-btn" type="submit" class="btn btn-primary mb-3" style="background-color: #1fa766; float: right;">다음</button>
					<div id="errMsg" style="color: red; display: none;">필수 입력 사항을 모두 입력해야 합니다.</div>
					</div>
				</form>
            </div>
		</div>
    </div>

    <script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>

</body>
</html>