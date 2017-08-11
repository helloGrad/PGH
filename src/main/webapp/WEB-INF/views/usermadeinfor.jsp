<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){

	
	var userid= $("#userid").val();
	
	var inforlist = $("#inforlist").val();
	
	
	alert(inforlist);
	
	
	 $('input:checkbox[name="ch1"]').each(function() {
		
		
		     if(this.value == "비교값"){ //값 비교
		            this.checked = true; //checked 처리
		      }
		 });



	

	$("#information_modifiy").submit(function(event) {

			event.preventDefault();

			var infor = [];
			
			
			

			$('input:checkbox[name="ch1"]').each(function() {

				
				
				if (this.checked == true) {

					infor.push(this.value);

				}

			});
			for (var i = 0; i < infor.length; i++) {
				// alert(infor[i]); 
			}
			
			if(infor.length===0){
				
				alert("맞춤정보를 선택하지 않았습니다. "); 
				return false; 
				
			}
			
			jQuery.ajaxSettings.traditional = true;

			console.log(infor);
		
			$.ajax( {
				url : "${pageContext.request.contextPath}/user/usermadeinfor/modifiy",
				type: "post",
				data: {infor: infor},
				
							
				success: function(response){

					
						if(response.result === "fail"){
							
							console.error(response.message);
							return;
						}
					
						
						//parent.window.location.href = "${pageContext.request.contextPath}/user/usermadeinfor";						
						
					
				},
				error: function( jqXHR, status, e ){
					console.error( status + " : " + e );
				}
				} );
			

		});
	
	
	

	});
</script>


<body>

		<c:import url="/WEB-INF/views/include/header.jsp" />
			<Br>
			<h2>맞춤정보입니다. </h2>
			<br>	
		
			
		<c:choose>
		<c:when test='${fn:length(informationlist)>0 }'>		
		<h2>내가 선택한 맞춤정보 </h2>
		<c:forEach items="${informationlist }" var="vo" varStatus="status">	
		      		
	

		<a>${vo.CD_DSTNCT }</a>
		<a>${vo.CD_NM}</a>
		<br>
	
			
	
		</c:forEach>
		 <input type="hidden" name="inforlist" id ="inforlist" value="${informationlist }" />	

		<br>
		<h2>맞춤정보수정하기 </h2>
		<br>
		<form class="usermadeinfor_form" id="information_modifiy" name="information_modifiy" method="post">
		
		
		
					<c:forEach items="${Codelist }" var="vo" varStatus="status">	
		      		
		      		<div>
		      		<input type="hidden" name="cnt" value="1"/>
					<a>${vo.CD_DSTNCT }</a>
					<input type="checkbox"  id="ch${vo.CD_ID}" name="ch1" value="${vo.CD_ID}"/>${vo.CD_NM}
					<br>

				
					</div>
					</c:forEach> 
		
					 <input type="hidden" name="userid" id ="userid" value="${authUser.MB_NO }" />

		
		<button type="submit" value="맞춤정보수정하기">맞춤정보수정하기</button>
		</form>
		 
		</c:when>



		<c:otherwise>
		<form class="usermadeinfor_form" id="usermadeinfor_form" name="usermadeinfor_form" method="post" action="${pageContext.servletContext.contextPath }/user/usermadeinfor">
		
		
		      		<c:forEach items="${Codelist }" var="vo" varStatus="status">	
		      		
		      		<div>
		      		<input type="hidden" name="cnt" value="1"/>
					<a>${vo.CD_DSTNCT }</a>
					<input type="checkbox"  id="ch${vo.CD_ID}" name="ch1" value="${vo.CD_ID}"/>${vo.CD_NM}
					<br>

				
					</div>
					</c:forEach> 			  
				
			
				<button type="submit" id="usermadeinfor">맞춤정보등록하기</button>
		</form>
		</c:otherwise>			
		</c:choose>
				


</body>
</html>