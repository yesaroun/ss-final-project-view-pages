<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	  window.location.href = "./AdBanInfo.jsp"
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
						<h4>영구정지 회원 목록<small> 영구정지된 회원들을 관리하세요</small></h4>
	
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
											<th class="mobile" style="width: 120px; text-align: center;">정지일자</th>
											<th style="width: 120px; text-align: center;">상세정보/신고내역</th>
										</tr>
										
										<c:if test="${empty banList}">
										<tr>
											<td>영구정지 회원이 없습니다.</td>
										</tr>
										</c:if>
										
										
										<c:if test="${not empty banList}">
										<c:forEach var="banUser" items="${banList }" varStatus="loop">
									 	<tr>
											<td style="width: 60px; text-align: center;">${fn:length(banList) - loop.index }</td>
											<td class="mobile" style="text-align: center;">${banUser.user_dstn_cd }</td>
											<td style="text-align: center;">${banUser.user_name }</td>
											<td class="mobile" style="text-align: center;">${banUser.user_id }</td>
											<td class="mobile" style="text-align: center;">
												<fmt:parseDate value="${banUser.ban_date}" var="ban_date" pattern="yyyy-MM-dd" />
												<fmt:formatDate value="${ban_date}" pattern="yyyy-MM-dd" />
											</td>
											<td style="text-align: center;">
												<button type="button" class="btn btn-success" value="${banUser.user_dstn_cd}" 
												 onclick="newPage()">보기</button>
											</td>
										</tr>
									 	</c:forEach>	
									 	</c:if>
									 		
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<!-- 밑에 공백만드는용 ㅠ -->
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
				
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