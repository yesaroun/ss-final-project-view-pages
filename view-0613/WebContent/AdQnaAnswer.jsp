<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>관리자 문의하기 답변</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/custom.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/board.css">
</head>
<body>
	<!-- ○ 상단 네비게이션 include -->
	<jsp:include page="./UserNavCs.jsp"></jsp:include>

	<!-- 여백이 없는 반응형 웹을 만들때 container-fluid 사용 -->
    <div class="container-fluid">
    
		<div class="row d-flex d-md-block flex-nowrap wrapper">
           
            <nav class="col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            	<!-- ○ 좌측 메뉴바 include -->
                <jsp:include page="./AdMenuCs.jsp"></jsp:include>
            </nav>            
        </div>
    
	<!-- 코드 들어가기 -->	
	
		<div class="container">
			<div class="row">
				<div class="col-12" id="List_title" style="margin-top: 20px;" >
					문의글(관리자)
				</div>
			</div>
		</div>
	
		<div class="container">
				<div class="row">
						<table id="cont" class="table2 col-12">
						     <tr>
						         <th>제목</th>
						      	 <td>
						      	 	<input type="text" value="홈페이지 활용 방법을 모르겠네요" style="padding-left:15px; width: 500px; height:35px; border: 0px;" readonly="readonly">
						      	 <td>
						     </tr>
						     <tr>    
						         <th>문의자</th>
						         <td>
						         	<input type="text" value="곰돌이" style="padding-left:15px; width: 500px; height:35px; border:0 solid black;" readonly="readonly">
						         	<input type="text" value="bear@test.com" style="padding-left:15px; width: 500px; height:35px; border:0 solid black;" readonly="readonly">
						         </td>
							 </tr>
						     <tr>    
						         <th>문의일자</th>
						         <td>
						         	<input type="text" value="2022-06-01" style="padding-left:15px; width: 500px; height:35px; border:0 solid black;" readonly="readonly">
						         </td>
						     </tr>
						     <tr>    
						         <th>내용</th>
						         <td>
						         	<textarea name="content" rows="10" cols="60" class="textarea">홈페이지 어떻게 사용하는건가요? 튜토리얼 어디가면 볼 수 있죠?</textarea>
						     	</td>    
						     </tr>
						</table>
				</div>
				
				<!-- 관리자 답변 -->
				<div class="container">
					<div class="row" >
						<div class="col-2" style="margin-top: 30px; text-align: right; font-weight: bold; font-size: 18px;" >
							답변
						</div>
						<div class="col-8" style="margin-top: 20px;" >
							<div class="input-group">
								   <input type="text" class="form-control" style="height: 70px; border: 1px solid; background-color: #eef3fd;" placeholder="고객님이 문의하신 내용에 대한 답변은 이렇습니다.">
								      <span class="input-group-btn">
											<button class="btn btn-default" type="button" style="background-color: skyblue; color: white;" data-toggle="modal" data-target="#modal">등록하기</button>
											<button class="btn btn-default" type="button" style="background-color: #1fa766; color: white;" onclick="javascript:location.href='<%=cp%>/AdQnaCont.jsp'">돌아가기</button>
								      </span>
							</div>
						</div><!-- /.col-sm-8 -->
						<div class="col-2" style="margin-top: 20px;" >
							<img src="./img3/operator.png" width="80px;">
						</div>
					</div>
					<br>
					
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


   <!-- modal 만들기 -->
   <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="modal"
   aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h4 class="modal-title">등록되었습니다.</h4>
               
               <button type="button" class="close" data-dismiss="modal">
                  <span aria-hidde="true">&times;</span>
               </button>
            </div>
            
            <div class="modal-body" style="text-align : center;">
               <form>
                  <img src="./img3/warning.png" width="50%;">
                  
                  <div class="modal-footer">
                     <button type="button" class="btn btn-primary" onclick="javascript:location.href='<%=cp%>/adQnaCont.jsp'">확인</button>
                  </div>
                  
               </form>
            </div>
         </div>
      </div>
   </div>

</body>
</html>