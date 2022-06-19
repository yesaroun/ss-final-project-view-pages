<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	String fstCateList = (String)pageContext.getAttribute("fstCateList");
	
	String result = "";
	 
	for (int n=1; n<=fstCateList.length(); n++)		// 1 2 3 4 5
    {
		StringBuffer sb = new StringBuffer();
 	   
		// sb.append("{\"fstCateList.cate_fst_cd\":\"" + fstCateList.cate_fst_cd + "\"");
		// sb.append(",\"fstCateList.cate_fst_name\":\"" + fstCateList.cate_fst_name + "\"},");			// check~!!! 『,』
 	   
		result += sb.toString();
    }
    
    // 마지막 『,』 제거(탈락)
    result = result.substring(0, result.length()-1);
    
    // json 배열 객체 구성
    result = "[" + result + "]";
    
    System.out.println(result);
    
    out.println(result);
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript">

	var result = "";
	
	for (int n=1; n<=5; n++)		// 1 2 3 4 5
	{
		StringBuffer sb = new StringBuffer();
		   
		// JsonTest01_ok.jsp 의 내용을 복사 & 붙여넣기
		sb.append("{\"cateFstCd\":\"" + cateFstCd + "\"");
		sb.append(",\"cateFstName\":\"" + cateFstName + "\"},");			// check~!!! 『,』
		   
		result += sb.toString();
	}
	
	<c:forEach var="fst" items="${fstCateList }">
	"{\"cateFstCd\":\"" + ${fst.cateFstCd } + "\""	
	",\"cateFstName\":\"" + ${fst.cateFstName } + "\"},"
	</c:forEach>
	



</script>
</head>
<body>
</body>
</html>