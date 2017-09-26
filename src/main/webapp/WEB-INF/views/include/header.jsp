<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<base target="_self" /> 



<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ejs/ejs.js"></script>



<script>
var boardtype; 
</script>


<!--//////////////////////// footer End ////////////////////////////-->

<link href="${pageContext.request.contextPath}/resources/css/bootstrap-social.css" rel="stylesheet"> 	

<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">



<style>
/* nav-bar css Start */
.navbar {
	background-color: rgba(255, 255, 255, 0.95);
}
.navbar-qna {
	font-weight: 400;
	margin-top: -5px;
	margin-bottom: -5px;
	margin-left: -1em;
	font-size: 1.5vmin;
	letter-spacing: 4px;
	float: left;
}
.navbar-nav li a:hover {
	color: #1abc9c !important;
	background-color: white;
}
/* nav-bar End */

</style>



<script>




	//2017-09-01 박가혜 
	$(function() {
		
		

	if (matchMedia("screen and (min-width: 600px)").matches) {

			$("#writerleft").insertAfter("#writeright");
		} else {

			$("#writeright").insertAfter("#writeleft");

		}

		//var boardtype;

		$(document).ready(function() {

			$("#myBtnlogin").click(function() {

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
			var modal1 = document.getElementById('writeModal');
			if (e.keyCode == 27) {

				modal2.style.display = "none";
				modal1.style.display = "none";
			}
		});

		$('#naverLoginBtn2').click(function() {

			$("#naverLoginBtn").click();
		});

	})

	var modalOpen = function() {

		var modal1 = document.getElementById('signup2');
		var modal2 = document.getElementById('login');

		modal2.style.display = "block";
		modal1.style.display = "none";

		window.onclick = function(event) {
			if (event.target == modal2) {
				modal2.style.display = "none";
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

<nav class="navbar navbar-default navbar-fixed-top al">
    <div class="container">
    
    <div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			  <a class="navbar-brand" href="${pageContext.servletContext.contextPath }/loginmain">하이그래드넷</a>
			  
				<ul class="nav navbar-nav">
					<li><a id="headerBtn" class=" navbar-qna nav-btn writeBtn" href="#"> <span
							class=" w3-btn w3-border w3-round-large"><i
								class="glyphicon glyphicon-pencil"></i>글쓰기</span></a></li>
					<li><a class=" navbar-qna" href="${pageContext.servletContext.contextPath }/counseling/list"> <span
							class="w3-btn w3-border w3-round-large"><i
								class="glyphicon glyphicon-check"></i>답변하기</span></a></li>
				</ul>
				
				
			</div>
		

            <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href=""> <i class="glyphicon glyphicon glyphicon-search" style="font-size: 1.5em;"></i></a></li>
              <!--  <!—
            	    알림 설정
                <li><a href=""> <i class="glyphicon glyphicon-bell" style="font-size: 1.5em;"></i></a></li>
                —>  --> 
                <li><a data-toggle="dropdown"> <i class="glyphicon glyphicon-user" style="font-size: 1.5em;"></i></a>
                    <ul class="dropdown-menu">
                         	<c:choose>
					<c:when test="${empty authUser }">
						
						<li>
						<li><a href="#">회원가입</a></li>
						  <hr class="setting-hr">
		  			    <li><a id="myBtnlogin" href="javascript:void(0);">로그인</a></li>
			
						<li>
					</c:when>
					<c:otherwise>
						<li>${authUser.nknm }님</li>
						<li><a href="#">계정 설정</a></li>
						<li><a
							href="${pageContext.servletContext.contextPath }/user/mypage">마이페이지</a>
						</li>
						  <hr class="setting-hr">
						<li><a
							href="${pageContext.servletContext.contextPath }/user/logout" id="logout">로그아웃</a>
						</li>

					</c:otherwise>
				</c:choose>
                      
                       
                    </ul>
                </li>

            </ul>
        </div>
    
		

		
		
		<div id="login" class="login-modal" >
		   <div class="login-modal-content">
		   
		  
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
							class="form-control logininputbox" id="email" name="iden"
							placeholder="Enter email">
					</div>
					
					<div id='emailMsg' class="text-danger"></div>
					
					<div class="form-group1">
					 <input type="password"
							class="form-control logininputbox" id="pwd" name="pw"
							placeholder="Enter password">
					</div>
					

					<div id="passwdMsg" class="text-danger"></div>
					
					 <div id="loginMsg" class="text-danger"></div>
					 
					<div class="form-group">
						<label class="remember-me"><input type="checkbox"> 로그인 상태 유지 </label>
						
						<p class="sighup">
						<a href="javascript:void(0);" onclick="modalOpen3();">비밀번호 찾기</a>  /  <a href="javascript:void(0);" onclick="modalOpen2();">회원가입</a>
						</p>
					    
					</div>
		         

					
		         <button type="submit" class="btn formbtn" onclick="login();" >로그인</button>
		      	<div class="login">
				
			    </div>	
		      	 
			
		      </div>
		      
		      <span class="close"></span>
		   </div>
		</div>
		
		
		
	<div id="signup2" class="login-modal">
		<div class="login-modal-content">
			<span class="close">×</span>
			
			 <div class="signupbnt">
		      	
			<button id="facebookLogin"
				class="btn btn-social btn-facebook socialbtn">
				<span id="facebooklogo" class="fa fa-facebook"></span> 페이스북으로 계속하기
			</button>
			

		
		   	<button id="naverLoginBtn2" class="btn btn-social socialbtn naverlogin"  style='color:white;'>
		    <span id='naverLogo' class="fa "></span> 네이버로 계속하기
 			</button>
		   	
			</div>
			
			
			
			<div class="separator">
				<hr class="signuphr">
				<h6 class="texthr">또는</h6>
				<hr class="signuphr">
			</div>

			<form action="#" id="join-form">
				<div class="input">

					<div class="signupinput">
						<input type="text" class="inputbox" id="nickname"
							placeholder="닉네임(2~8자리)" name="nknm">
						<div class="checkinput" id="nicknamecheck">경고</div>
					</div>

					<div class="signupinput">
						<input type="text" class="inputbox" id="remail" placeholder="이메일"
							name="iden">
						<div class="checkinput" id="emailcheck">경고</div>
					</div>

					<div class="signupinput">
						<input type="text" class="inputbox" placeholder="비밀번호" id="rpwd"
							name="password">
						<div class="checkinput">경고</div>
					</div>
					<div class="signupinput" id="lastinput">
						<input type="text" class="inputbox" placeholder="비밀번호 확인"
							name="password">
						<div class="checkinput">경고</div>
					</div>

					<hr class="loginhr">


					<div class="gender">
						<label class="genderlabel on" id="male"> <input
							type="radio" name="gender" value="male" checked
							onclick="changeColor(this);"> 남자
						</label> <label class="genderlabel" id="female"> <input
							type="radio" name="gender" value="female"
							onclick="changeColor(this);">여자
						</label>
					</div>


					<div class="birth">
						<input type="number" name="birth" placeholder="년(4자리)"
							maxlength="4" id="birthyn" max="9999" maxlength="4"
							oninput="maxLengthCheck(this)">
					</div>
					<div class="birth">
						<select id="birthm">
							<option selected disabled>월</option>
						</select>
					</div>
					<div class="birth">
						<select id="birthd">
							<option selected disabled>일</option>
						</select>
					</div>
					<button type="submit" class="btn formbtn">회원가입</button>
				</div>
			</form>
			<div class="login">
				이미 가입한 회원이라면 <a href="#" onclick="modalOpen();">로그인 하러 가기</a>
			</div>
		</div>
	</div>
	
	
		<c:import url="/WEB-INF/views/modal/write.jsp" />
	 
	
				
    </div>
</nav>


<!--//////////////////////// footer End ////////////////////////////-->

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modalLogin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/login.js"></script>



<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/counseling.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/write.js"></script>

		
		

