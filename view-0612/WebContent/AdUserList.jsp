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
	  window.location.href = "./adUserInfo.jsp"
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
	
		<!-- 안내문??? ===================================================== -->
		<div class="container">
			<div class="row">
				<div class="col">
					<ol class="breadcrumb">
						<li class="active"> 안녕하세요. [ 김태형 ] 관리자님 반갑습니다.</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- 안내문??? ===================================================== -->
		
		<div class="container">
			<div class="row">
			
				<!-- 회원 리스트 -->
				<div class="col-md-12">
	
					<div class="list-group">
						<br><br>
						<h4>회원 목록<small> 회원들을 관리하세요</small></h4>

						<div class="list-group-item">
							<div class="list-group">
								<table class="table">
									<tbody>
									
										<!-- class="mobile" 는 화면이 990픽셀 이하로 작아지면 안보이게 처리 (모바일용)-->
										<!-- 회원 목록 (화면 작아지면 번호, 이름, 상세정보만 뜨도록)  -->
										<tr>
											<th style="width: 60px; text-align: center;">번호</th>
											<th class="mobile" style="width: 120px; text-align: center;">이용자코드</th>
											<th style="width: 80px; text-align: center;">이름</th>
											<th class="mobile" style="width: 120px; text-align: center;">아이디</th>
											<th class="mobile" style="width: 120px; text-align: center;">가입일자</th>
											<th style="width: 60px; text-align: center;">상세정보</th>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이윤태</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success" onclick="newPage()">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이태태</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이윤윤</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이이이</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이태태</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이윤윤</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이이이</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이태태</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이윤윤</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이이이</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이태태</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이윤윤</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										<tr>
											<td style="width: 60px; text-align: center;">3</td>
											<td class="mobile" style="text-align: center;">001001</td>
											<td style="text-align: center;">이이이</td>
											<td class="mobile" style="text-align: center;">test@test.com</td>
											<td class="mobile" style="text-align: center;">2022-06-05</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success">보기</button>
											</td>
										</tr>
										
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
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