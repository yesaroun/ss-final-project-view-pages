<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>머니리뷰 사이드바</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/custom.css">
</head>
<body>
	<div class="list-group border-0 card text-center text-md-left">
		<h1 class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><span class="d-none d-md-inline ml-1"> 머니리뷰</span></h1>
		
		<a href="#" class="list-group-item d-inline-block collapsed" data-toggle="collapse"
         data-parent="#sidebar" aria-expanded="false">
        	<img style="width: 20px;" src="./img2/file-text-black.svg"><span class="d-none d-md-inline ml-1"> 게시글 목록</span>
        </a>
        
        <a href="#" class="list-group-item d-inline-block collapsed" data-toggle="collapse"
         data-parent="#sidebar" aria-expanded="false">
        	<img style="width: 20px;" src="./img2/qna.svg"><span class="d-none d-md-inline ml-1"> 댓글 목록</span>
        </a>
		
	</div> 
                
    <script src="./js/jquery-3.2.1.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
</body>
</html>