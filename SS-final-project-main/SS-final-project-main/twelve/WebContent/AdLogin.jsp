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
<title>로그인</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/main.css" />
</head>
<body>
	<!-- ○ 상단 네비게이션 include -->
	<jsp:include page="./GuestNavTerm.jsp"></jsp:include>

	<div class="container">
		<div class="row pt-5" style="place-items: center; display: grid;">
			<div style="text-align: center;">
				<h1 id="login-main">MONEYLOG</h1>
			</div>
		</div>
		<div class="row pt-2" style="place-items: center; display: grid;">
			<div id="login-form" style="place-items: center; display: grid;">
				<form action=""> 
					<input type="text" name="id" class="text-field form-control" placeholder="아이디" />
                    <input type="password" name="pw" class="text-field form-control" placeholder="비밀번호" />
					<button type="submit" class="btn btn-primary" id="login-btn" style="background-color: #1fa766;">관리자 로그인</button>
				</form>
			</div>
		</div>
	</div>
	<script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>