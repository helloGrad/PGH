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

	


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">	

<!--//////////////////////// footer End ////////////////////////////-->
<link href="${pageContext.request.contextPath}/resources/css/study.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
<!-- 
<style>



.headcolor {
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
	font-family: "나눔고딕", "NanumGothic", "NanumGothicWebFont",
		"Malgun Gothic", "맑은 고딕", "Dotum", "돋움", "Helvetica",
		"Apple SD Gothic Neo", "sans-serif";
	font-size: 14px;
	line-height: 42px;
	color: #555;
}

.category_name {
	margin: 0 11px;
	font-family: "나눔고딕", "NanumGothic", "NanumGothicWebFont",
		"Malgun Gothic", "맑은 고딕", "Dotum", "돋움", "Helvetica",
		"Apple SD Gothic Neo", "sans-serif";
	font-size: 14px;
	line-height: 42px;
	color: #555;
}

ul {
	list-style: none;
}

.title-text {
	padding: 0;
	text-align: center;
}

.link-gray {
	color: DarkGray;
}

.link-title {
	margin: 30px 0 0 0;
	color: DimGrey;
	font-size: 18px;
}

h4, h6 {
	display: inline;
}

.list-color {
	background-color: #FBFBFB;
}

.area-title {
	float1: right;
	padding: 5px 10px;
}

.small-btn {
	font-size: 14px;
	border: 1px solid transparent;
	border-radius: 4px;
	padding: 6px 6px;
}

.tel-color {
	color: green;
}

