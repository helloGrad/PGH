<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />
	
	<h1>연구실 리스트 페이지</h1>

	<c:forEach items="${list }" var="list" varStatus="status">
		<a href="${pageContext.servletContext.contextPath }/org/resrchView?no=${list.orgNo}">
			<h2>${list.orgNm }</h2>
		</a>
		<br>
	</c:forEach>
	
	<li><a href="${pageContext.servletContext.contextPath }/orgnz/view">뷰보기</a><li>
	

</body>
</html>