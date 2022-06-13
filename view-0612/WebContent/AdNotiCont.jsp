<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>관리자 공지사항 열람</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/custom.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/board.css">
<script type="text/javascript">

	function notiDelete()
	{
		confirm("삭제가 완료되었습니다.");
		window.location.href = "http://localhost:8090/WEB/adNotiList.jsp"; //★ 링크 수정 ★ 
	}

</script>

</head>
<body>
	<!-- ○ 상단 네비게이션 include -->
	<jsp:include page="./AdNavCs.jsp"></jsp:include>

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
				<div class="col-12" id="List_title" style="margin-top: 30px;" >
					공지사항(관리자)
				</div>
			</div>
		</div>
	
		<div class="container">
				<div class="row">
					<div class="col-12">
						<table id="cont" class="table2">
							<tr>
						         <th>제목</th>
						         <td>
						         	머니로그 업데이트 관련 공지합니다.
						         </td>
						         <th>작성일</th>
						      	 <td>
						      	 	2022.05.17
						      	 <td>
						    </tr>
						     <tr>
							      <th>공지유형</th>
							      	 <td>
							      	 	<label for="pin"><input type="checkbox" id="pin" name="pin" checked> 상단고정</label>
							      	 </td>
							     <th>작성자</th>
						      	 <td>
						      	 	admin1
						      	 <td>	 
						     </tr>
						     <tr>
								 <th>내용</th>
						         <td colspan="4">
						         	<textarea name="content" rows="10" cols="60" readonly="readonly" style="width: 100%;">머니로그를 이용해주신 이용자 여러분, 안녕하세요.</textarea>
						     	</td>   
							 </tr>
						</table>
					</div>
						
				</div>
				<div class="row">
						<div class="col-12" style="margin-top: 20px;">
								<button type="submit" class="btn btn-primary" style="background-color: #1fa766; float: right;"
								onclick="javascript:location.href='<%=cp%>/adNotiUpdate.jsp'">수정하기</button>
								
								<button type="submit" class="btn btn-secondary" style="background-color: skyblue; float: right;" 
								data-toggle="modal" data-target="#modal">삭제하기</button>
								
								<button type="submit" class="btn btn-third" style="background-color: lightgray; float: right;"
								onclick="javascript:location.href='<%=cp%>/adNotiList.jsp'">돌아가기</button>
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


   <!-- modal 만들기 -->
   <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="modal"
   aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h4 class="modal-title">정말 삭제하실건가요?</h4>
               
               <button type="button" class="close" data-dismiss="modal">
                  <span aria-hidde="true">&times;</span>
               </button>
            </div>
            
            <div class="modal-body" style="text-align : center;">
               <form>
                  <img src="./img3/warning.png" width="50%;">
                  
                  <div class="modal-footer">
                     <button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
                     <button type="button" class="btn btn-primary" onclick="notiDelete()">삭제하기</button>
                  </div>
                  
               </form>
            </div>
         </div>
      </div>
   </div>


</body>
</html>