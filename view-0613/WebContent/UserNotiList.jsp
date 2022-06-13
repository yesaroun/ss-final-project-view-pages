<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>공지사항 게시판</title>
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
						공지사항
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<form action="" name="searchForm" method="post">
					      <select name="searchKey" class="selectField">
					           <option value="subject" selected="selected">제목</option>
					           <option value="content">내용</option>
					           <option value="name">제목+내용</option>
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
					         <th>작성자</th>
					         <th>등록일자</th>
					         <th>조회수</th>
					      </tr>	
					      
  						
					      <tr>
					      	<td>38</td>
					      	<td>서비스 이용약관 변경 안내</td>
					      	<td>머니로그 관리자</td>
					      	<td>2022.06.06</td>
					      	<td>402</td>
					      </tr>
					      
					      <tr>
					      	<td>37</td>
					      	<td>버전3 업데이트 내용 안내</td>
					      	<td>머니로그 관리자</td>
					      	<td>2022.06.01</td>
					      	<td>186</td>
					      </tr>
					      
					      <tr>
					      	<td>36</td>
					      	<td>버전3 업데이트 안내</td>
					      	<td>머니로그 관리자</td>
					      	<td>2022.06.01</td>
					      	<td>412</td>
					      </tr>
					      
					      <tr>
					      	<td>35</td>
					      	<td>서비스 변경 안내</td>
					      	<td>머니로그 관리자</td>
					      	<td>2022.05.12</td>
					      	<td>106</td>
					      </tr>
					      
					      <tr>
					      	<td>34</td>
					      	<td>게시물 업데이트 안내</td>
					      	<td>머니로그 관리자</td>
					      	<td>2022.05.08</td>
					      	<td>397</td>
					      </tr>
					      
					      <tr>
					      	<td>33</td>
					      	<td>머니로그 보안 작업에 따른 변경사항 안내</td>
					      	<td>머니로그 관리자</td>
					      	<td>2022.05.08</td>
					      	<td>397</td>
					      </tr>
					      
					      <tr>
					      	<td>32</td>
					      	<td>서비스 내용 안내</td>
					      	<td>머니로그 관리자</td>
					      	<td>2022.05.01</td>
					      	<td>824</td>
					      </tr>
					      
					      <tr>
					      	<td>31</td>
					      	<td>서비스 이용약관 변경 안내</td>
					      	<td>머니로그 관리자</td>
					      	<td>2022.04.21</td>
					      	<td>642</td>
					      </tr>
					      
					      <tr>
					      	<td>30</td>
					      	<td>서비스 이용약관 변경 안내</td>
					      	<td>머니로그 관리자</td>
					      	<td>2022.04.18</td>
					      	<td>486</td>
					      </tr>
				      </table>
					  
		  
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
				

	
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery-3.2.1.min.js"></script>
	<!-- Popper 자바스크립트 추가하기 -->
	<script src="./js/popper.min.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="./js/bootstrap.min.js"></script>
	<!-- MDB 라이브러리 추가하기 <== chart!!!! **** -->
	<script src="./js/mdb.min.js"></script>



	</div>
<!--   <script>
    $('img[alt="N"]').each(function(){$(this).replaceWith('<img src="./img/new-icon5.svg" class="newpost">')});
  </script> -->
</body>
</html>