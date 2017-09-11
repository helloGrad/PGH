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




<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.min1.css">
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<link href="${pageContext.request.contextPath}/resources/css/study.css" rel="stylesheet">

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
    font-size: 18px;
    
}

    
h4,h6 {display:inline;}



.list-color{

    background-color: #FBFBFB;
}


.area-title{
float1: right;
padding: 5px 10px;


}

.small-btn {
   font-size: 14px; 
   border: 1px solid transparent;
    border-radius: 4px;
    padding: 6px 6px;
                            
}

.tel-color{

color:green;

}


	   		 
.list-hr{

border: 2px;
border-top: solid 1px #CCC;

}


@media screen and (max-width: 400px) {
           
			
					
			.nopadding {
  			 padding: 0 !important;
   			margin: 0 !important;
   			
			}
			
			 .small-btn {
		   		  font-size: 10px; 
		   		 border: 1px solid transparent;
   				 border-radius: 4px;
   				  padding: 3px 3px;
		   		 }
		   		 .link-title {
				    color: DimGrey;
				    font-size: 15px;
				    
				}
				.area-title{
				float1: right;
				padding: 5px 5px;
				font-size: 8px;
				
				}
				
		
            
@media screen and (min-width: 401px) and (max-width: 600px) {
               
         
					
						
				.nopadding {
  			 padding: 0 !important;
   			margin: 0 !important;
			}
			
			 .small-btn {
		   		  font-size: 10px; 
		   		 border: 1px solid transparent;
   				 border-radius: 4px;
   				  padding: 3px 3px;
		   		 }
		   		 .link-title {
				    color: DimGrey;
				    font-size: 15px;
				    
				}
				.area-title{
				float1: right;
				padding: 5px 5px;
				font-size: 8px;
				
				}
			
			
			

            }
@media screen and (min-width: 801px) {
            
            
	            .nopadding {
	
					}
					
			
		   		 
		   		 .small-btn {
					font-size: 14px; 
					border: 1px solid transparent;
					 border-radius: 4px;
					 padding: 6px 6px;
							   		 
					}
					.link-title {
				    color: DimGrey;
				    font-size: 18px;
				    
				}
				

			
		   		 
		   		 
                
}
            
            
            



</style>
<script type="text/javascript">
	$(function() {
		
		
		
		majorlist("의학");
		
		
		
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
	<nav class="navbar navbar-default navbar-fixed-top al">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.servletContext.contextPath }/">하이그래드넷</a>
            <ul class="nav navbar-nav">
                <li class="dropdown dropdown-large">
                    <a class=" navbar-brand dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티 <span
                            class="caret"></span></a>

                    <ul class="dropdown-menu dropdown-menu-large row">
                        <div class="">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#">모든 커뮤니티</a></li>
                                <li><a href="#">즐겨찾기</a></li>
                            </ul>
                        </div>

                        <br>

                        <li class="col-xs-3 col-lg-3 table-bordered">
                            <ul>
                                <br>
                                <li class="quick-menu"><a href="#"><i class="glyphicon glyphicon-search"></i>
                                    <div class="lead"><b>대학원</b></div>
                                </a></li>
                                <!--<li class=" "><a href="#"><img src="images/higrad-img/traffic.jpg"><div class="">대학원</div></a></li>-->
                            </ul>
                        </li>
                        <li class="col-xs-3 col-lg-3 table-bordered">
                            <ul>
                                <br>
                                <li class="quick-menu"><a href="#"><img src="images/higrad-img/safari.jpg"></a>
                                    <div class=""><b>질문하기</b></div>
                                </li>
                            </ul>
                        </li>
                        <li class="col-xs-3 col-lg-3 table-bordered">
                            <ul>
                                <br>
                                <li class="quick-menu"><a href="#"><img src="images/higrad-img/chemistry.jpg"></a>
                                    <div class=""><b>연구실</b></div>
                                </li>
                            </ul>
                        </li>
                        <li class="col-xs-3 col-lg-3 table-bordered">
                            <ul>
                                <br>
                                <li class="quick-menu"><a href="#"><i class="glyphicon glyphicon-cog"></i>
                                    <div class="lead"><b>설정</b></div>
                                </a></li>
                                <!--<li class=""><a href="#"><img src="images/higrad-img/settings.jpg"></a><div class="">설정</div></li>-->
                            </ul>
                        </li>

                    </ul>
                </li>
            </ul>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href=""> <i class="glyphicon glyphicon glyphicon-search" style="font-size: 1.5em;"></i></a></li>
                <li><a href=""> <i class="glyphicon glyphicon-bell" style="font-size: 1.5em;"></i></a></li>
                <li><a href=""> <i class="glyphicon glyphicon-user" style="font-size: 1.5em;"></i></a></li>
            </ul>
        </div>
    </div>
</nav>

<!--
    학과 구분 nav 박스
-->
<div class="row major-nav-box">
    <div class="container">
        <div class=" text-center" style="background-color: white;">
            <div class="col-sm-2"></div>


            <div class="col-sm-8">
                <!--<img src="images/higrad-img/Engineering.jpg"-->
                <!--style="width: 100%; max-width: 760px; vertical-align: middle">-->
                <h2 class="" style="margin-bottom: -0.5em;">Engineering</h2>

            </div>
            <div class="col-sm-2"></div>
            <ul class="nav navbar-nav navbar-left">
                <li><a href="${pageContext.servletContext.contextPath }/">전체</a></li>
                <li><a href="${pageContext.servletContext.contextPath }/study/notice">모집공고</a></li>
                <li><a href="${pageContext.servletContext.contextPath }/study/discussion">토론</a></li>
                <li><a href="${pageContext.servletContext.contextPath }/study/research">연구과제</a></li>
                <li><a href="${pageContext.servletContext.contextPath }/study/lab">연구실</a></li>

            </ul>
        </div>
    </div>


</div>

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