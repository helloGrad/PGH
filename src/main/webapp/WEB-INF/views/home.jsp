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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link
	href="${pageContext.request.contextPath}/resources/css/higrad-signup.css"
	rel="stylesheet">
</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />
	<div class="container">
		<Br>

		<h2>하이그래드넷에 오신 것을 환영합니다!</h2>
		<br> <Br>

		<div class="container col-sm-5 signup" style="margin-right: 5em">
			<h3>main page 333</h3>
		</div>

		<div id="status"></div>


	</div>

	<Br>
	<Br>
	<Br>
	<Br>
	<Br>
	<Br>


	<!--//////////////////////// footer ////////////////////////////-->
	<c:import url="/WEB-INF/views/include/footer.jsp" />

	<!--//////////////////////// footer End ////////////////////////////-->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</body>
</html>