<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>커뮤니티 웹 사이트</title>

<script type="text/javascript">
	function newPage()
	{
	  window.location.href = "./myPwModifyOk.jsp"
	}

</script>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 부트스트랩 CSS 추가하기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/custom.css">
</head>
<body>
	<!-- ○ 상단 네비게이션 include -->
	<jsp:include page="./UserNavMp.jsp"></jsp:include>
	
	<!-- 여백이 없는 반응형 웹을 만들때 container-fluid 사용 -->
    <div class="container-fluid">
    	<div class="row d-flex d-md-block flex-nowrap wrapper">
            <nav class="col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            	<!-- ○ 좌측 메뉴바 include -->
                <jsp:include page="./UserMenuMp.jsp"></jsp:include>
            </nav>
        </div>
		
		<div class="container">
			<div class="row">
						
						
				<!-- 비밀번호 변경 -->
				<div class="col-md-12">
				
					<% String data1 = "test@test.com"; %>
					<div class="list-group">
						<br>
						<h4>비밀번호 변경<small> 현재 비밀번호와 새로운 비밀번호를 입력해주세요</small></h4>
						<div class="list-group-item">
							<div class="list-group">
								<form action="">
									
	            					<b>현재 비밀번호</b>
	            					<input type="password" name="pw" class="text-field form-control" placeholder="비밀번호" />
	            					<span id="result1">비밀번호가 틀렸습니다.</span>
	            					<br><br>
	            					
	            					<b>새 비밀번호</b>
	            					<input type="password" name="pw" class="text-field form-control" placeholder="새 비밀번호" />
	            					<span id="result2">신규 비밀번호는 8~15자의 영문, 숫자 및 특수문자를 모두 혼합하여 설정해주세요.</span>
	            					<br><br>
	            					
	            					<b>새 비밀번호 확인</b>
	            					<input type="password" name="pw" class="text-field form-control" placeholder="새 비밀번호 확인" />
	            					<span id="result3">비밀번호와 확인값이 일치하지 않습니다.</span>
	            					<br><br>
	            					
									<button type="button" class="btn btn-primary" id="login-btn" style="width:100%; background-color: #1fa766;"
									onclick="newPage()"> 확인 </button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 밑에 공백만드는용 ㅠ -->
			<br><br><br><br><br><br><br><br><br><br>
			<br><br><br><br><br><br><br><br><br><br>
			<br><br><br><br><br><br><br><br><br><br>
			
		</div>
	</div>


	<footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">
		머니로그의 푸터 부분입니다. </footer>


	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery-3.2.1.min.js"></script>
	<!-- Popper 자바스크립트 추가하기 -->
	<script src="./js/popper.min.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="./js/bootstrap.min.js"></script>
	<!-- MDB 라이브러리 추가하기 <== chart!!!! **** -->
	<script src="./js/mdb.min.js"></script>

</body>
</html>