.list-hr {
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
	.area-title {
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
		.area-title {
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
}
</style>

-->
<script type="text/javascript">
/*
 * 박가혜 2017-09-11 연구분야 리스트 
 */
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

		if (cityName === "C") {

			document.getElementById(cityName).style.display = "block";
			majorlist("의학");

		} else {

			document.getElementById(cityName).style.display = "block";
		}

	}

	function majorlist(name) {

		$
				.ajax({
					url : "${pageContext.request.contextPath }/api/majorlist",
					type : "post",
					//dataType : "json", // 받아야되는 데이터 타입 
					data :
					//JSON.stringify(replylist),
					{
						type : name
					},
					//contentType : 'application/json; charset=utf-8', //json 타입으로 데이터를 보낼때 사용함 

					success : function(response) {

						if (response.result === "fail") {

							console.error(response.message);
							return;
						}

						console.log("성공입니다");

						console.log(response.data[0]);

						var check = response.data.length / 3;
						var size = 1;

						console.log(check);

						for (var i = 0; i < response.data.length; i++) {

							if (i > check && i <= check * 2) {
								size = 2;

							}
							if (i > check * 2 && i <= check * 3) {
								size = 3;

							}
							if (i > check * 3 && i <= check * 4) {
								//size=4;

							}

							if (response.data[i].cdDstnct == "학과") { // 

								$(".list" + size)
										.append(
												"<li><a href='#'><strong>"
														+ response.data[i].cdNm
														+ "</strong></a></li><ul class='ullist"+i+"'>");

								for (var j = 0; j < response.data.length; j++) {

									if (response.data[j].cdDstnct == "연구분야"
											&& response.data[i].cdId == response.data[j].prntsCdId) {

										$(".ullist" + i).append(
												"<li><a href='#'>"
														+ response.data[j].cdNm
														+ "</a></li> ");

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

   



        <div class="row">

            <div class="col-sm-12">
                <h3 class="title-text">연구실 리스트</h3>
                <p></p>

                <div class="w3-center w3-margin-bottom">
                    <button class="btn btn-default margin-center" id="js-searchToggle">enter zip or city, state</button>
                    <button class="btn btn-default margin-center" id="js">filter by services</button>
                </div>
            </div>

        </div>


       	<div class="row">
	    <div class="col-sm-4 nopadding">
	    <div class="w3-card-2 w3-padding list-color w3-hover-shadow" style="height: 270px">
	    	<div class="w3-margin-top">
	    		 <h4 class="link-title">데이터베이스연구실<small class="link-gray">창원대학교</small>
	    		 <button class="w3-button w3-white w3-border w3-border-green w3-round-large area-title w3-tiny">경남</button></h4>
	    	</div>
	     
	      <hr class="list-hr">
	      <p>금정구 장전동 산30번지 부산대학교 복합성형연구실</p>
	      <p class="icon-volume-control-phone tel-color">055-213-3813</p>
	      <div>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">데이터마이닝</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">데이터처리</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">빅데이터</button>
	      </div> 
	    </div>
	    </div>
	    
	    
	  <div class="col-sm-4 nopadding">
	    <div class="w3-card-2 w3-padding list-color w3-hover-shadow" style="height: 270px">
	    	<div class="w3-margin-top">
	    		 <h4 class="link-title">교통및물류시스템연구실<small class="link-gray">고려대학교</small>
	    		 <button class="w3-button w3-white w3-border w3-border-green w3-round-large area-title w3-tiny">서울</button></h4>
	    	
	    	</div>
	      
	      <hr class="list-hr">
	      <p>서울특별시 성북구 안암로 145 고려대학교 자연계캠퍼스 공학관</p>
	      <p class="icon-volume-control-phone tel-color"><p></p>
	       <div>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">교통계획및체제</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">교통시설/안전</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">대중교통</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">교통장비</button>
	        </div> 
	    </div>
	    </div>
	    
	    
	    
	   	  <div class="col-sm-4 nopadding">
	    <div class="w3-card-2 w3-padding list-color w3-hover-shadow" style="height: 270px">
	    		<div class="w3-margin-top">
	    		<h4 class="link-title">나노정밀계측연구실<small class="link-gray">경북대학교</small>
	    	<button class="w3-button w3-white w3-border w3-border-green w3-round-large area-title w3-tiny">대구</button></h4>
	           
	    	
	    	</div>
	      
	      <hr class="list-hr">
	      <p>북구 대학로 80, 경북대학교</p>
	      <p class="icon-volume-control-phone tel-color">02-705-7973</p>
	        <div class="">
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">나노구조</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">나노구조제어고분자재료</button>
	     </div> 
	       
	    </div>
	    </div>
	    
  </div>


        <br>



		<div class="row">
	    <div class="col-sm-4 nopadding">
	    <div class="w3-card-2 w3-padding list-color w3-hover-shadow" style="height: 270px">
	    	<div class="w3-margin-top">
	    		 <h4 class="link-title">데이터베이스연구실<small class="link-gray">창원대학교</small>
	    		 <button class="w3-button w3-white w3-border w3-border-green w3-round-large area-title w3-tiny">경남</button></h4>
	    	</div>
	     
	      <hr class="list-hr">
	      <p>금정구 장전동 산30번지 부산대학교 복합성형연구실</p>
	      <p class="icon-volume-control-phone tel-color">055-213-3813</p>
	      <div>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">데이터마이닝</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">데이터처리</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">빅데이터</button>
	      </div> 
	    </div>
	    </div>
	    
	    
	  <div class="col-sm-4 nopadding">
	    <div class="w3-card-2 w3-padding list-color w3-hover-shadow" style="height: 270px">
	    	<div class="w3-margin-top">
	    		 <h4 class="link-title">교통및물류시스템연구실<small class="link-gray">고려대학교</small>
	    		 <button class="w3-button w3-white w3-border w3-border-green w3-round-large area-title w3-tiny">서울</button></h4>
	    	
	    	</div>
	      
	      <hr class="list-hr">
	      <p>서울특별시 성북구 안암로 145 고려대학교 자연계캠퍼스 공학관</p>
	      <p class="icon-volume-control-phone tel-color"><p></p>
	       <div>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">교통계획및체제</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">교통시설/안전</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">대중교통</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">교통장비</button>
	        </div> 
	    </div>
	    </div>
	    
	    
	    
	   	  <div class="col-sm-4 nopadding">
	    <div class="w3-card-2 w3-padding list-color w3-hover-shadow" style="height: 270px">
	    		<div class="w3-margin-top">
	    		<h4 class="link-title">나노정밀계측연구실<small class="link-gray">경북대학교</small>
	    	<button class="w3-button w3-white w3-border w3-border-green w3-round-large area-title w3-tiny">대구</button></h4>
	           
	    	
	    	</div>
	      
	      <hr class="list-hr">
	      <p>북구 대학로 80, 경북대학교</p>
	      <p class="icon-volume-control-phone tel-color">02-705-7973</p>
	        <div class="">
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">나노구조</button>
	       <button class="small-btn btn-default margin-center" id="js-searchToggle">나노구조제어고분자재료</button>
	     </div> 
	       
	    </div>
	    </div>
	    
  </div>
  
     

 
 
</div>   
 </div>   

	
	
	<!--//////////////////////// footer ////////////////////////////-->
	

	<!--//////////////////////// footer End ////////////////////////////-->
	
				
	
</body>
</html>