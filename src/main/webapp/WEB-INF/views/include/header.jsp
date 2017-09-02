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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link
	href="${pageContext.request.contextPath}/resources/css/higrad-signup.css"
	rel="stylesheet">	
<link href="${pageContext.request.contextPath}/resources/css/signup.css"
   rel="stylesheet">	
	
<style>
/*회원가입 버튼 페이지*/

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}


.fbbtn {
    padding: 14px 20px;
    background-color: #4B66A0;
}

.naverbtn {
    padding: 14px 20px;
    background-color: #1EC545;
}

.formbtn {
    padding: 14px 20px;
    background-color: #FF0000;
}


.naverbtn, .formbtn, .fbbtn {
   width : 90%;
   position : relative;
   
}

.signupbnt {
   display: block;
   text-align: center;
}


.loginhr {
   width : 90%;
}

#loginchar{
   text-align: center;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; 
    border: 1px solid #888;
    width: 50%; 
    width : 400px;
}

/* 회원가입 폼 */

input[type=text], input[type=password], input[type=email] {
    width: 90%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    text-align1: center;
     height: 48px;
}



#sighupform {
   text-align: center;
}

.signupchar {
   text-align: left;
}

.remember-me {
    float: left;
    padding-top: 0;
    padding-bottom: 0;
    padding: 12px 20px;
    margin: 8px 0;
}

.sighup {
    float: right;
    padding-top: 0;
    padding-bottom: 0;
    padding: 12px 20px;
    margin: 8px 0;
}

</style>
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
	
	
function login() {

		event.preventDefault();
		 
		$("#myModal").css({
			"display" : "block"
		});
		
		var email = $("#email").val();
		var pwd = $("#pwd").val();
		

		alert(email);
		alert(pwd);

		//jQuery.ajaxSettings.traditional = true;

		//alert(JSON.stringify(replylist));
	

		$.ajax({
			url : "${pageContext.servletContext.contextPath }/user/auth",
			data : "email="+email
			 +"&pwd="+pwd,
		

			success : function(response) {

				if (response.result === "fail") {

					console.error(response.message);
					return;
				}

				console.log("성공입니다");
			
				console.log(response.data);
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
	
	
			
			<div id="login" class="modal">
		   <div class="modal-content">
		      <div class="signupbnt">
		         <button type="button" class="fbbtn" id="loginBtn">페이스북으로 로그인</button>
		         <div id="naver_id_login" class=""></div>
       			<button type="button" class="naverbtn">네이버로 로그인</button> 
       			 
		         <hr class="loginhr">
		         <div id="loginchar">또는</div>
		         <hr class="loginhr">
		         
		         	<div class="form-group">
					<input type="email"
							class="form-control" id="email" name="iden"
							placeholder="Enter email">
					</div>
					<div class="form-group">
					 <input type="password"
							class="form-control" id="pwd" name="pw"
							placeholder="Enter password">
					</div>

					
					<div class="form-group">
						<label class="remember-me"><input type="checkbox"> 로그인 상태 유지 </label>
						<a href="javascript:void(0);" onclick="modalOpen2();" class="sighup" data-modal-href="/signup_modal?" data-modal-type="signup"> 회원 가입</a>
					</div>
		         

					
		         <button type="submit" class="formbtn" onclick="modalOpen2();">로그인</button>
		      </div>
		   </div>
		</div>
		
		
		<div id="signup2" class="modal">
		   <div class="modal-content">
		      <form action="" id="sighupform">
		         <label class="signupchar"><b>Email</b></label><br> <input
		            type="text" placeholder="Enter Username" name="iden"> <br>
		
		         <label class="signupchar"><b>Password</b></label><br> <input
		            type="text" placeholder="Enter Password" name="password">
		
		         <button type="button" class="formbtn">회원가입</button>
		      </form>
		   </div>
		</div>
			
	
	
	
	
	
	
	
	
	
	
	  <!-- The Modal -->
		<div id="myModal" class="modal">
				
			<!-- Modal content -->
			<div id="modal-content" class="modal-content modal-center">
				<!-- <span class="close">×</span>-->
				 
				 
				 
				 <form class="counseling-form" id="counseling-form" name="counseling-form" method="post" onsubmit="login();" >
				 
				 
				 	<button type="button" class="fbbtn" id="loginBtn">페이스북으로 로그인</button>
       			   <button id="naver_id_login"  type="button" class="naverbtn">네이버로 로그인</button>
				 	
				 	<hr class="loginhr">
        			 <div id="loginchar">또는</div>
        			 <hr class="loginhr">
         			<button type="button" class="formbtn" onclick="modalOpen2();">이메일로  회원가입</button>
				 	
					
					<br>
				 	<!-- 네이버 로그인 버튼  
				 	<div id="naver_id_login" class="">
				 	<a href="https://nid.naver.com/oauth2.0/authorize?response_type=token&amp;client_id=4XJQVjfPiPo3e5Xe23hL&amp;redirect_uri=http%3A%2F%2F127.0.0.1%3A8080%2Fnet%2Fuser%2Fsnslogin%2F&amp;state=adc00d95-98f5-4052-a754-3e2c2ccc7883" id="naver_id_login_anchor">
				 	<img class='naver' src="http://static.nid.naver.com/oauth/big_g.PNG" border="0" title="네이버 아이디로 로그인" width="100%" height="60px"></a> </div>
				 -->
   					 <hr>
 					
 					 
				 	<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control" id="email" name="iden"
							placeholder="Enter email">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" name="pw"
							placeholder="Enter password">
					</div>

					<div class="checkbox">
						<label><input type="checkbox"> remember me </label>
					</div>
					
					
					<a href="/signup_login?" class="btn btn-danger web-volunteer" data-modal-href="/signup_modal?" data-modal-type="signup">
           			   회원 가입
					</a>
					

					<button id="submit" type="submit" class="form-control">로그인</button>
					
					<c:choose>
						<c:when test='${result == "fail" or param.result=="fail"}'>
							<p>로그인에 실패했습니다.</p>
						</c:when>
					</c:choose>
					
				</form>
				 
				 
			 </div>
				
		</div>
	
</nav>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
		
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/login.js"></script>

