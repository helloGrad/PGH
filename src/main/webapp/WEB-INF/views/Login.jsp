<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Title</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link
	href="${pageContext.request.contextPath}/resources/css/higrad-signup.css"
	rel="stylesheet">
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script>
	$(function() {
		$("#tabss").tabs();
	});
</script>
</head>
<body>	

	<c:import url="/WEB-INF/views/include/header.jsp" />
	<div class="container">
		<Br>

		<h2>하이그래드넷에 오신 것을 환영합니다!</h2>
		<br>
		<div id="tabss">
			<ul>
				<li><a href="#tabs-1">로그인</a></li>
				<li><a href="#tabs-2">회원가입</a></li>
			</ul>
			<div class="container col-sm-5 signup" style="margin-right: 5em">
				<h3>SNS 연동</h3>
				
				  <!-- 네이버아이디로로그인 버튼 노출 영역 -->
					  <div id="naver_id_login"></div>
					  <!-- //네이버아이디로로그인 버튼 노출 영역 -->
					  <script type="text/javascript">
					  	var naver_id_login = new naver_id_login("4XJQVjfPiPo3e5Xe23hL", "http://127.0.0.1:8080/net/user/snslogin/");
					  	naver_id_login.setDomain(".127.0.0.1:8080/net/"); //상태 토큰 비교를 위한 domain 설정
					  	var state = naver_id_login.getUniqState();
					  	naver_id_login.setButton("green", 3,60);
					  	naver_id_login.setDomain("YOUR_SERVICE_URL");
					  	naver_id_login.setState(state);
					  	//naver_id_login.setPopup();
					  	naver_id_login.init_naver_id_login();
					  </script>
				
				<fb:login-button scope="public_profile,email"
					onlogin="checkLoginState();">
				</fb:login-button>
				<img
					src="${pageContext.request.contextPath}/resources/images/social-login.png"
					width="400" height="200">
			</div>
			<div id="tabs-1" class="container col-sm-6 signup"
				style="border-left: 1px solid #ccc; padding-left: 10em">
				<h3>로그인</h3>
				<form class="login-form" id="login-form" name="loginform" method="post" action="${pageContext.servletContext.contextPath }/user/auth">

					<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control" id="email" name="IDEN" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" name="PW" placeholder="Enter password">
					</div>

					<div class="checkbox">
						<label><input type="checkbox"> remember me </label>
					</div>
					
					
					 <c:choose>
					<c:when test='${result == "fail" or param.result=="fail"}'>
					<p> 로그인에 실패했습니다. </p>
					</c:when>
					
					</c:choose>
			
			
					<button type="submit" class="btn btn-primary btn-lg">로그인</button>
				</form>
			</div>
			<div id="tabs-2" class="container col-sm-6 signup"
				style="border-left: 1px solid #ccc; padding-left: 10em">
				<h3>회원가입</h3>
				<form action="${pageContext.servletContext.contextPath }/register"
					method="post">
					<div class="form-group">
						<label for="email">Nickname:</label> <input type="text"
							class="form-control" id="nickname" placeholder="Enter Nickname"
							name="NKNM">
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control" id="email" placeholder="Enter email"
							name="EMAIL">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" placeholder="Enter password"
							name="PW">
					</div>

					<div class="checkbox">
						<label><input type="checkbox"> 하이그래드넷 악관에 동의합니다 </label>
					</div>
					<button type="submit" class="btn btn-primary btn-lg">회원가입</button>
				</form>
			</div>
		</div>
	</div>
	<!--//////////////////////// footer ////////////////////////////-->
	<c:import url="/WEB-INF/views/include/footer.jsp" />

	<!--//////////////////////// footer End ////////////////////////////-->

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/login.js"></script>


</body>
</html>