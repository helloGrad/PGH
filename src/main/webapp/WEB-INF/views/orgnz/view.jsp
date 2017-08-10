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

	<a href="${pageContext.servletContext.contextPath }/org/list">리스트로 돌아가기</a>
	<h1>${ list[0].orgNm}</h1>
	
	<c:forEach items="${list }" var="list" varStatus="status">
	<h2>${list.resrchDstinct }</h2>
	<h3>${list.resrchYear }</h3>
	<h3>${list.resrchText }</h3>
	<br>
	</c:forEach>

</body>
</html>