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
    <div class="container-fluid">
    
	    <div class="row">
		    <div class="col">
			
				<!-- 안내 ===================================================== -->
				<div class="container">
					<div class="row">
			    		<div class="col">
							<ol class="breadcrumb">
								<li class="active"> 2022년 5월 보고서 </li>
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
								<div class="btn-group float-left">
									<button type="button" class="btn btn-dark" onclick="newPage2()"> 전체 </button>
									<button type="button" class="btn btn-success" onclick="newPage3()"> 수입 </button>
									<button type="button" class="btn btn-dark" onclick="newPage4()"> 지출 </button>
								</div>
								
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
					
						<!-- 내 수입 분석 -->
						<div class="col-md-12">
							<div class="list-group">
								<br><br>
								<h4> 수입 <small> [ 김태형 ] 님의 [ 5월 ] 수입 보고서 </small> </h4>
								
								<!-- 그래프가 들어가는 곳 -->
								<div class="list-group mt-3">
									<div class="list-group-item" >
										<canvas id="myChart" style="height: 400px;"></canvas>
									</div>
								</div>
				
							</div>
						</div>
						
						
						
						<!-- 내 수입 내역들 -->
						<div class="col-md-12">
		
							<div class="list-group">
								<br><br>
								<h4> 수입 <small> [ 김태형 ] 님의 [ 5월 ] 수입 리스트 (수정해야함) </small> </h4>
								
								
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
								                <td style="text-align:center; color: blue;">수입</td>
								                <td style="text-align:center;">주수입</td>
								                <td style="text-align:center;">급여</td>
								                <td style="text-align:center;">월급날♡</td>
								                <td style="text-align:center; color: blue;"> 3,000,000 </td>
								              </tr>
								              
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
								                <td style="text-align:center; color: blue;">수입</td>
								                <td style="text-align:center;">주수입</td>
								                <td style="text-align:center;">급여</td>
								                <td style="text-align:center;">월급날♡</td>
								                <td style="text-align:center; color: blue;"> 3,000,000 </td>
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
    
    var data1 = 2000000;
	var data2 = 600000;
	var data3 = 700000;

	var hap = data1+data2+data3;
	

	var ctxP = document.getElementById('myChart').getContext('2d');
	var myChart = new Chart(ctxP, {
		type : 'doughnut',
		data : {
			labels : [ "주수입" + " : "+data1+" [ "+ (data1/hap*100).toFixed(3) + " %" +" ]"
				, "부수입" + " : "+data2+" [ "+ (data2/hap*100).toFixed(3) + " %" +" ]"
				, "저축" + " : "+data3+" [ "+ (data3/hap*100).toFixed(3) + " %" +" ]"
				],
			datasets : [
				{
					data : [ data1, data2, data3],
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
					boxWidth: 50,
					padding: 40,
					usePointStyle: true,
					PointStyle: "circle",
					
				}
			}}
			
		
	});
	
    </script>

</body>
</html>