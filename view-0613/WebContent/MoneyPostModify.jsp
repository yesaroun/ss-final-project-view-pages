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
	  window.location.href = "./moneyPostRegOk.jsp"
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
    <div class="container">
			<div class="row">
				
						
				<!-- 활용정보1 -->
				<div class="col-md-12">
					<br>
					<div class="list-group">
						<h4>머니리뷰<small> 게시글 수정 </small></h4>
						<div class="list-group-item">
							<div class="list-group">
								<form>
						
									<div class="form-group">
										<label>제목</label>
										<input type="text" class="form-control" value="#30대 #여자 #반려동물 #가족구성원 #자녀수 #자차 #반려동물 #개발자"
										disabled="disabled">
									</div>
									<br>
									<div class="form-group">
										<label>선택 월</label> <small style="color: red;"> 월 수입·지출 내역이 60개 이상 작성되었을 경우 </small>
										<select class="form-control selectpicker" style="width: 50%;" disabled="disabled">
									    	<option value="1">2022년 6월</option>
									    	<option value="1" disabled="disabled" style="color: #9b9b9b;">2022년 5월</option>
									    	<option value="1" disabled="disabled" style="color: #9b9b9b;">2022년 4월</option>
										    <option value="0">2022년 3월</option>
									  	</select>
									</div>
									<br>
									<div class="form-group" style="width: 49%;">
										<label>상세내역 공개여부</label>
										<div class="form-check">
										  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
										  <label class="form-check-label" for="flexRadioDefault1">
										    공개
										  </label>
										</div>
										<div class="form-check">
										  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
										  <label class="form-check-label" for="flexRadioDefault2">
										    비공개
										  </label>
										</div>
									</div>
									<br>
									<div class="form-group">
										<label>이 달의 가게부 소감을 작성해주세요!</label>
										<textarea class="form-control" style="height: 180px;"></textarea>
									</div>
									
									<div class="form-group">
										<button type="button" class="btn btn-secondary">취소</button>
										<button type="button" class="btn btn-success" onclick="newPage()">수정완료</button>
									</div>
									
								</form>
							</div>
						</div>
					</div>
				</div>
				
			
				
			</div>
			
			
			<!-- 밑에 공백만드는용 ㅠ -->
			<br><br><br><br><br><br><br><br><br><br>
			
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