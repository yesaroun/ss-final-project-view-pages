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
<title>이용약관</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/main.css" />

<script src="./js/userTerms.js"></script>
</head>
<body>
	<!-- ○ 상단 네비게이션 include -->
	<div class="container-fixed">
		<jsp:include page="./UserNav.jsp"></jsp:include>
	</div>
	

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
				<h3 id="sign-up-info">기본정보</h3>
			</div>
		</div>

		<div class="row sign-up-form mt-3">
			<div class="col-12">
				<div class="list-group">
					<!-- 머니리뷰 프로그레스바 -->
					<div class="progress" style="max-width: 600px; background-color:#9b9b9b;">
	
						<div class="progress-bar progress-bar bg-warning progress-bar-animated"
							role="progressbar"
							style="font-size: 17pt; width: 33%;"
							aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
						</div>
					</div>
				</div>
			</div>
		</div>

        <div class="row bg-light sign-up-form mt-3">
			<div class="sign-up-process col-12">
                <form class="pt-3 md-3" style="max-width: 720px">
					<div class="form-group">
						<label>아이디</label>
						<input type="text" class="form-control" placeholder="아이디를 입력하세요." required>
					</div>
					<div class="form-group">
						<label>비밀번호</label>
						<input type="password" class="form-control" placeholder="비밀번호를 입력하세요." required>
					</div>
					<div class="form-group">
						<label>비밀번호 확인</label>
						<input type="password" class="form-control" placeholder="비밀번호 확인을 입력하세요." required>
					</div>
					<div class="form-group">
						<label>이름</label>
						<input type="text" class="form-control" placeholder="이름을 입력하세요." required>
					</div>
					<div class="form-group">
						<label>전화번호</label>
						<input type="text" class="form-control" placeholder="이름을 입력하세요.">
					</div>
					<button id="next-btn" type="submit" class="btn btn-primary mb-3" style="background-color: #1fa766; float: right; ">다음</button>
				</form>
            </div>
		</div>
    </div>

    <script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>