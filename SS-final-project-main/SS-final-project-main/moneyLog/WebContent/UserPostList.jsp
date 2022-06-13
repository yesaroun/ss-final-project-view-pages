<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>머니리뷰 게시판</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/custom.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/board.css">
</head>
<body>
	<!-- ○ 상단 네비게이션 include -->
	<jsp:include page="./UserNavMoney.jsp"></jsp:include>

	<!-- 여백이 없는 반응형 웹을 만들때 container-fluid 사용 -->
    <div class="container-fluid">
    
		<%-- <div class="row d-flex d-md-block flex-nowrap wrapper">
           
            <nav class="col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            	<!-- ○ 좌측 메뉴바 include -->
                <jsp:include page="./userMenuCs.jsp"></jsp:include>
            </nav>            
        </div> --%>
    
		<!-- 게시판 코드 들어가기 -->	
		
		<div class="container">
			<div class="row">
				<div class="col-12" style="place-items: center; display: grid; margin-top: 30px;" >
					<div id="moneyList_title">
							MONEY REVIEW
					</div>
				</div>
			</div>
		</div>
		
		<div class="container">
				<div class="row">
						<div class="col-12">
							
							 <table id="customers" class="table">
							     <tr>
							        <!-- 항목 -->
							         <th>게시글번호</th>
							         <th>제목</th>
							         <th>댓글</th>
							         <th>등록일자</th>
							         <th>조회수</th>
							      </tr>	
							      
							      <tr>
							      	<td>38</td>
							      	<td>[6월] #30대 #여자 #반려동물 #가족구성원 #자녀수 #자차 #반려동물 #개발자</td>
							      	<td>5</td>
							      	<td>2022.06.06</td>
							      	<td>402</td>
							      </tr>
							      
							      <tr>
							      	<td>37</td>
							      	<td>[2월] #50대 #남성 #반려동물있음 #제주 #경영기획</td>
							      	<td>3</td>
							      	<td>2022.06.01</td>
							      	<td>186</td>
							      </tr>
							      
							      <tr>
							      	<td>36</td>
							      	<td>[5월] #30대 #남성 #월세 #3인가구 #서울 #생산직</td>
							      	<td>3</td>
							      	<td>2022.06.01</td>
							      	<td>412</td>
							      </tr>
							      
							      <tr>
							      	<td>35</td>
							      	<td>[3월] #10대 #여성 #4인가구 #자가 #전주 #학생</td>
							      	<td>2</td>
							      	<td>2022.05.12</td>
							      	<td>106</td>
							      </tr>
							      
							      <tr>
							      	<td>34</td>
							      	<td>[2월] #20대 #여자 #월세 #용인 #개발자</td>
							      	<td>4</td>
							      	<td>2022.05.08</td>
							      	<td>397</td>
							      </tr>
							      
							      <tr>
							      	<td>33</td>
							      	<td>[2월] #20대 #여자 #월세 #용인 #개발자</td>
							      	<td>4</td>
							      	<td>2022.05.08</td>
							      	<td>397</td>
							      </tr>
							      
							      <tr>
							      	<td>32</td>
							      	<td>[4월] #40대 #여성 #5인가구 #반려동물있음 #강원 #주부</td>
							      	<td>6</td>
							      	<td>2022.05.01</td>
							      	<td>824</td>
							      </tr>
							      
							      <tr>
							      	<td>31</td>
							      	<td>[2월] #30대 #남성 #반려동물있음 #제주 #의사s</td>
							      	<td>8</td>
							      	<td>2022.04.21</td>
							      	<td>642</td>
							      </tr>
							      
							      <tr>
							      	<td>30</td>
							      	<td>[3월] #60대 #남성 #반려동물있음 #제주 #회계</td>
							      	<td>4</td>
							      	<td>2022.04.18</td>
							      	<td>486</td>
							      </tr>
						      </table>
							  
							<!-- ※ 스크롤 가로 세로 제한되어 있음 -->
							<div class="row">
								<div class="col-12" style="place-items: center; display: grid;">
									<div id="paging">
										<p>1 <span style="color: #92B4EC;">Prev</span> 21 22 23 24 25 26 27 28 29 30 <span style="color: #92B4EC;">Next</span> 54</p>		
								 	</div>	
								 </div>
							</div>
					 </div>
			  	</div>	
			</div>
	
	
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery-3.2.1.min.js"></script>
	<!-- Popper 자바스크립트 추가하기 -->
	<script src="./js/popper.min.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="./js/bootstrap.min.js"></script>
	<!-- MDB 라이브러리 추가하기 <== chart!!!! **** -->
	<script src="./js/mdb.min.js"></script>

  </div>




</body>
</html>