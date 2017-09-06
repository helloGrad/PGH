<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<base target="_self" /> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="google-signin-client_id"
	content="31840955156-0oh8u23d3t24v4rguka78knp12vo9jm4.apps.googleusercontent.com">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
	
	
<script src="https://apis.google.com/js/platform.js" async defer></script>

 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">	
<link href="${pageContext.request.contextPath}/resources/css/signup.css"
   rel="stylesheet">
   

   <link
	href="${pageContext.request.contextPath}/resources/css/bootstrap-social.css"
	rel="stylesheet">	
	   <link
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	rel="stylesheet">


	<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">

<script>



//2017-09-01 박가혜 
	$(function() {

		$(document).ready(function() {

			$("#myBtn").click(function() {

				$("#login").css({
					"display" : "block"
				});

			});

			$(".close").click(function() {
				$("#login").css({
					"display" : "none"
				});
			});

			$("html").click(function(event) {
				if (event.target.id === "login") {
					$("#login").css({
						"display" : "none"
					});
				}
			});
			
		
			

		});
		


	$(document).keydown(function(e) { 
			

			 var modal1 = document.getElementById('login');
			  var modal2 = document.getElementById('signup2');
		    if (e.keyCode == 27) { 
		    	
		    	 modal2.style.display = "none";
				   modal1.style.display = "none";
		    } 
		});
	
	

	
	$('#naverLoginBtn2').click(function(){
		  
		
		$("#naverLoginBtn").click();
	});
	

	   
	
	
	
	})
	
	
	  $("#naverLoginBtn2").hover(function(){
		  
	      $(".naverLogo").css("background-image",'url("/net/resources/images/logo-hover.png")');
	      $(".naverLogo").css("background-size",'cover');
	   }, function(){
	      $(".naverLogo").css("background-image",'url("/net/resources/images/logo.png")');
	      $(".naverLogo").css("background-size",'cover');
	   })
	
	var modalOpen = function() {

		   var modal = document.getElementById('signup1');

		   modal.style.display = "block";
		   
		   window.onclick = function(event) {
		       if (event.target == modal) {
		           modal.style.display = "none";
		       }
		   }
		}


		var modalOpen2 = function() {

		   var modal1 = document.getElementById('login');
		   var modal2 = document.getElementById('signup2');


		   modal2.style.display = "block";
		   modal1.style.display = "none";
		   
		   window.onclick = function(event) {
		       if (event.target == modal2) {
		           modal2.style.display = "none";
		       }
		   }
		}
		
		

	
	
</script>


	
	

<title>하이그래드넷</title>
</head>

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.servletContext.contextPath }/">하이그래드넷</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="${pageContext.servletContext.contextPath }/noti/list">모집공고</a></li>
				<li><a href="${pageContext.servletContext.contextPath }/organz/list">기관정보</a></li>
				<li><a href="conference.html">학회</a></li>
				<li><a href="${pageContext.servletContext.contextPath }/counseling/list">상담실</a></li>
				<li><a href="community.html">커뮤니티</a></li>
				<c:choose>
					<c:when test='${authUser.mbDstnct == "관리자" }'>
						<li><a
							href="${pageContext.servletContext.contextPath }/admin/main">관리자페이지</a>
						<li>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${empty authUser }">
						<li><a
							href="${pageContext.servletContext.contextPath }/user/login">로그인</a>
						<li>
						
						<li>
						<a id="myBtn" href="javascript:void(0);">로그인</a>
			
						<li>
					</c:when>
					<c:otherwise>
						<li>${authUser.nknm }님안녕하세요^^;</li>
						<li><a
							href="${pageContext.servletContext.contextPath }/user/logout" id="logout">로그아웃</a>
						<li>
						<li><a
							href="${pageContext.servletContext.contextPath }/user/mypage">마이페이지</a>
						<li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
	
			 
			<div id="login" class="modal" >
		   <div class="modal-content">
		   
		  
		   		 <span class="close">×</span>
		
		   		 
		      <div class="signupbnt">
		      	
		       
		          <a id="loginBtn" class="btn btn-social btn-facebook socialbtn">
   				 <span class="fa fa-facebook"></span> 페이스북 아이디로 로그인
 				 </a>	
 				 	
		        
		         <div id="naver_id_login">
		        
 				 </div>
 			
 			
 				<div class="login-devider"><span>또는</span></div>
 				
		    
		         
		         	<div class="form-group1">
					<input type="text"
							class="form-control" id="email" name="iden"
							placeholder="Enter email">
					</div>
					
					<div id='emailMsg' class="text-danger"></div>
					
					<div class="form-group1">
					 <input type="password"
							class="form-control" id="pwd" name="pw"
							placeholder="Enter password">
					</div>
					

					<div id="passwdMsg" class="text-danger"></div>
					
					 <div id="loginMsg" class="text-danger"></div>
					 
					<p class="text_notice">아이디 또는 비밀번호를 다시 확인하세요.</p>
					
					<div class="form-group">
						<label class="remember-me"><input type="checkbox"> 로그인 상태 유지 </label>
						
						<p class="sighup">
						<a href="javascript:void(0);" onclick="modalOpen3();">비밀번호 찾기</a>  /  <a href="javascript:void(0);" onclick="modalOpen2();">회원가입</a>
						</p>
					    
					</div>
		         

					
		         <button type="submit" class="btn formbtn" onclick="login();" >로그인</button>
		      	
		      	 
			
		      </div>
		      
		      <span class="close"></span>
		   </div>
		</div>
		
		
		
		<div id="signup2" class="modal">
		   <div class="modal-content">
		   
		   		<div>
		   			<button id="naverLoginBtn2" class="btn btn-social socialbtn naverlogin"  style='color:white;'>
		          		<span class="fa naverLogo"></span> Naver 아이디로 로그인
 				 	</button>
		   		</div>
		         
 			
		       
 				 
 			
		      <form action="" id="sighupform">
		      
		      
		         <label class="signupchar"><b>Email</b></label><br> <input
		            type="text" placeholder="Enter Username" name="iden"> <br>
		
		         <label class="signupchar"><b>Password</b></label><br> <input
		            type="text" placeholder="Enter Password" name="password">
		
		         <button type="button" class="formbtn">회원가입</button>
		      </form>
		   </div>
		</div>
					
		

	
</nav>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
		

		
			
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/modalLogin.js"></script>	
		
		<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/login.js"></script>
		
		

