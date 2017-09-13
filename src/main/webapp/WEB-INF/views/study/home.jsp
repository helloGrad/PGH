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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>





<style>
/*more 버튼*/
body {
	padding-top: 7em;
}

.more {
	float: right;
	width: 5em;
	font-size: 0.5em;
	margin-top: 1.5em;
}

@media screen and (max-width: 768px) {
	.dropdown-menu-large {
		margin-left: 0;
		margin-right: 0;
	}
	.dropdown-menu-large>li {
		margin-bottom: 30px;
	}
	.dropdown-menu-large>li:last-child {
		margin-bottom: 0;
	}
	.dropdown-menu-large {
		padding: 3px 15px !important;
	}
	.dropdown-menu-large {
		margin-left: 1em;
		margin-right: 16px;
		padding: 20px 0px;
	}
}

@media screen and (min-width: 768px) {
	.glyphicon-education {
		font-size: 6em;
	}
	.glyphicon-education {
		font-size: 6em;
	}
	.dropdown-menu-large {
		margin-left: 25em;
		margin-right: 16px;
		padding: 20px 0px;
	}
}

.dropdown-large {
	position: static !important;
}

.dropdown-menu-large>li>ul {
	padding: 0;
	margin: 0;
}

.dropdown-menu-large>li>ul>li {
	list-style: none;
}

.dropdown-menu-large>li>ul>li>a {
	display: block;
	padding: 3px 20px;
	clear: both;
	font-weight: normal;
	line-height: 1.428571429;
	color: #333333;
	white-space: normal;
}

.dropdown-menu-large>li ul>li>a:hover, .dropdown-menu-large>li ul>li>a:focus
	{
	text-decoration: none;
	color: #5bc0de;
	/*background-color: #f5f5f5;*/
}

.dropdown-menu-large .dropdown-header {
	color: #428bca;
	font-size: 18px;
}

.jumbotron {
	position: relative;
	z-index: 1;
	height: 25em;
	margin-bottom: 0.1em;
	text-align: center;
	background-size: cover;
}

/*전공 네비게이션 박스*/
.major-nav-box {
	height: 6em;
	border-bottom: 1px solid grey;
}

.navbar-left {
	font-weight: 400;
	padding-top: 15px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 14px;
	letter-spacing: 5px;
}

.navbar-nav li a:hover {
	color: #1abc9c !important;
	background-color: white;
}

.jumbotron {
	height: 15em;
	margin-bottom: 1em;
}

.setting-hr {
	margin-top: 0.5em;
	margin-bottom: 0.5em;
}
</style>

<script>
	$(document).ready(function(e) {
		$(".degree").click(function() {
			$(this).toggleClass("check");
		});
	});

	$(window).resize(
			function() {
				var windowWidth = $(window).width();
				console.log(windowWidth);
				if (window.innerWidth <= 768) {
					$(".quick-menu").removeClass("table-bordered").addClass(
							"thumbnail");
				} else {
					$(".quick-menu").removeClass("thumbnail");

				}
			});
</script>
</head>
<body>


	<c:import url="/WEB-INF/views/include/header.jsp" />


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
					<li><a
						href="${pageContext.servletContext.contextPath }/study/notice">모집공고</a></li>
					<li><a
						href="${pageContext.servletContext.contextPath }/study/discussion">토론</a></li>
					<li><a
						href="${pageContext.servletContext.contextPath }/study/research">연구과제</a></li>
					<li><a
						href="${pageContext.servletContext.contextPath }/study/lab">연구실</a></li>

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
			<div class="col-xs-12 col-sm-12 col-lg-12">
				<!--날짜 ,요일 , 년월 -->
				<h1>
					<div style="float: left; margin-right: 0.3em;">8</div>
					<small>
						<div style="float: left; font-size: medium; line-height: 130%;">
							금요일<br>2017년 9월
						</div>
					</small> <br>
				</h1>
				<!--시작 라인-->
				<hr>
				<!--내용-->
				<div class="col-xs-4 col-sm-4 col-lg-4">
					<div class="jumbotron">
						1234<br>12341234
					</div>
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
				</div>
				<div class="col-xs-4 col-sm-4 col-lg-4">
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
				</div>
				<div class="col-xs-4 col-sm-4 col-lg-4">
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
				</div>
			</div>

			<div class="col-lg-12">
				<!--날짜 ,요일 , 년월 -->
				<h1>
					<div style="float: left; margin-right: 0.3em;">7</div>
					<small>
						<div style="float: left; font-size: medium; line-height: 130%;">
							금요일<br>2017년 9월
						</div>
					</small> <br>
				</h1>
				<!--시작 라인-->
				<hr>
				<!--내용-->
				<div class="col-xs-4 col-sm-4 col-lg-4">
					<div class="jumbotron">
						1234<br>12341234
					</div>
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
				</div>
				<div class="col-xs-4 col-sm-4 col-lg-4">
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
				</div>
				<div class="col-xs-4 col-sm-4 col-lg-4">
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
				</div>
			</div>

			<div class="col-lg-12">
				<!--날짜 ,요일 , 년월 -->
				<h1>
					<div style="float: left; margin-right: 0.3em;">6</div>
					<small>
						<div style="float: left; font-size: medium; line-height: 130%;">
							금요일<br>2017년 9월
						</div>
					</small> <br>
				</h1>
				<!--시작 라인-->
				<hr>
				<!--내용-->
				<div class="col-xs-4 col-sm-4 col-lg-4">
					<div class="jumbotron">
						1234<br>12341234
					</div>
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
				</div>
				<div class="col-xs-4 col-sm-4 col-lg-4">
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
				</div>
				<div class="col-xs-4 col-sm-4 col-lg-4">
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
					<div class="jumbotron"></div>
				</div>
			</div>




		</div>
	</div>

</body>



</html>