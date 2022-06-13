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
	  window.location.href = "./adUserList.jsp"
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
		
		<!-- 헤더 ===================================================== -->
		<header id="header">
			<div class="container p-3 bg-dark text-white">
				<div class="row">
					<div class="col-sm-12">
						<div class="btn-group float-left">
							<button type="button" class="btn btn-success dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								댓글 내역 ▼</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="./adUserInfo.jsp">상세 정보</a>
								<a class="dropdown-item" href="./adUserPostList.jsp">게시글 내역</a>
								<a class="dropdown-item" href="./adUserCmntList.jsp" style="background-color: #1fa766;">댓글 내역</a>
							</div>
							
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
			
				<!-- 게시글 내역 -->
				<div class="col-md-12">
					<div class="list-group">
						<h4>댓글 내역<small> 해당 회원이 등록한 댓글입니다.</small></h4>
						<div class="list-group-item">
							<div class="list-group">
								<table class="table table-striped" style="max-width: 1080px;">
						            <thead>
						              <tr>
						                <th scope="col" class="mobile" style="width:50px; text-align:center;">no</th>
						                <th scope="col" class="mobile" style="width:120px; text-align:center;">게시글 번호</th>
						                <th scope="col" class="mobile" style="text-align:center;">댓글 내용</th>
						                <th scope="col" class="mobile" style="width:120px; text-align:center;">날짜</th>
						              </tr>
						            </thead>
						            <tbody>
						            
						              <tr>
						                <td scope="row" class="mobile" style="text-align:center;">5</td>
						                <td scope="row" class="mobile" style="text-align:center;">
						                	<a href="./boardView.html" style="color: #000000;">2032</a>
						                </td>
						                <td> 가게부 잘 보고갑니다 참고할게요 </td>
						                <td class="mobile" style="text-align:center;">2018-01-05</td>
						              </tr>
						              
						              
						              <tr>
						                <td scope="row" class="mobile" style="text-align:center;">5</td>
						                <td scope="row" class="mobile" style="text-align:center;">
						                	<a href="./boardView.html" style="color: #000000;">2032</a>
						                </td>
						                <td> 가게부 잘 보고갑니다 참고할게요 </td>
						                <td class="mobile" style="text-align:center;">2018-01-05</td>
						              </tr>
						              
						              <tr>
						                <td scope="row" class="mobile" style="text-align:center;">5</td>
						                <td scope="row" class="mobile" style="text-align:center;">
						                	<a href="./boardView.html" style="color: #000000;">2032</a>
						                </td>
						                <td> 가게부 잘 보고갑니다 참고할게요 </td>
						                <td class="mobile" style="text-align:center;">2018-01-05</td>
						              </tr>
						              
						              <tr>
						                <td scope="row" class="mobile" style="text-align:center;">5</td>
						                <td scope="row" class="mobile" style="text-align:center;">
						                	<a href="./boardView.html" style="color: #000000;">2032</a>
						                </td>
						                <td> 가게부 잘 보고갑니다 참고할게요 </td>
						                <td class="mobile" style="text-align:center;">2018-01-05</td>
						              </tr>
						              
						              <tr>
						                <td scope="row" class="mobile" style="text-align:center;">5</td>
						                <td scope="row" class="mobile" style="text-align:center;">
						                	<a href="./boardView.html" style="color: #000000;">2032</a>
						                </td>
						                <td> 가게부 잘 보고갑니다 참고할게요 </td>
						                <td class="mobile" style="text-align:center;">2018-01-05</td>
						              </tr>
						              
						              <tr>
						                <td scope="row" class="mobile" style="text-align:center;">5</td>
						                <td scope="row" class="mobile" style="text-align:center;">
						                	<a href="./boardView.html" style="color: #000000;">2032</a>
						                </td>
						                <td> 가게부 잘 보고갑니다 참고할게요 </td>
						                <td class="mobile" style="text-align:center;">2018-01-05</td>
						              </tr>
						              
						            </tbody>
						          </table>
							</div>
						</div>
					</div>
				</div>
				
				
				
				<!-- 밑에 공백만드는용 ㅠ -->
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				
				
				
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