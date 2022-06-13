<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>커뮤니티 웹 사이트</title>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript">
	function newPage()
	{
	  window.location.href = "./userCalendar.jsp"
	}
	function newPage2()
	{
	  window.location.href = "./analysis.jsp"
	}
	function newPage3()
	{
	  window.location.href = "./analysisIn.jsp"
	}
	function newPage4()
	{
	  window.location.href = "./analysisOut.jsp"
	}
	
	
</script>

<style type="text/css">


li:hover button { visibility: visible;}

</style>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 부트스트랩 CSS 추가하기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/custom.css">
</head>
<body>
	
	<!-- ○ 상단 네비게이션 include -->
	<jsp:include page="./UserNavMoney.jsp"></jsp:include>
	
	<!-- 여백이 없는 반응형 웹을 만들때 container-fluid 사용 -->
	
	<!-- 회원탈퇴 상단 아이콘 -->
   	<div class="container">

		<div class="row sign-up-form">
         <div class="sign-up-process col-12" style="margin-top: 15%; margin-bottom: 5%;">
               <div class="form-group text-center">
                  
                  <h1 style="font-weight: 300; font-size: 20pt; color: blue;">#30대 #여자 #반려동물3마리이상 #가족구성원2명 #자녀수없음 #자차없음 #IT/개발</h1>
                  <h2>익명의 4월 가계부</h2>
               </div>
            </div>
      </div>
    </div>
    
    <div class="container-fluid">
    	<div class="row">
			<div class="col">
			
			
				<div class="container">
					<div class="row">
					
						<!-- 전체 수입 / 지출 내역 -->
						<div class="col-md-12">
							<div class="list-group">
								<br><br>
								<h4 style="text-align: center;"> 수입 / 지출 <small> </small> </h4>
								
								<div class="list-group-item">
									<div class="list-group">
										<table class="table" style="max-width: 1080px;">
								            <thead>
								              <tr>
								                <th style="text-align:center;">날짜</th>
								                <th style="text-align:center;">수입/지출</th>
								                <th style="text-align:center;">1차 카테고리</th>
								                <th style="text-align:center;">2차 카테고리</th>
								                <th style="text-align:center;">상세내용</th>
								                <th style="text-align:center;">금액</th>
								              </tr>
								            </thead>
								            
								            <tbody>
								              <tr>
								                <td style="text-align:center;">1</td>
								                <td style="text-align:center; color: blue;">수입</td>
								                <td style="text-align:center;">주수입</td>
								                <td style="text-align:center;">급여</td>
								                <td style="text-align:center;">월급날♡</td>
								                <td style="text-align:center; color: blue;"> 3,000,000 </td>
								              </tr>
								              
								              <tr>
								                <td style="text-align:center;">1</td>
								                <td style="text-align:center; color: red;">지출</td>
								                <td style="text-align:center;">주수입</td>
								                <td style="text-align:center;">급여</td>
								                <td style="text-align:center;">집세</td>
								                <td style="text-align:center; color: red;"> 3,000,000 </td>
								              </tr>
								              
								              <tr>
								                <td style="text-align:center;">3</td>
								                <td style="text-align:center; color: red;">지출</td>
								                <td style="text-align:center;">주수입</td>
								                <td style="text-align:center;">급여</td>
								                <td style="text-align:center;">월급날♡</td>
								                <td style="text-align:center; color: red;"> 3,000,000 </td>
								              </tr>
								              
								              <tr>
								                <td style="text-align:center;">4</td>
								                <td style="text-align:center; color: blue;">수입</td>
								                <td style="text-align:center;">주수입</td>
								                <td style="text-align:center;">급여</td>
								                <td style="text-align:center;">월급날♡</td>
								                <td style="text-align:center; color: blue;"> 3,000,000 </td>
								              </tr>
								              
								              
								              <tr>
								                <td style="text-align:center;">4</td>
								                <td style="text-align:center; color: red;">지출</td>
								                <td style="text-align:center;">주수입</td>
								                <td style="text-align:center;">급여</td>
								                <td style="text-align:center;">월급날♡</td>
								                <td style="text-align:center; color: red;"> 3,000,000 </td>
								              </tr>
								              
								              <tr>
								                <td style="text-align:center;">7</td>
								                <td style="text-align:center; color: red;">지출</td>
								                <td style="text-align:center;">주수입</td>
								                <td style="text-align:center;">급여</td>
								                <td style="text-align:center;">월급날♡</td>
								                <td style="text-align:center; color: red;"> 3,000,000 </td>
								              </tr>
								             
								            </tbody>
								          </table>
								          
								          ~31일까지
									</div>
								</div>
							</div>
						</div>
						
						<!-- 데이터 받기 -->
						<%
							// 내 수입/지출
						int data1 = 3000000;
						int data2 = 7000000;
		
						// 다른사람 평균 수입/지출
						int data3 = 4000000;
						int data4 = 6000000;
						%>	
						
						<!-- 나의 수입대비지출 -->
						<div class="col-md-12">
						
							<br><br>

							<div class="list-group">
								<h4 style="text-align: center;"> 수입 대비 지출 <small> </small> </h4>
								
								<h4 style="text-align: right;">
									<small style="color: #f79900;">■ 수입</small> <small
										style="color: #03a313;">■ 지출</small>
								</h4>


								<!-- 나의 수입대비지출 프로그레스바 -->
								<div class="progress"
									style="height: 50px; background-color: white;">

									<div
										class="progress-bar progress-bar bg-warning progress-bar-animated"
										role="progressbar"
										style="font-size: 17pt; width: <%=(double) data1 / (data1 + data2) * 100%>%;"
										aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
										<%=(double) data1 / (data1 + data2) * 100%>%
									</div>

									<div
										class="progress-bar progress-bar bg-success progress-bar-animated"
										role="progressbar"
										style="font-size: 17pt; width: <%=(double) data2 / (data1 + data2) * 100%>%;"
										aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
										<%=(double) data2 / (data1 + data2) * 100%>%
									</div>

								</div>

								<div class="progress"
									style="height: 50px; background-color: white;">

									<div
										class="progress-bar progress-bar bg-white progress-bar-animated"
										role="progressbar"
										style=";font-size: 13pt; color: #f79900; width: <%=(double) data1 / (data1 + data2) * 100%>%;"
										aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
										<%=data1%>
									</div>

									<div
										class="progress-bar progress-bar bg-white progress-bar-animated"
										role="progressbar"
										style="font-size: 13pt; color: #03a313; width: <%=(double) data2 / (data1 + data2) * 100%>%;"
										aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
										<%=data2%>
									</div>

								</div>

								<!-- <h5 class="mt-2">이번달, 수입에 비해 [ 60% ] 지출하였습니다. </h5> -->

							</div>
						</div>
						
				
					
						<!-- 수입 분석 -->
						<div class="col-md-12">
							<div class="list-group">
								<br><br><br><br>
								<h4 style="text-align: center;"> 수입 분석 <small> </small> </h4>
								
								<!-- 그래프가 들어가는 곳 -->
										<canvas id="myChart2" style="height: 500px;"></canvas>
				
							</div>
						</div>
						
						
						<!-- 지출 분석 -->
						<div class="col-md-12">
							<div class="list-group">
								<br><br><br><br>
								<h4 style="text-align: center;"> 지출 분석 <small> </small> </h4>
								
								<!-- 그래프가 들어가는 곳 -->
										<canvas id="myChart"  style="height: 600px;"></canvas>
				
							</div>
						</div>
						
						
						
						<!-- 소감 -->
						<div class="col-md-12">
							<div class="list-group">
								<br><br><br><br>
								<h4 style="text-align: center;"> 소감 <small> </small> </h4>
								
								<!-- 소감 -->
								<div class="list-group mt-3">
									<div class="list-group-item" style="background: #fff9e6;">
										<p style="text-align: center;">
										지난 5월은 수입이 적어서 돈을 아끼느라 노력했어요! 어쩌구 저쩌구
										</p>
									</div>
								</div>
								
				
							</div>
						</div>
						
						
						
						<!-- 이전글 다음글 목록 -->
						<div class="col-md-12">
						
							<!-- 분기처리① "글 작성자" 에게만 수정/삭제 가능 -->
							<!-- 분기처리② "방문자" 에게는 수정/삭제 불가 -->
							<!-- 분기처리③ "관리자" 에게는 수정/삭제 불가 -->
							<div class="float-left">
								<br><br>
								<button class="btn" style="width: 100px;">수정</button>
								<button class="btn" style="width: 100px;">삭제</button>
				            </div>
			               
			               
							<div class="float-right">
								<br><br>
								<button class="btn" style="width: 100px;">이전 글</button>
								<button class="btn" style="width: 100px;">다음 글</button>
								<button class="btn" style="width: 100px;">목록</button>
			               </div>
			               
            			</div>
						
						
						<!-- 분기처리① "글 작성자" 에게는 a태그 X (이모티콘 갯수만 조회가능) -->
						<!-- 분기처리② "방문자" 에게는 a태그 O (이모티콘 갯수만 조회 + 이모티콘 주기 가능) -->
						<!-- 분기처리③ "관리자" 에게는 a태그 X (이모티콘 갯수만 조회가능) -->
						
						<!-- 이모티콘 / 댓글 -->
						<!-- 이모티콘 이미지 갈아끼우기 100x100 -->
						<div class="col-md-12">
							
							<br><br><br><br>
							<h4 style="text-align: center;">피드백<small> </small></h4>
							<br><br>
							<div class="d-flex flex-row justify-content-center" style="width: 100%; text-align: center;">
							    <div class="item" style="width: 200px;">
							    	<a href="./adPostReptList.jsp"><img src="./img/event.svg"></a>
							    	<h3>13</h3>
									<h5>텅장될 예정</h5>
								</div>
								
								<div class="item" style="width: 200px;">
							    	<a href="./adPostReptList.jsp"><img src="./img/event.svg"></a>
							    	<h3>13</h3>
									<h5>안사면 0원</h5>
								</div>
								
								<div class="item" style="width: 200px;">
							    	<a href="./adPostReptList.jsp"><img src="./img/event.svg"></a>
							    	<h3>13</h3>
									<h5>이대로만 쭉</h5>
								</div>
								
								<div class="item" style="width: 200px;">
							    	<a href="./adPostReptList.jsp"><img src="./img/event.svg"></a>
							    	<h3>13</h3>
									<h5>티끌모아 태산</h5>
								</div>
								
								<div class="item" style="width: 200px;">
							    	<a href="./adPostReptList.jsp"><img src="./img/event.svg"></a>
							    	<h3>13</h3>
									<h5>부자될 예정</h5>
								</div>
								
							</div>
							
							<br><br>
							
							<div class="list-group-item">
							
							
								<!-- 분기처리① "글 작성자"는 댓글 작성 + 신고 -->
								<!-- 분기처리② "방문자"는 댓글 작성 + 신고 -->
								<!-- 분기처리③ "관리자"는 조회만 가능 -->
								<!-- + *분기처리④ "댓글 작성자"는 댓글 작성 + 수정 + 삭제 + 신고 -->
								
								<!-- 댓글 기능 -->
								<div class="list-group">
								<textarea class="form-control" id="cmntBox" rows="3"></textarea>
								<button type="button" class="btn btn-dark mt-3" > 댓글 작성 </button>
								</div>
								<br><br>
								<ul class="list-group">
								
									<!-- 위에 style 댓글 hover 참고하기 -->
								
									<!-- 댓글1 -->
									<li class="list-group-item list-group-item-action">
									
										가게부 잘 봤습니다. 지출을 조금 줄이는 편이 좋을 것 같아요!
										
										<div style="float: right; visibility:hidden;">
										  	<!-- 신고 -->
											<button type="button" class="close" style="width: 40px;">
												<span aria-hidde="true">
													<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="red" class="bi bi-bell" viewBox="0 0 16 16">
													  <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
													</svg>
												</span>
											</button>
											
											<!-- 삭제 -->
											<button type="button" class="close" style="width: 40px;">
												<span aria-hidde="true">
													<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
													  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
													  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
													</svg>
												</span>
											</button>
											
											<!-- 수정 -->
											<button type="button" class="close" style="width: 40px;">
												<span aria-hidde="true">
													<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
														<path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
													</svg>
												</span>
											</button>
										</div>
									
									</li>
									
								
								</ul>
								<br>
							</div>
							
							<br><br><br><br><br><br><br>
								
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
	
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
 -->
	
	
	<script>
    
	// 수입
	var idata1 = 2000000;
	var idata2 = 600000;
	var idata3 = 700000;
	
	// 지출
    var data1 = 214278;
	var data2 = 157052;
	var data3 = 109126;
	var data4 = 525070;
	var data5 = 415200;
	var data6 = 315200;
	var data7 = 15200;
	var data8 = 215200;
	var data9 = 200200;
	var data10 = 319200;
	var data11 = 118200;
	var data12 = 117200;
	var data13 = 96500;
	var data14 = 85200;
	var data15 = 44800;
	var data16 = 0;
	
	// 지출합
	var hap = data1+data2+data3+data4+data5+data6+data7+data8+data9+data10+data11+data12+data13+data14+data15+data16;
	
	// 수입합
	var hap2 = idata1+idata2+idata3;
	
	
	// 지출 그래프
	var ctxP = document.getElementById('myChart').getContext('2d');
	var myChart = new Chart(ctxP, {
		type : 'doughnut',
		data : {
			labels : [ 
				 "식비" + " : "+data1+" [ "+ (data1/hap*100).toFixed(3) + " %" +" ]"
				, "카페/간식" + " : "+data2+" [ "+ (data2/hap*100).toFixed(3) + " %" +" ]"
				, "통신/구독" + " : "+data3+" [ "+ (data3/hap*100).toFixed(3) + " %" +" ]"
				, "쇼핑/생활" + " : "+data4+" [ "+ (data4/hap*100).toFixed(3) + " %" +" ]"
				, "뷰티/미용" + " : "+data5+" [ "+ (data5/hap*100).toFixed(3) + " %" +" ]"
				,"교통" + " : "+data6+" [ "+ (data6/hap*100).toFixed(3) + " %" +" ]"
				, "자동차" + " : "+data7+" [ "+ (data7/hap*100).toFixed(3) + " %" +" ]"
				, "주거" + " : "+data8+" [ "+ (data8/hap*100).toFixed(3) + " %" +" ]"
				, "의료/건강" + " : "+data9+" [ "+ (data9/hap*100).toFixed(3) + " %" +" ]"
				, "금융" + " : "+data10+" [ "+ (data10/hap*100).toFixed(3) + " %" +" ]"
				, "문화/여가" + " : "+data11+" [ "+ (data11/hap*100).toFixed(3) + " %" +" ]"
				, "여행/숙박" + " : "+data12+" [ "+ (data12/hap*100).toFixed(3) + " %" +" ]"
				, "교육/학습" + " : "+data13+" [ "+ (data13/hap*100).toFixed(3) + " %" +" ]"
				, "자녀/육아" + " : "+data14+" [ "+ (data14/hap*100).toFixed(3) + " %" +" ]"
				, "반려동물" + " : "+data15+" [ "+ (data15/hap*100).toFixed(3) + " %" +" ]"
				, "경조/선물" + " : "+data16+" [ "+ (data16/hap*100).toFixed(3) + " %" +" ]"
				],
			datasets : [
				{
					data : [ data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16],
					backgroundColor : [ "#FFA44F", "#FFC48E", "#EAC4FF", "#C5ACFF", "#9591FF", "#78A6FD", "#6CB2DF", "#5BBFBA", "#15A665", "#2F9245", "#66B237", "#96CA39", "#DFE356", "#FFC66B", "#FFAD7D", "#FF9FA5"],
					hoverBackgroundColor : []
				} 
			]
		},
		options : {
			
			responsive: true,
			//maintainAspectRatio : false ,
			legend : {
				display : true,
				position: "right",
				labels:{
					fontSize: 18,
					boxWidth: 40,
					padding: 30,
					usePointStyle: true,
					PointStyle: "circle"
				}
			}}
	});
	
	
	// 수입 그래프
	var ctxP = document.getElementById('myChart2').getContext('2d');
	var myChart2 = new Chart(ctxP, {
		type : 'doughnut',
		data : {
			labels : [ "주수입" + " : "+idata1+" [ "+ (idata1/hap2*100).toFixed(3) + " %" +" ]"
				, "부수입" + " : "+idata2+" [ "+ (idata2/hap2*100).toFixed(3) + " %" +" ]"
				, "저축" + " : "+idata3+" [ "+ (idata3/hap2*100).toFixed(3) + " %" +" ]"
				],
			datasets : [
				{
					data : [ idata1, idata2, idata3],
					backgroundColor : [ "#FFDF00", "#FF88B9", "#00D3C5"],
					hoverBackgroundColor : []
				} 
			]
		},
		options : {
			
			responsive: true,
			//maintainAspectRatio : false ,
			legend : {
				display : true,
				position: "right",
				labels:{
					fontSize: 18,
					boxWidth: 40,
					padding: 30,
					usePointStyle: true,
					PointStyle: "circle"
				}
			}}
			
		
	});
	
    </script>

</body>
</html>