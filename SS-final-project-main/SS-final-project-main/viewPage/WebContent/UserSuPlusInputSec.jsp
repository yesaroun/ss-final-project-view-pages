<!--
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추가정보2</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/main.css" />
</head>
<body>
	<!-- ○ 상단 네비게이션 include -->
	<jsp:include page="./nav.jsp"></jsp:include>

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
							style="font-size: 17pt; width: 100%;"
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
					<table class="table">
						<tbody>
							<!-- 계정 정보 -->
							<tr>
								<th style="text-align: center;" class="sign-up-title">지역 1차</th>
								<th style="text-align: center;" class="sign-up-title">지역 2차</th>
							</tr>
									
							<tr>
								<td style="text-align: center;">
									<select class="form-control selectpicker">
										<option value="none" selected="selected">==선택==</option>
										<option value="0">서울</option>
										<option value="1">경기</option>
										<option value="2">생략</option>
									</select>
								</td>
								<td style="text-align: center;">
									<select class="form-control selectpicker">
										<option value="none" selected="selected">==선택==</option>
										<option value="0">중구</option>
										<option value="1">강남구</option>
										<option value="2">생략</option>
									</select>
								</td>
							</tr>
							
							<!-- 계정 정보 -->
							<tr>
								<th style="text-align: center;" class="sign-up-title">직업 1차</th>
								<th style="text-align: center;" class="sign-up-title">직업 2차</th>
							</tr>
									
							<tr>
								<td style="text-align: center;">
									<select class="form-control selectpicker">
										<option value="none" selected="selected">==선택==</option>
										<option value="0">IT/개발</option>
										<option value="1">교육</option>
										<option value="2">생략</option>
									</select>
								</td>
								<td style="text-align: center;">
									<select class="form-control selectpicker">
										<option value="none" selected="selected">==선택==</option>
										<option value="0">프론트엔드</option>
										<option value="1">빅데이터</option>
										<option value="2">생략</option>
									</select>
								</td>
							</tr>
							
						</tbody>
					</table>
					<button type="submit" class="btn btn-primary mb-3" style="background-color: #9b9b9b; float: left;">이전</button>
					<button id="next-btn" type="submit" class="btn btn-primary mb-3" style="background-color: #1fa766; float: right;">다음</button>
					<div id="errMsg" style="color: red; display: none;">필수 입력 사항을 모두 입력해야 합니다.</div>
				</form>
            </div>
		</div>
    </div>

    <script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>

</body>
</html>