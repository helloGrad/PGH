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
<meta name="google-signin-client_id"
	content="31840955156-0oh8u23d3t24v4rguka78knp12vo9jm4.apps.googleusercontent.com">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>

	
<script src="https://apis.google.com/js/platform.js" async defer></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link
	href="${pageContext.request.contextPath}/resources/css/higrad-signup.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">	
<link href="${pageContext.request.contextPath}/resources/css/fontello-embedded.css" rel="stylesheet">	
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>


.headcolor{

		float: left;
      background-color: #eee;
      position: absolute;
      top: 0;
    	right: 0;
    	width: 100px;
    	height: 380px;
	
}


 .navigator_category {
 
  height: 44px;
    border: 1px solid #999;
    border-width: 1px 0;
  
    margin: 11px 0 11px 0;
    padding: 0 20px 0 0;
    font-family: "나눔고딕","NanumGothic","NanumGothicWebFont","Malgun Gothic","맑은 고딕","Dotum","돋움","Helvetica","Apple SD Gothic Neo","sans-serif";
    font-size: 14px;
    line-height: 42px;
    color: #555;
}
.category_name {

margin: 0 11px;
    font-family: "나눔고딕","NanumGothic","NanumGothicWebFont","Malgun Gothic","맑은 고딕","Dotum","돋움","Helvetica","Apple SD Gothic Neo","sans-serif";
    font-size: 14px;
    line-height: 42px;
    color: #555;

}


ul{ list-style:none; }




.title-text{

    padding: 0;
	text-align: center;
}

.link-gray {
    color:DarkGray;
}

.link-title {
	margin: 30px 0 0 0;
    color: DimGrey;
    
}

 .margin-center {
        margin: 3px 3px 3px 3px;
      
        text-align: center;
    }
    
h4,h6 {display:inline;}



.list-color{

    background-color: #f7f7f7;
}



</style>

<script>
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
	

   <div class="jumbotron text-center" style="background-color: white;">
   
	 <div  class="col-sm-2">
	 
	 </div>
	 

     
     <div class="col-sm-8">
      <img src="${pageContext.request.contextPath}/resources/images/engineering.png" style="width: 100%; max-width: 760px; vertical-align: middle" >   	 
      <h2 class="">Engineering</h2> 
     </div>
  	  <div  class="col-sm-2">
	
	</div>
    
 
   </div>
   

 
<div class="container">

  
  <div class="col-sm-12 navigator_category" role="tablist">
              
              <span class="category_name" onclick="openCity('A')">전체</span>
              <span class="category_name" onclick="openCity('B')">모집공고</span>
              
              <span class="category_name" onclick="openCity('C')">학과/연구분야</span>
              <span class="category_name" onclick="openCity('D')">연구실</span>
              <span class="category_name" onclick="openCity('E')">상담실</span>
   </div>
   
   
      
 <div id="A" class="w3-container city">
     
  <div class="row">
    	
    		<div class="col-sm-2"  >
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/140x100"  style="padding: 20px 0 11px 0" >
          </a>
         </div>
        <div class="col-sm-10">
          <h3>Project One</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
          <a class="btn btn-primary" href="#">View Project</a>
        </div>
     
  
  		<hr>
  	
  </div> 		 
  		 

    <div class="row">
    	
    	
    		<div class="col-sm-2"  >
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/140x100"  style="padding: 20px 0 11px 0" >
          </a>
        </div>
        
        <div class="col-sm-10">
          <h3>Project One</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
          <a class="btn btn-primary" href="#">View Project</a>
        </div>
     
  
  		<hr>
  	
  </div> 	
</div>

<div id="B" class="w3-container city" style="display:none">
  <h2>Paris</h2>
  <p>Paris is the capital of France.</p> 
</div>

<div id="C" class="w3-container city" style="display:none">
 
 
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



