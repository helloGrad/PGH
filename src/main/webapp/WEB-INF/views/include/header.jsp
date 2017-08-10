<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link
	href="${pageContext.request.contextPath}/resources/css/higrad-signup.css"
	rel="stylesheet">
    <nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main.html">하이그래드넷</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="recruit.html">대학원</a></li>
					<li><a href="recruit2.html">연구실</a></li>
					<li><a href="conference.html">학회</a></li>
					<li><a href="counseling.html">상담실</a></li>
					<li><a href="community.html">커뮤니티</a></li>
				<c:choose>
				<c:when test='${authUser.MB_DSTNCT == "관리자" }'>
					<li><a href="${pageContext.servletContext.contextPath }/admin/main">관리자페이지</a><li>
				</c:when>
				</c:choose>
				<c:choose>
					
				
				<c:when test="${empty authUser }">
					<li><a href="${pageContext.servletContext.contextPath }/user/login">로그인</a><li>		
				</c:when>
				<c:otherwise>
					<li>${authUser.NKNM }님 안녕하세요 ^^;</li>		
					<li><a href="${pageContext.servletContext.contextPath }/user/logout">로그아웃</a><li>
					<li><a href="${pageContext.servletContext.contextPath }/user/mypage">마이페이지</a><li>

				</c:otherwise>		
			</c:choose>
				</ul>
			</div>
		</div>
	</nav>