<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">

function checkboxArr(){
	
	var checkArr = [];
	
	$("input[name='codelist']:checked").each(function(i)){
		
		
		checkArr.push($(this).val());
		
	}
		
		$.ajax({
		
			url: '',
			type:'post',
			dataType:'text',
			data : {valueArrTest: checkArr }
			
			
			
		});
	
	
	
}


</script>


<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />
		<Br>

		<h2>맞춤정보입니다. </h2>
		<br>	
		
		<form class="usermadeinfor_form" id="usermadeinfor_form" name="usermadeinfor_form" method="post" action="${pageContext.servletContext.contextPath }/user/usermadeinfor">
		
		<table class="admin-cat" >
		      		<tr>
		      			<th>카테고리명</th>
		      			<th>포스트 수</th>
		      			<th>설명</th>     			
		      		</tr>
		      		
		      		<c:forEach items="${Codelist }" var="vo" varStatus="status">		
		      		 
		      			<tr>
						<td><input type="checkbox" value="${vo.CD_ID}" name="codelist" id="codelist">${vo.CD_ID }</td>
						<td>${vo.CD_NM} </td>
						<td>${vo.CD_DSTNCT }</td>
						</tr>  
		      			
					</c:forEach> 			  
				</table>
			
		<button type="submit" id="usermadeinfor">맞춤정보등록하기</button>
		</form>
		
		체크된 값 : <input type="text" name="checkedVal" id="checkedVal" value=""/>



</body>
</html>