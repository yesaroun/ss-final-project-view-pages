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
<title>휴대폰 인증 비밀번호 찾기</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/main.css" />

<script src="./js/userTerms.js"></script>
</head>
<body>
	<!-- ○ 상단 네비게이션 include -->
	<jsp:include page="./GuestNav.jsp"></jsp:include>

	<div class="container-fixed m-4">
        <div class="row sign-up-form">
            <h2 id="sign-up-intro">비밀번호찾기 <span id="sign-up-moneylog">MONEYLOG</span></h2>
        </div>

        <div class="row bg-light sign-up-form mt-3">
			<div class="sign-up-process col-12">
                <form class="pt-3 md-3" style="max-width: 720px">
                    <div class="row form-group">
						<div class="col-8">
							<label>이름</label>
							<input type="text" class="form-control" required placeholder="이름을 입력해주세요.">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-8">
							<label>이메일</label>
							<input type="text" class="form-control" required placeholder="가입하신 이메일을 입력해주세요.">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-8">
							<label>휴대폰 번호</label>
							<input type="text" class="form-control" required placeholder="휴대폰 번호를 - 없이 입력해주세요.">
						</div>
						<div class="col-4">
							<br>
							<button type="submit" class="btn btn-primary mt-2" style="background-color: #EFD345; float: right; min-width: 90px;">sms 전송</button>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-8">
							<label>인증번호</label>
							<input type="text" class="form-control" required placeholder="SMS로 수신된 인증 번호 5자리를 입력해주세요.">
						</div>
						<div class="col-4">
							<br>
							<button type="submit" class="btn btn-primary mt-2" style="background-color: #EFD345; float: right; min-width: 90px;">인증</button>
						</div>
					</div>
					<br>
					<button id="next-btn" type="submit" class="btn btn-primary mb-3" style="background-color: #1fa766; float: right;">다음</button>
				</form>
            </div>
		</div>
    </div>

    <script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>