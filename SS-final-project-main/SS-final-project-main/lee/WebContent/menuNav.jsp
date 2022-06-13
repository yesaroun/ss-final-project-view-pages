<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>커뮤니티 웹 사이트</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/custom.css">
</head>
<body>
	<div class="list-group border-0 card text-center text-md-left">
		<a href="./index.html" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
		    <img style="width: 20px;" src="./img2/home.svg"><span class="d-none d-md-inline"> 메인</span>
		</a>
		<a href="#usermenu" class="list-group-item d-inline-block collapsed" data-parent="#sidebar" data-toggle="collapse" aria-expanded="false">
		    <img style="width: 20px;" src="./img2/user.svg"><span class="d-none d-md-inline"> 회원 관리</span>
		</a>
		<div class="collapse" id="usermenu">
		    <a href="./userJoin.html" class="list-group-item" data-parent="#sidebar"> 회원가입</a>
		    <a href="./userLogin.html" class="list-group-item" data-parent="#sidebar"> 로그인</a>
		    <a href="./userEdit.html" class="list-group-item" data-parent="#sidebar"> 회원정보수정</a>
		    <a href="./userLogout.html" class="list-group-item" data-parent="#sidebar"> 로그아웃</a>
		</div>
		<a href="./board.html" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
		    <img style="width: 20px;" src="./img2/board.svg"><span class="d-none d-md-inline"> 자유 게시판</span>
		</a>
		<a href="./qna.html" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
		    <img style="width: 20px;" src="./img2/qna.svg"><span class="d-none d-md-inline"> Q & A</span>
		</a>
		<a href="#search" class="list-group-item d-inline-block collapsed" data-parent="#sidebar" data-toggle="collapse" aria-expanded="false">
		    <img style="width: 20px;" src="./img2/search.svg"><span class="d-none d-md-inline"> 검색</span>
		</a>
		<div class="collapse" id="search">
		    <div class="input-group p-2" style="background-color: #1c1c1c;">
		            <input type="text" class="form-control" placeholder="내용을 입력하세요.">
		        </div>
		    </div>
		    
		</div>
                
                
    <script src="./js/jquery-3.2.1.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
</body>
</html>
<!--사이드바 에서 글자들 span태그에 넣은 이유는 그렇게 해야 크기 줄였을때 사라지고 아이콘만 나옴-->
<!-- mt-3: margin-top -->