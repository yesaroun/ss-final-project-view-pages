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
	  window.location.href = "./adCmntInfo.jsp"
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
	<jsp:include page="./AdUserCmntList.jsp"></jsp:include>
	
	<!-- 여백이 없는 반응형 웹을 만들때 container-fluid 사용 -->
    <div class="container-fluid">
    
    	<div class="row d-flex d-md-block flex-nowrap wrapper">
            <nav class="col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            	<!-- ○ 좌측 메뉴바 include -->
                <jsp:include page="./AdMenuMain.jsp"></jsp:include>
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
							<button type="submit" class="btn btn-primary" style="width:100px; background-color: #9b9b9b;" onclick="newPage()">게시글</button>
							<button type="submit" class="btn btn-primary" style="width:100px; background-color: #1fa766;">댓글</button>
						</div>
						
						<div class="btn-group float-right">
							<button type="button" class="btn btn-success dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								공개 ▼</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="./adCmntList.jsp">전체</a>
								<a class="dropdown-item" href="./adCmntOpen.jsp" style="background-color: #1fa766;">공개</a>
								<a class="dropdown-item" href="./adCmntPrivate.jsp">비공개</a>
							</div>
						</div>
						
						
					</div>
				</div>
			</div>
		</header>
		<!-- 헤더 ===================================================== -->
		
		<div class="container">
			<div class="row">
			
				<!-- 게시글 리스트 -->
				<div class="col-md-12">

					<div class="list-group">
						<h4> [공개] <small> 머니리뷰에 게시된 댓글 리스트입니다.</small></h4>
						<div class="list-group-item">
							<div class="list-group">
								<table class="table table-striped" style="max-width: 1080px;">
						            <thead>
						              <tr>
						                <th scope="col" class="mobile" style="width:50px; text-align:center;">no</th>
						                <th scope="col" style="width:150px; text-align:center;">게시글 번호</th>
						                <th scope="col" style="width:150px; text-align:center;">댓글 번호</th>
						                <th scope="col" class="mobile" style="width:200px; text-align:center;">댓글 내용</th>
						                <th scope="col" class="mobile" style="width:150px; text-align:center;">작성자</th>
						                <th scope="col" class="mobile" style="width:150px; text-align:center;">날짜</th>
						                <th scope="col" style="width:150px; text-align:center;">공개여부</th>
						                <th scope="col" style="width:100px; text-align:center;">상세정보</th>
						              </tr>
						            </thead>
						            <tbody>
						            
						              <tr>
						                <td scope="row" class="mobile" style="text-align:center;">5</td>
						                <td scope="row" style="text-align:center;">
						                	<a href="./adPostRept.jsp" style="color: #000000;">2032</a>
						                </td>
						                <td scope="row" style="text-align:center;">
						                	<a href="./adPostRept.jsp" style="color: #000000;">135</a>
						                </td>
						                <td class="mobile"> 잘보고갑니다~ </td>
						                <td class="mobile" scope="row" style="text-align:center;">test@test.com</td>
						                <td class="mobile" style="text-align:center;">2022-01-05</td>
						                <td scope="row" style="text-align:center;"> 공개 </td>
						                <td style="text-align: center;">
											<button type="button" class="btn btn-success" onclick="newPage2()">보기</button>
										</td>
						              </tr>
						              
						              <tr>
						                <td scope="row" class="mobile" style="text-align:center;">5</td>
						                <td scope="row" style="text-align:center;">
						                	<a href="./adPostRept.jsp" style="color: #000000;">2032</a>
						                </td>
						                <td scope="row" style="text-align:center;">
						                	<a href="./adPostRept.jsp" style="color: #000000;">135</a>
						                </td>
						                <td class="mobile"> 가게부 이상하게 썼네요! </td>
						                <td class="mobile" scope="row" style="text-align:center;">test@test.com</td>
						                <td class="mobile" style="text-align:center;">2022-01-05</td>
						                <td scope="row" style="text-align:center;"> 공개 </td>
						                <td style="text-align: center;">
											<button type="button" class="btn btn-success" onclick="newPage2()">보기</button>
										</td>
						              </tr>
						              
						              <tr>
						                <td scope="row" class="mobile" style="text-align:center;">5</td>
						                <td scope="row" style="text-align:center;">
						                	<a href="./adPostRept.jsp" style="color: #000000;">2032</a>
						                </td>
						                <td scope="row" style="text-align:center;">
						                	<a href="./adPostRept.jsp" style="color: #000000;">135</a>
						                </td>
						                <td class="mobile"> 재밌게 보고갑니다~ </td>
						                <td class="mobile" scope="row" style="text-align:center;">test@test.com</td>
						                <td class="mobile" style="text-align:center;">2022-01-05</td>
						                <td scope="row" style="text-align:center;"> 공개 </td>
						                <td style="text-align: center;">
											<button type="button" class="btn btn-success" onclick="newPage2()">보기</button>
										</td>
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


	<!-- 밑에 공백만드는용 ㅠ -->
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	


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