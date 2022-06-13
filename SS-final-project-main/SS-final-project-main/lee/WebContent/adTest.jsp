<!--
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
-->
<!DOCTYPE html>
<html>
<head>
<title>커뮤니티 웹 사이트</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 부트스트랩 CSS 추가하기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/custom.css">
</head>
<body>
	<div class="" style="position:relative; z-index: -1;">
		<jsp:include page="./AdNav.jsp"></jsp:include>
	</div>
	
	
	<!-- 여백이 없는 반응형 웹을 만들때 container-fluid 사용 -->
    <div class="container-fluid" >
    	<!-- ○ 상단 네비게이션 include -->
		
    
    	<div class="row d-flex d-md-block flex-nowrap wrapper " >
            <nav class="col-md-2 float-left col-1 pl-0 pr-0 collapse width show" style="position: fixed" id="sidebar" >
            	<!-- ○ 좌측 메뉴바 include -->
                <jsp:include page="./menuNav.jsp"></jsp:include>
            	
            </nav>
            
        </div>
		<div class="row">
			<div class="col-md-12 col-11" style="padding-left: 200px;">
            	<!-- 안내문??? ===================================================== -->
				<div class="container">
					<ol class="breadcrumb">
						<li class="active"> 안녕하세요. [ 김태형 ] 관리자님 반갑습니다.</li>
					</ol>
				</div>
				<!-- 안내문??? ===================================================== -->
				
				<div class="col-md-12">
					<section id="main">
						<div class="container">
							<div class="row">
							
								<!-- 오늘의 할일 -->
								<div class="col-md-12">
									<div class="list-group">
										<!-- <a href="./index.jps" class="list-group-item active">오늘의 할일</a> -->
										<br>
										<h4>오늘의 할일<small>  오늘 접수된 신고와 문의사항입니다.</small></h4>
											<div class="list-group-item">
												<div class="row m-1">
					
													<!-- 이미지 -->
													<div class="col-md-6 text-center p-5">
														<img src="./img/event.svg">
														<h3>205</h3>
														<h5>미처리된 신고</h5>
													</div>
					
													<!-- 이미지 -->
													<div class="col-md-6 text-center p-5">
														<img src="./img/edit.svg">
														<h3>98</h3>
														<h5>미답변된 문의</h5>
													</div>
												</div>
											</div>
									</div>
								</div>
								
								<!-- 공지사항 리스트 -->
								<div class="col-md-12">
				
									<div class="list-group">
										<!-- <a href="#" class="list-group-item active">공지사항</a> -->
										<br><br>
										<h4>공지사항<small> 페이지를 관리하세요.</small></h4>
				
											<div class="list-group-item">
												<div class="list-group">
													<table class="table">
														<tbody>
														
															<!-- class="mobile" 는 화면이 990픽셀 이하로 작아지면 안보이게 처리 (모바일용)-->
															<!-- 게시글 -->
															<tr>
																<th class="mobile" style="width: 60px; text-align: center;">번호</th>
																<th style="text-align: center;">제목</th>
																<th class="mobile" style="width: 120px; text-align: center;">작성일</th>
															</tr>
															
															<tr>
																<td class="mobile" style="width: 60px; text-align: center;">3</td>
																<td>머니로그 신규 업데이트 안내 (3.321 패치)</td>
																<td class="mobile" style= "center;">2022-06-05</td>
															</tr>
															
															<!-- 게시글 -->
															<tr>
																<td class="mobile" style="width: 60px; text-align: center;">2</td>
																<td>머니로그 버그 패치 안내</td>
																<td class="mobile" style= "center;">2022-06-05</td>
															</tr>
															
															<!-- 게시글 -->
															<tr>
																<td class="mobile" style="width: 60px; text-align: center;">1</td>
																<td>머니로그 관련 공지사항 안내</td>
																<td class="mobile" style= "center;">2022-06-05</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
			
									<!-- 신규회원 지수 -->
									<div class="col-md-12">
										<div class="list-group mt-3">
											<!-- <a href="#" class="list-group-item active">신규 회원</a> -->
											<br><br>
											<h4>회원 현황<small>  머니로그 신규 회원과 총 회원을 확인해보세요.</small></h4>
					
											<div class="list-group-item">
												<canvas id="lineChart"></canvas>
											</div>
					
										</div>
									</div>
									
									
									<div class="col-md-6">
		
										<div class="list-group">
											<!-- <a href="#" class="list-group-item active">회원 현황</a> -->
											<br><br>
											<h4>신규회원 현황<small></small></h4>
					
											<div class="list-group-item">
												<div class="list-group">
													<table class="table">
														<tbody>
														
															<!-- 게시글 -->
															<tr>
																<th class="mobile" style="text-align: center;">전체 회원</th>
																<th class="mobile" style="text-align: center;">신규 회원</th>
																<th class="mobile" style="text-align: center;">정지 회원</th>
															</tr>
															
															<tr>
																<td class="mobile" style="text-align: center;">3,302</td>
																<td class="mobile" style="text-align: center;">21</td>
																<td class="mobile" style="text-align: center;">33</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
				
										<div class="list-group">
											<!-- <a href="#" class="list-group-item active">머니리뷰 현황</a> -->
											<br><br>
											<h4>머니로그 현황<small></small></h4>
					
											<div class="list-group-item">
												<div class="list-group">
													<table class="table">
														<tbody>
														
															<!-- 게시글 -->
															<tr>
																<th class="mobile" style="text-align: center;">전체 게시글</th>
																<th class="mobile" style="text-align: center;">신규 게시글</th>
																<th class="mobile" style="text-align: center;">비공개 게시글</th>
																<th class="mobile" style="text-align: center;">비공개 댓글</th>
															</tr>
															
															<tr>
																<td class="mobile" style="text-align: center;">3,302</td>
																<td class="mobile" style="text-align: center;">21</td>
																<td class="mobile" style="text-align: center;">33</td>
																<td class="mobile" style="text-align: center;">33</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									
									
				
							</div>
						</div>
					</section>
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


	<script>
		var ctxL = document.getElementById("lineChart").getContext('2d');
		var myLineChart = new Chart(ctxL,
		{
			type : 'line',
			data :
			{
				labels : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월" ],
				datasets : [
				{
					label : "전체 회원 수",
					fillColor : "rgba(220,220,220,0.2)",
					strokeColor : "rgba(220,220,220,1)",
					pointColor : "rgba(220,220,220,1)",
					pointStrokeColor : "#fff",
					pointHighlightFill : "#fff",
					pointHighlightStroke : "rgba(220,220,220,1)",
					data : [ 530, 5548, 9673, 10230, 19432, 36559, 58575 ]
				},
				{
					label : "신규 회원 수",
					fillColor : "rgba(151,187,205,0.2)",
					strokeColor : "rgba(151,187,205,1)",
					pointColor : "rgba(151,187,205,1)",
					pointStrokeColor : "#fff",
					pointHighlightFill : "#fff",
					pointHighlightStroke : "rgba(151,187,205,1)",
					data : [ 37, 539, 1050, 2035, 4553, 5042, 7285 ]
				} ]
			},
			options :
			{
				responsive : true
			}
		});
	</script>

</body>
</html>