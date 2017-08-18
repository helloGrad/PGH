<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/list.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


<title>Insert title here</title>

</head>
<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="container">
		<!-- ///// filter (대분류) //////-->
		<div class="row">
			<div class="col-lg-4 centering">
				<button class="tablinks" onclick="openCity(event, 'all')"
					id="defaultOpen">전체</button>
				<button class="tablinks" onclick="openCity(event, 'grad')">대학원</button>
				<button class="tablinks" onclick="openCity(event, 'lab')">연구실</button>
			</div>
		</div>

		<hr class="nav-line">

		<!-- ////// filter ///////-->
		<div class="row">
			<div class="col-lg-4">
				분야 <a href="*" class="remove-btn">EDIT</a>

				<hr>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-search"></i>검색
				</div>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-tag"></i> 국내 (전체) <a href=""> <i
						class="glyphicon glyphicon-remove remove-btn"></i></a>
				</div>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-tag"></i> 데이터베이스 <a href=""> <i
						class="glyphicon glyphicon-remove remove-btn"></i></a>
				</div>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-tag"></i> 인공지능 <a href=""> <i
						class="glyphicon glyphicon-remove remove-btn"></i></a>
				</div>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-tag"></i> 빅 데이터 <a href=""> <i
						class="glyphicon glyphicon-remove remove-btn"></i></a>
				</div>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-tag"></i> 컴퓨터 <a href=""> <i
						class="glyphicon glyphicon-remove remove-btn"></i></a>
				</div>
			</div>

			<div id="all" class="col-lg-8">
				<div class="col-md-12">
					<h3>
						<a href="">데이터 베이스 연구실</a>
					</h3>
					<p>
						by <a href="#">연구실</a>
					</p>
					<hr>
				</div>
				<div class="col-md-12">
					<h3>
						<a href="">프로그래밍 연구실</a>
					</h3>
					<p>
						by <a href="#">연구실</a>
					</p>
					<hr>
				</div>
				<div class="col-md-12">
					<h3>
						<a href="">창원대학교 일반대학원</a>
					</h3>
					<p>
						by <a href="#"></a>
					</p>
					<hr>
				</div>
				<div class="col-md-12">
					<h3>
						<a href="">서울대학교 일반대학원</a>
					</h3>
					<p>
						by <a href="#">연구실</a>
					</p>
					<hr>
				</div>
			</div>

			<div id="grad" class="col-lg-8">
				<div class="col-md-12">
					<h3>
						<a href="">창원대학교 일반대학원</a>
					</h3>
					<p>
						by <a href="#"></a>
					</p>
					<hr>
				</div>
				<div class="col-md-12">
					<h3>
						<a href="">서울대학교 일반대학원</a>
					</h3>
					<p>
						by <a href="#">연구실</a>
					</p>
					<hr>
				</div>
			</div>

			<div id="lab" class="col-lg-8">
				<div class="col-md-12">
					<h3>
						<a href="">데이터 베이스 연구실</a>
					</h3>
					<p>
						by <a href="#">연구실</a>
					</p>
					<hr>
				</div>
				<div class="col-md-12">
					<h3>
						<a href="">프로그래밍 연구실</a>
					</h3>
					<p>
						by <a href="#">연구실</a>
					</p>
					<hr>
				</div>
			</div>
		</div>
	</div>

	<!--footer-->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/list.js"></script>

</body>
</html>