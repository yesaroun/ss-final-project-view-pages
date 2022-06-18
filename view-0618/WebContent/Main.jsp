<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용약관</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/main.css" />

<script src="./js/userTerms.js"></script>
</head>
<body>
	<!-- ○ 상단 네비게이션 include -->
	<jsp:include page="./GuestNav.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row d-flex d-md-block flex-nowrap wrapper">
			<main id="main" class="col-md-9 float-left col pl-md-5 pt-3 main">
				<div class="page-header mt-3">
					<h2>머니로그</h2>
				</div>
				<p class="lead">최고의 가계부~</p>
				<hr>
				<div class="width collapse show mt-3" aria-expanded="true">
					<p>본 사이트에서는 가계부, 가계부 커뮤니티를 제공합니다.</p>
				</div>
				<div id="carousel" class="carousel slide" style="max-width: 1080px;" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel" data-slide-to="0" class="active"></li>
						<li data-target="#carousel" data-slide-to="1"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" src="./img2/account1.jpg" alt="First slide">
						</div>
						<div class="carousel-item">
						<img class="d-block w-100" src="./img2/account2.jpg" alt="Second slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">이전 사진</span>
					</a>
					<a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">다음 사진</span>
					</a>
				</div>
				<section class="mt-4 mb-3 pt-4 pb-3" style="max-width: 1080px;">
					<p class="lead">공지사항</p>
					<hr>
					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col" class="mobile" style="width:55px; text-align:center;">번호</th>
								<th scope="col" class="mobile" style="text-align:center;">제목</th>
								<th scope="col" class="mobile" style="width:80px; text-align:center;">작성자</th>
								<th scope="col" class="mobile" style="width:120px; text-align:center;">날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" class="mobile" style="text-align:center;">3</th>
								<td>신규 운영진을 모집합니다.</td>
								<td class="mobile" style="text-align:center;">운영자</td>
								<td class="mobile" style="text-align:center;">2018-01-05</td>
							</tr>
							<tr>
								<th class="mobile" scope="row" style="text-align:center;">2</th>
								<td>커뮤니티 웹 사이트에 오신 것을 환영합니다.</td>
								<td class="mobile" style="text-align:center;">운영자</td>
								<td class="mobile" style="text-align:center;">2018-01-04</td>
							</tr>
							<tr>
								<th class="mobile" scope="row" style="text-align:center;">1</th>
								<td>커뮤니티 웹 사이트가 개설되었습니다.</td>
								<td class="mobile" style="text-align:center;">운영자</td>
								<td class="mobile" style="text-align:center;">2018-01-03</td>
							</tr>
						</tbody>
					</table>
				</section>
				<section style="max-width: 1080px;">
					<p class="lead">본사 오시는 길</p>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50606.995703652654!2d126.85363063124998!3d37.55654260000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c993410ca2f63%3A0x5bc4dfe507bd6544!2z7IyN7Jqp6rCV67aB6rWQ7Jyh7IS87YSw!5e0!3m2!1sko!2skr!4v1654937726086!5m2!1sko!2skr"
					 width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</section>
		  </main>
		</div>
	  </div>
    

    <script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>