<div id="D" class="w3-container city" style="display:none">


		<div class="col-sm-12"  >
         <h3 class="title-text">연구실 리스트</h3>
         <p></p>
        
		        <div class="w3-center w3-margin-bottom">	
		         <button class="btn btn-default margin-center" id="js-searchToggle">enter zip or city, state</button>
		         <button class="btn btn-default margin-center" id="js">filter by services</button>
		     	</div>
         </div>
        
        
        
	 <div class="row">
	    <div class="col-sm-4">
	    <div class="w3-card-2 w3-padding" style="height: 270px">
	    	<div class="w3-margin-top">
	    		 <h4 class="link-title">데이터베이스연구실</h4>
	             <h6 class="title-small">(창원대학교)</h6>
	    	
	    	</div>
	     
	      <hr>
	      <p>부산대학교 금정구 장전동 산30번지 부산대학교 복합성형연구실</p>
	      <p class="icon-volume-control-phone">055-213-3813</p>
	      <div>
	       <button class="btn btn-default margin-center" id="js-searchToggle">데이터마이닝</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">데이터처리</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">빅데이터</button>
	      </div> 
	    </div>
	    </div>
	    
	    
	  <div class="col-sm-4">
	    <div class="w3-card-2 w3-padding" style="height: 270px">
	    	<div class="w3-margin-top">
	    		 <h4 class="link-title">교통및물류시스템연구실</h4>
	      		  <h6 class="title-small">(고려대학교)</h6>
	    	
	    	</div>
	      
	      <hr>
	      <p>서울특별시 성북구 안암로 145 고려대학교 자연계캠퍼스 공학관</p>
	      <p class="icon-volume-control-phone"><p></p>
	       <div>
	       <button class="btn btn-default margin-center" id="js-searchToggle">교통계획및체제</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">교통시설/안전</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">대중교통</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">교통장비</button>
	        </div> 
	    </div>
	    </div>
	    
	    
	    
	   	  <div class="col-sm-4">
	    <div class="w3-card-2 w3-padding" style="height: 270px">
	    		<div class="w3-margin-top">
	    		<h4 class="link-title">나노정밀계측연구실</h4>
	            <h6 class="title-small">(경북대학교)</h6>
	    	
	    	</div>
	      
	      <hr>
	      <p>서울시 마포구 백범로 35</p>
	      <p class="icon-volume-control-phone">02-705-7973</p>
	        <div class="">
	       <button class="btn btn-default margin-center" id="js-searchToggle">나노구조</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">나노구조제어고분자재료</button>
	     </div> 
	       
	    </div>
	    </div>
	    
  </div>
  
  
  <br>
  <div class="row">
	    <div class="col-sm-4">
	    <div class="w3-card-2 w3-padding" style="height: 270px">
	    	<div class="w3-margin-top">
	    		 <h4 class="link-title">데이터베이스연구실<small class="link-gray">창원대학교</small>/<small class="link-gray">경남</small></h4>
	             
	    	
	    	</div>
	     
	      <hr>
	      <p>금정구 장전동 산30번지 부산대학교 복합성형연구실</p>
	      <p class="icon-volume-control-phone">055-213-3813</p>
	      <div>
	       <button class="btn btn-default margin-center" id="js-searchToggle">데이터마이닝</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">데이터처리</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">빅데이터</button>
	      </div> 
	    </div>
	    </div>
	    
	    
	  <div class="col-sm-4">
	    <div class="w3-card-2 w3-padding" style="height: 270px">
	    	<div class="w3-margin-top">
	    		 <h4 class="link-title">교통및물류시스템연구실<small class="link-gray">고려대학교</small></h4>
	    	
	    	</div>
	      
	      <hr>
	      <p>서울특별시 성북구 안암로 145 고려대학교 자연계캠퍼스 공학관</p>
	      <p class="icon-volume-control-phone"><p></p>
	       <div>
	       <button class="btn btn-default margin-center" id="js-searchToggle">교통계획및체제</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">교통시설/안전</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">대중교통</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">교통장비</button>
	        </div> 
	    </div>
	    </div>
	    
	    
	    
	   	  <div class="col-sm-4">
	    <div class="w3-card-2 w3-padding" style="height: 270px">
	    		<div class="w3-margin-top">
	    		<h4 class="link-title">나노정밀계측연구실<small class="link-gray">경북대학교</small>/<small class="link-gray">대구</small></h4>
	           
	    	
	    	</div>
	      
	      <hr>
	      <p>북구 대학로 80, 경북대학교</p>
	      <p class="icon-volume-control-phone">02-705-7973</p>
	        <div class="">
	       <button class="btn btn-default margin-center" id="js-searchToggle">나노구조</button>
	       <button class="btn btn-default margin-center" id="js-searchToggle">나노구조제어고분자재료</button>
	     </div> 
	       
	    </div>
	    </div>
	    
  </div>
  
 
  

  
  
</div>

<div id="E" class="w3-container city" style="display:none">
  <h2>Paris</h2>
  <p>Paris is the capital of France.</p> 
</div>

 
 
</div>   
    

	
	
	<!--//////////////////////// footer ////////////////////////////-->
	<c:import url="/WEB-INF/views/include/footer.jsp" />

	<!--//////////////////////// footer End ////////////////////////////-->
	
				
	
</body>
</html>