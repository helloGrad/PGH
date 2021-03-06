<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">	



<!--//////////////////////// footer End ////////////////////////////-->
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/study.css" rel="stylesheet">

 
<style>

       
            
            



</style>

 
<script type="text/javascript">

/*
 * 박가혜 2017-09-11 연구분야 리스트 
 */
	$(function() {
		
		
		
		majorlist(boardtype);
		
		
		
	});


function openCity(cityName) {
    var i;
    var x = document.getElementsByClassName("city");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    
    console.log(cityName);
    
    if(cityName === "C"){
    
        document.getElementById(cityName).style.display = "block";  
    	majorlist("의학");
    	
    }else{
    	
    	document.getElementById(cityName).style.display = "block"; 
    }
    
    
    
    
    
}

function majorlist(name){
	
	$.ajax({
		url : "${pageContext.request.contextPath }/api/majorlist",
		type : "post",
		//dataType : "json", // 받아야되는 데이터 타입 
		data : 
		//JSON.stringify(replylist),
		{type : name},
		//contentType : 'application/json; charset=utf-8', //json 타입으로 데이터를 보낼때 사용함 

		success : function(response) {

			if (response.result === "fail") {

				console.error(response.message);
				return;
			}

			console.log("성공입니다");
			
			console.log(response.data[0]);
			
			
			var check =response.data.length/3; 
			var size = 1;
			
			console.log(check);
			
			
			
			
			for(var i=0; i<response.data.length; i++){
				
				if(i > check && i<=check*2){
					size=2;
					
				}
				if(i>check*2 && i<=check*3){
					size=3;
					
				}
				if(i>check*3 && i<=check*4){
					//size=4;
					
				}
				
				
				if(response.data[i].cdDstnct == "학과"){ // 
					
			
					 $(".list"+size).append("<li><a href='#'><strong>"+response.data[i].cdNm+"</strong></a></li><ul class='ullist"+i+"'>");
					  
					 for(var j=0; j<response.data.length; j++){
						 
						 if(response.data[j].cdDstnct == "연구분야" && response.data[i].cdId == response.data[j].prntsCdId){
							 
							
						
								
							$(".ullist"+i).append("<li><a href='#'>"+response.data[j].cdNm+"</a></li> ");
							 
							 
							
							}	
						 
					 }
					 $(".list").append("</ul>");
					
					 
				}
				
					
				
			}
			

			
			//response.data.contextpath = "${pageContext.request.contextPath}/noti/api/lab";

		},
		error : function(jqXHR, status, e) {
			console.log("에러입니다");
			console.error(status + " : " + e);
			console.log(jqXHR);
		}
	});
	
	
	
}

</script>

</head>




<body>

<c:import url="/WEB-INF/views/include/header.jsp" />



<c:import url="/WEB-INF/views/include/subHeader.jsp" />

 <!--
    main contents
    page
-->

<div class="row">
<div class="container">

   


 
 
 	<div style="padding: 10px 0 10px 0" class="row">
 	<h3 >관련 학과 및 연구분야</h3>
 	
		<div class="col-sm-4">
            
    	    <ul class="list1">
    	    	
                
    	    </ul>  
    	     
		</div>
		
		<div class="col-sm-4">
	
    	    <ul class="list2">
                
    	    </ul>     
		</div>
		
		<div class="col-sm-4">
	
    	   <ul class="list3">
                
    	    </ul>    
		</div>
		<!-- 
			<div class="col-sm-3" style="padding:60px">
		 
    	    <ul class="list4">
                
    	    </ul>   
		</div> -->
	</div>

  

 
</div>   
 </div>   

	
	
	<!--//////////////////////// footer ////////////////////////////-->
	

	<!--//////////////////////// footer End ////////////////////////////-->
	
				
	
</body>
</html>