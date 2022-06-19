<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가계부 당일 내역</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/main.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
/* 
	$(document).ready(function()
	{
		// 테스트
		alert("확인");
		ajaxRequest();

		$("#inoutCd").change(function()
		{
			// 테스트
			alert("변경~!!!");
			
			// Ajax 요청 및 응답 처리
			ajaxRequest();
		});
	});

	function ajaxRequest()
	{
		var param = "inoutCd=" + $("#inoutCd").val();
		
		alert(param);
		
		$.ajax(
		{
			type:"POST"
			, url:"Ajax.jsp"
			, data:param
			, dataType:"Json"
			, success:function(jsonObj)
			{
				var result = "";
				
				var cateFstCd = jsonObj.cateFstCd;
				var cateFstName = jsonObj.cateFstName;
				
				for (var idx=0; idx<jsonObj.length; idx++)
				{
					var cateFstCd = jsonObj[idx].cateFstCd;
					var cateFstName = jsonObj[idx].cateFstName;
					
					result += "<option value='" + cateFstCd + "'>" + cateFstName + "</option>"
				}
				
				$("#fstCate").append(result);

			}
			, beforeSend:showRequest
			, error:function(e)
			{
				alert(e.responseText);
			}
		});
	}
*/
</script>
</head>
<body>
	<!-- 상단 네비게이션바 -->
	<jsp:include page="./UserNav.jsp"></jsp:include>
	    

     <div class="container mt-3">
      	<div class="row">
      		<div class="col-12" style="text-align: center;">
    			<h2>${sessionScope.month}월 9일 가계부</h2>
    		</div>
	    </div>
		<form class="row mt-3">
				<table class="col-12">
					<tbody>
						<tr>
							<td>
								<select name="inoutCd" id ="inoutCd" style="width: 100%;">
									<option value="" selected>구분</option>
									<c:if test="${not empty inoutCateList}">
									<c:forEach var="inoutCate" items="${inoutCateList }" varStatus="status">
									<option value="${inoutCate.inout_cd }">${inoutCate.inout_cont }</option>
									</c:forEach>
									</c:if>
								</select>
							</td>
							<td>
								<select name="fstCate" id="fstCate" style="width: 100%;">
									<option value="" selected>1차카테고리</option>
									<!-- 
									<option value="mainIn">주수입</option>
									<option value="subIn">부수입</option>
									 -->
								</select>
							</td>
							<td>
								<select name="division"style="width: 100%;">
									<option value="" selected>2차</option>
									<option value="salary">급여</option>
									<option value="ex">기타</option>
								</select>
							</td>
							<td>
								<input type="text" style="width: 100%;" placeholder="상세내역">
							</td>
							<td>
								<input type="text"style="width: 100%;" placeholder="금액">
							</td>
							<td>
								<button id="next-btn" type="submit" class="btn btn-primary" style="background-color: #1fa766; width: 100%;">등록</button>
							</td>
							<td>
								<img src="img2/icon.png" alt="아이콘" style="width: 35px;">
							</td>
						</tr>
					</tbody>
				</table>
		</form>
	    <div class="row mt-3">
	    	<div class="col-12">
	    		<table class="table table-striped" >
			        <thead>
			            <tr>
			                <th class="mobile" style="width: 120px; text-align: center;">분류</th>
			                <th class="mobile" style="width: 120px; text-align: center;">1차 분류</th>
			                <th style="width: 120px; text-align: center;">2차 분류</th>
			                <th class="mobile" style="text-align: center;">상세내역</th>
			                <th style="width: 200px; text-align: center;">금액</th>
			            </tr>
			        </thead>
			        <tbody>
			        	<c:if test="${empty dayInoutList}">
						<tr>
							<td>등록 내역이 없습니다.</td>
						</tr>
						</c:if>
						
						<c:if test="${not empty dayInoutList}">
						<c:forEach var="dayList" items="${dayInoutList }">
					 	<tr>
							<td class="mobile" style="text-align: center;">${dayList.inout_cont}</td>
							<td class="mobile" style="text-align: center;">${dayList.cate_fst_name}</td>
			                <td style="text-align: center;">${dayList.cate_sec_name}</td>
			                <td style="text-align: center;">${dayList.acnt_dtl_cont}</td>
			                <td class="mobile" style="text-align: center;">
				                <fmt:formatNumber value="${dayList.amnt}" groupingUsed="true"></fmt:formatNumber>
		                	</td>
						</tr>
					 	</c:forEach>	
					 	</c:if>
			        </tbody>
			    </table>	
	    	</div>
	    </div>
		<div class="row">
			<div class="col-12">
				<div class="text-center" style="margin-right: auto; margin-left: auto;">
					<a href="calendar.action" class="btn btn-primary"
	         		style="background-color: #1fa766;">내 가계부로 돌아가기</a>
				</div>
			</div>
		</div>
    </div>	

	    
	<script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>