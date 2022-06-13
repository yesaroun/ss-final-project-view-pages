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
	  window.location.href = "./adPostList.jsp"
	}
	function newPage2()
	{
	  window.location.href = "./postCont.jsp"
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
	<jsp:include page="./AdNavMoney.jsp"></jsp:include>
	
	<!-- 여백이 없는 반응형 웹을 만들때 container-fluid 사용 -->
    <div class="container-fluid">
    
    	<div class="row d-flex d-md-block flex-nowrap wrapper">
            <nav class="col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            	<!-- ○ 좌측 메뉴바 include -->
                <jsp:include page="./AdMenuMoney.jsp"></jsp:include>
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
		
		<div class="container">
			<div class="row">
			
				<!-- 게시글 상세정보 -->
				<div class="col-md-12">

					<div class="list-group">
						<h4>게시글 상세정보<small> 선택한 게시글의 상세정보 입니다.</small></h4>
						<div class="list-group-item">
							<div class="list-group">
								<table class="table">
									<tbody>
									
										<!-- 상세 정보 -->
										<tr>
											<th colspan="3" style="font-weight:bold; width: 150px; text-align: center;">게시글 번호</th>
											<th colspan="3" style="font-weight:bold; width: 200px; text-align: center;">등록 일자</th>
											<th colspan="3" class="mobile" style="font-weight:bold; width: 200px; text-align: center;">작성자</th>
											<th colspan="3" style="font-weight:bold; width: 150px; text-align: center;">공개 여부</th>
											
										</tr>
												
										<tr>
											<td colspan="3" style="text-align: center;"><a href="./boardView.html" style="color: #000000;">132</a></td>
											<td colspan="3" style="text-align: center;">2020-05-20</td>
											
											<td colspan="3" class="mobile" style="text-align: center;">test@test.com</td>
											<td colspan="3" style="text-align: center;"> 공개 </td>
										</tr>
										
										<tr>
											<th colspan="12" style="font-weight:bold; text-align: center;">게시글 내용</th>
										</tr>
												
										<tr>
											<td colspan="12" style="text-align: center;">이번달 가게부를 써봤어요~ 뿌듯하네용</td>
										</tr>
										
										<!-- 게시글 버튼 -->
										<tr>
											<td colspan="12">
												<button class="btn" style="width: 100%;" data-toggle="modal" data-target="#modal" onclick="newPage2()">게시글 보러가기</button>
											</td>
										</tr>
									
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

				
				<!-- 신고1 -->
				<div class="col-md-12">
					<div class="list-group">
						<div class="list-group">
						<br><br>
						<h4>신고 내역<small></small></h4>

							<div class="list-group-item">
								<table class="table">
									<tbody>
											
										<!-- 신고 접수 -->
										<tr>
											<th colspan="4" style="font-weight:bold; text-align: center;">신고 번호</th>
											<th colspan="4" style="font-weight:bold; text-align: center;">접수 일자</th>
											<th colspan="4" class="mobile" style="font-weight:bold; text-align: center;">신고자</th>
										</tr>
										
										<tr>
											<td colspan="4" style="text-align: center;">33</td>
											<td colspan="4" style="text-align: center;">2020-05-20</td>
											<td colspan="4" class="mobile" style="text-align: center;">test@test.com</td>
										</tr>
										
										
										<!-- 승인 여부 -->
										<tr>
											<th colspan="4" style="font-weight:bold; text-align: center;">승인 여부</th>
											<th colspan="4" style="font-weight:bold; text-align: center;">처리자</th>
											<th colspan="4" class="mobile" style="font-weight:bold; text-align: center;">처리 일자</th>
										</tr>
												
										<tr>
											<td colspan="4" style="text-align: center;"> - </td>
											<td colspan="4" style="text-align: center;"> - </td>
											<td colspan="4" class="mobile" style="text-align: center;"> - </td>
										</tr>
										
										<!-- 신고 내용 -->
										<tr>
											<th colspan="6"  style="font-weight:bold; text-align: center;">신고 카테고리</th>
											<th colspan="6" style="font-weight:bold; text-align: center;">신고 세부 사유</th>
										</tr>
												
										<tr>
											<td colspan="6" style="text-align: center;">-</td>
											<td colspan="6" style="text-align: center;"> - </td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				
				
				<!-- 돌아가기 -->
				<div class="col-md-12">
					<table class="table">
						<tbody>
								
							<!-- 돌아가기 버튼 -->
							<tr>
								<td colspan="12">
									<br><br>
									<button class="btn" style="width: 100%;" onclick="newPage()">돌아가기</button>
								</td>
							</tr>
							
						</tbody>
					</table>
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