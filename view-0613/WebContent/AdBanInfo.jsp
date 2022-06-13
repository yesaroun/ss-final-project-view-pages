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
	  window.location.href = "./adBan.jsp"
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
	<jsp:include page="./AdNavManage.jsp"></jsp:include>
	
	<!-- 여백이 없는 반응형 웹을 만들때 container-fluid 사용 -->
    <div class="container-fluid">
    
    	<div class="row d-flex d-md-block flex-nowrap wrapper">
            <nav class="col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            	<!-- ○ 좌측 메뉴바 include -->
                <jsp:include page="./AdMenuManage.jsp"></jsp:include>
            </nav>
        </div>
	
		<!-- 안내 ===================================================== -->
		<div class="container">
			<div class="row">
				<div class="col">
					<ol class="breadcrumb">
						<li class="active"> 안녕하세요. [ 김태형 ] 관리자님 반갑습니다.</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- 안내 ===================================================== -->
		
		<!-- 헤더 ===================================================== -->
		<header id="header">
			<div class="container p-3 bg-dark text-white">
				<div class="row">
					<div class="col-sm-12">
						
						<!-- 영구정지는 게시글내역 댓글내역 볼필요 없음 -->
						<!-- <div class="btn-group float-left">
							<button type="button" class="btn btn-success dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								상세 정보 ▼</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="./adBanInfo.jsp" style="background-color: #1fa766;">상세 정보</a>
								<a class="dropdown-item" href="./adUserPost.jsp">게시글 내역</a>
								<a class="dropdown-item" href="./adUserCmnt.jsp">댓글 내역</a>
							</div>
						</div> -->
						
						<div class="btn-group float-right">
							<button type="button" class="btn btn-dark" onclick="newPage()"> 돌아가기 </button>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- 헤더 ===================================================== -->
		
		<div class="container">
			<div class="row">
			
				<!-- 계정정보 -->
				<div class="col-md-12">

					<div class="list-group">
						<h4>계정정보<small> 선택한 회원의 기본 계정정보 입니다.</small></h4>
						<div class="list-group-item">
							<div class="list-group">
								<table class="table">
									<tbody>
									
										<!-- 계정 정보 -->
										<tr>
											<th style="width: 120px; text-align: center;">이용자코드</th>
											<th style="width: 80px; text-align: center;">이름</th>
											<th class="mobile" style="width: 120px; text-align: center;">아이디</th>
											<th class="mobile" style="width: 120px; text-align: center;">전화번호</th>
											<th class="mobile" style="width: 120px; text-align: center;">가입일자</th>
										</tr>
										
										<tr>
											<td style="text-align: center;">001001</td>
											<td style="text-align: center;">이윤윤</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">010-0000-0000</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
										</tr>
								
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
						
				
				<!-- 영구정지 회원은 활용정보 필요없음 -->
				<!-- 활용정보 -->
				<!-- <div class="col-md-12">
					<br>
					<div class="list-group">
						<h4>활용정보<small> 선택한 회원의 활용정보 입니다.</small></h4>
						<div class="list-group-item">
							<div class="list-group">
								<table class="table">
									<tbody>
									
										<tr>
											<th style="text-align: center;">주민번호</th>
											<th style="text-align: center;">반려동물</th>
											<th style="text-align: center;">결혼여부</th>
											<th style="text-align: center;">자녀수</th>
											<th style="text-align: center;">총가구구성원수</th>
											<th style="text-align: center;">차량운용대수</th>
											<th style="text-align: center;">주거형태</th>
										</tr>
										
										<tr>
											<td style="text-align: center;">990304-2</td>
											<td style="text-align: center;">2</td>
											<td style="text-align: center;">미혼</td>
											<td style="text-align: center;">0</td>
											<td style="text-align: center;">1</td>
											<td style="text-align: center;">1</td>
											<td style="text-align: center;">전세</td>
										</tr>
										
										<tr>
											<th colspan="2" style="text-align: center;">지역 1차</th>
											<th colspan="2" style="text-align: center;">지역 2차</th>
											<th colspan="2" style="text-align: center;">직업 1차</th>
											<th colspan="2" style="text-align: center;">직업 2차</th>
										</tr>
												
										<tr>
											<td colspan="2" style="text-align: center;">서울</td>
											<td colspan="2" style="text-align: center;">성동구</td>
											<td colspan="2" style="text-align: center;">IT/개발</td>
											<td colspan="2" style="text-align: center;">프론트엔드</td>
										</tr>
								
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div> -->
				
				
				
				<!-- 신고내역 -->
				<div class="col-md-12">
					<br>
					<div class="list-group">
						<h4>신고내역<small> 선택한 영구정지 회원의 지난 6개월 내 신고내역 입니다.</small></h4>
						<div class="list-group-item">
							<div class="list-group">
								<table class="table">
									<tbody>
									
										<!-- 계정 정보 -->
										<tr>
											<th style="width: 150px; text-align: center;">신고처리코드</th>
											<th style="width: 150px; text-align: center;">신고처리일자</th>
										</tr>
										
										<tr>
											<td style="text-align: center;"><a href="">게시글122030</a></td>
											<td style="text-align: center;">2022/05/29</td>
										</tr>
										
										<tr>
											<td style="text-align: center;"><a href="">게시글122030</a></td>
											<td style="text-align: center;">2022/05/29</td>
										</tr>
										
										<tr>
											<td style="text-align: center;"><a href="">댓글122030</a></td>
											<td style="text-align: center;">2022/05/29</td>
										</tr>
								
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 밑에 공백만드는용 ㅠ -->
				<br><br><br><br><br><br><br><br><br><br>
				<br><br><br><br><br><br><br><br><br><br>
			
			
			</div>
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