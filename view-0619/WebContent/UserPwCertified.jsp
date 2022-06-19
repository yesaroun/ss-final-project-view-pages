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
<link rel="stylesheet" href="./css/main.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>

	

<script type="text/javascript">


	$(function()
	{
		// 테스트 중이라 required 속성 제거했지만 통합할 때 넣어주기 ★
	
		$("#goSMS").click(function()
		{
			// 휴대폰 번호 값 받아서 phoneNum 으로 일괄적으로 하이픈 적용
			var phoneNum = document.getElementById("user_tel").value;
			
			phoneNum = $.trim(phoneNum); 			// 앞뒤 공백제거
			phoneNum = phoneNum.replace(/-/gi, ""); // - 하이픈 제거
			phoneNum = phoneNum.replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, "$1-$2-$3");
			user_tel = phoneNum;
			
			//alert(url_tel);	
			
			// 인증번호 ajax/controller 나중에 업데이트
			
			alert("인증번호가 발송되었습니다. 인증번호는 345612 입니다.");
			
		});
		
		$("#confirmBnt").click(function()
		{
			alert("인증되었습니다.");
		});
		
		$("#nextBtn").click(function()
		{
			$("#findpw").submit();
		});
	});

</script>

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
                <form action="UserPwCertifiedOk.jsp" method="post" class="pt-3 md-3" id="findpw" style="max-width: 720px">
                    <div class="row form-group">
						<div class="col-8">
							<label>이름</label>
							<input type="text" id="user_name" name="user_name" class="form-control" required placeholder="이름을 입력해주세요.">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-8">
							<label>아이디</label>
							<input type="text" id="user_id" name="user_id" class="form-control" required placeholder="가입하신 아이디를 입력해주세요.">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-8">
							<label>휴대폰 번호</label>
							<input type="text" id="user_tel" name="user_tel" class="form-control" required placeholder="휴대폰 번호를 - 없이 입력해주세요.">
						</div>
						<div class="col-4">
							<br>
							<button type="button" id="goSMS" name="goSMS" class="btn btn-primary mt-2" style="background-color: #EFD345; float: right; min-width: 90px;">sms 전송</button>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-8">
							<label>인증번호</label>
							<input type="text" class="form-control" required placeholder="SMS로 수신된 인증 번호 5자리를 입력해주세요.">
						</div>
						<div class="col-4">
							<br>
							<button type="button" id="confirmBnt" name="confirmBnt" class="btn btn-primary mt-2" style="background-color: #EFD345; float: right; min-width: 90px;">인증</button>
						</div>
					</div>
					<br>
					<button id="nextBtn" type="submit" class="btn btn-primary mb-3" style="background-color: #1fa766; float: right;">다음</button>
				</form>
            </div>
		</div>
    </div>

    <script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>