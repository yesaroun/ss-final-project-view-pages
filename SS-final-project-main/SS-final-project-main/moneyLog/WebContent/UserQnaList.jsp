<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>문의사항 게시판</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/custom.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/board.css">
<script type="text/javascript">

	function sendIt()
	{
		alert("검색");
	}
	
</script>
</head>
<body>
	<!-- ○ 상단 네비게이션 include -->
	<jsp:include page="./UserNavCs.jsp"></jsp:include>

	<!-- 여백이 없는 반응형 웹을 만들때 container-fluid 사용 -->
    <div class="container-fluid">
    
		<div class="row d-flex d-md-block flex-nowrap wrapper">
           
            <nav class="col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            	<!-- ○ 좌측 메뉴바 include -->
                <jsp:include page="./UserMenuCs.jsp"></jsp:include>
            </nav>            
        </div>
    
	<!-- 게시판 코드 들어가기 -->	
	
	<div class="container">
		<div class="row">
			<div class="col-12" style="margin-top: 30px;" >
				<div id="List_title">
						문의사항
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<form action="" name="searchForm" method="post">
					      <select name="searchKey" class="selectField">
					           <option value="subject" selected="selected">제목</option>
					           <option value="content">내용</option>
					           <option value="name">작성자</option>
					      </select>
				<input type="text" name="searchValue" class="textField">
				<button type="submit" value="검색" class="btn btn-primary" style="background-color: #1fa766; height: 35px;" onclick="sendIt()">검색</button>
				</form>
			</div>
		</div>
	</div>
					
	<div class="container">
		<div class="row">
				<div class="col-12">
					 <table id="customers" class="table">
					     <tr>
					        <!-- 항목 -->
					         <th>번호</th>
					         <th>제목</th>
					         <th>답변</th>
					         <th>이름</th>
					         <th>등록일자</th>
					         <th>조회수</th>
					      </tr>	
					      
  						
					      <tr>
					      	<td>38</td>
					      	<td>홈페이지 활용 방법을 모르겠어요</td>
					      	<td> - </td>
					      	<td>배*지</td>
					      	<td>2022.05.17</td>					      	
					      	<td>402</td>
					      </tr>
					      
					      <tr>
					      	<td>37</td>
					      	<td>가계부 입력 모르겠어요</td>
					      	<td> - </td>
					      	<td>남*혁</td>
					      	<td>2022.05.10</td>	
					      	<td>311</td>
					      </tr>
					      
					      <tr>
					      	<td>36</td>
					      	<td>머니의 전당이 뭔가요</td>
					      	<td>완료</td>
					      	<td>채*협</td>
					      	<td>2022.05.01</td>
					      	<td>412</td>
					      </tr>
					      
					      <tr>
					      	<td>35</td>
					      	<td>마이페이지가 어디있나요</td>
					      	<td>완료</td>
					      	<td>이*리</td>
					      	<td>2022.04.23</td>
					      	<td>123</td>
					      </tr>
					      
					      <tr>
					      	<td>34</td>
					      	<td>머니로그 광고 문의드려요</td>
					      	<td>완료</td>
					      	<td>박*지</td>
					      	<td>2022.04.18</td>
					      	<td>397</td>
					      </tr>
					      
					      <tr>
					      	<td>33</td>
					      	<td>가계부를 어떻게 작성하죠</td>
					      	<td>완료</td>
					      	<td>김*형</td>
					      	<td>2022.04.11</td>
					      	<td>247</td>
					      </tr>
					      
					      <tr>
					      	<td>32</td>
					      	<td>이것 저것 물어보는 곳인가요?</td>
					      	<td>완료</td>
					      	<td>이*태</td>
					      	<td>2022.04.08</td>
					      	<td>824</td>
					      </tr>
					      
					      <tr>
					      	<td>31</td>
					      	<td>이용자 신고는 어디서 하죠</td>
					      	<td>완료</td>
					      	<td>곰*이</td>
					      	<td>2022.04.01</td>
					      	<td>642</td>
					      </tr>
					      
					      <tr>
					      	<td>30</td>
					      	<td>분석하기 문의</td>
					      	<td>완료</td>
					      	<td>데*와</td>
					      	<td>2022.03.25</td>
					      	<td>486</td>
					      </tr>
				      </table>
					
					<div class="row">
						<div class="col">
					         <button type="submit" class="btn btn-primary" style="background-color: #1fa766; float: right; width: 10%;">문의하기</button>
					    </div>
					</div>    
					  
					<!-- ※ 가로 세로 스크롤이 생김 -->
					<div class="row">
						<div class="col" style="place-items: center; display: grid;">
							<div id="paging">
								<p>1 <span style="color: #92B4EC;">Prev</span> 21 22 23 24 25 26 27 28 29 30 <span style="color: #92B4EC;">Next</span> 54</p>		
						 	</div>	
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





</body>
</html>