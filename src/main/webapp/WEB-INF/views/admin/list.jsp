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
<style>
textarea.autosize { min-height: 50px; }
</style>



<script>
function resize(obj) {
  obj.style.height = "1px";
  obj.style.height = (12+obj.scrollHeight)+"px";
}
</script>	
	


<title>Insert title here</title>

</head>
<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="container">
		<!-- ///// filter (대분류) //////-->
		<div class="row">
			<div class="col-lg-4 centering">
				<button class="tablinks" onclick="openCity(event, 'lab')" id="defaultOpen">연구실</button>
				<button class="tablinks" onclick="openCity(event, 'noti')"
					>모집공고</button>
				<button class="tablinks" onclick="openCity(event, 'grad')">대학원</button>
				
			</div>
		</div>

		<hr class="nav-line">

		<div id="noti" class="col-lg-8">
			<h2>모집공고</h2>
			<form class="login-form" id="login-form" name="loginform" method="post" action="${pageContext.servletContext.contextPath }/admin/noti">
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
				<button type="submit" class="btn btn-primary btn-lg">입력</button>
			</form>
		</div>

		<div id="grad" class="col-lg-8">
			<h2>대학원</h2>
			<form class="login-form" id="login-form" name="loginform"
				method="post"
				action="${pageContext.servletContext.contextPath }/admin/organz">
				<div class="form-group">
				<input type="hidden" id="tabnm" name="tabnm" value="grad">
					<label for="email">Email:</label> <input type="email"
						class="form-control" id="email" name="iden"
						placeholder="Enter email">
				</div>
				<div class="form-group">
					<label for="pwd">Password:</label> <input type="password"
						class="form-control" id="pwd" name="pw"
						placeholder="Enter password">
				</div>
				<button type="submit" class="btn btn-primary btn-lg">입력</button>
			</form>
		</div>

		<div id="lab" class="col-lg-8">
			<h2>연구실 - 연구실이름/연구내용으로 구분</h2>
			
			
			<form class="login-form" id="login-form" name="loginform"
				method="post"
				action="${pageContext.servletContext.contextPath }/admin/organz">
				<div class="form-group">
				<input type="hidden" id="tabnm" name="tabnm" value="lab">
				
					연구실 이름: <input type="text" class="form-control" id="orgnzNm" name="orgnzNm" > 
					<br>
					연구실 영문명 이름 : <input type="text" class="form-control" id="engOrgnzNm" name="engOrgnzNm">
					<br>
					기관구분 : 
					<select name="orgnzDstnct">
   					 <option value="">기관구분</option>
					 <option value="대학교">대학교</option>
					 <option value="대학원">대학원</option>
					 <option value="학과">학과</option>
					 <option value="연구실" selected="selected">연구실</option>
					</select>
					<br>
					연구실 url 주소 : <input type="text" class="form-control" id="hmpageUrl" name="hmpageUrl">
					<br>
					연구실 전화번호 : <input type="text" class="form-control" id="telNo" name="telNo">
					<br>
					연구실 팩스번호 : <input type="text" class="form-control" id="faxNo" name="faxNo">
					<br>
					주소 : <input type="text" class="form-control" id="addr" name="addr">
					<br>
					세부주소 : <input type="text" class="form-control" id="detailAddr" name="detailAddr">
					<br>
					부모기관번호 : <input type="text" class="form-control" id="prntsOrgnzNo" name="prntsOrgnzNo">
					<br>
					<br>
					교수님 성명: <input type="text" class="form-control" id="mapProfNm" name="mapProfNm">
					<br>
					연구실 소개: <textarea onkeydown="resize(this)" onkeyup="resize(this)"  class="form-control" id="labIntro" name="labIntro"></textarea>
					<br>
					연구원 수(박사/석박사/석사): <input type="text" class="form-control" id="rsrchrInfoText" name="rsrchrInfoText">
					<br>
					국내외 구분: 
					<select name="hmnbrdDstnct">
   					 <option value=""> 국내외구분</option>
					 <option value="국내" selected="selected">국내</option>
					 <option value="국외">국외</option>
					</select>
					<br>
					<br>
					</div>
					<hr>
					<button type="submit" class="form-control">입력</button>
					</form>
					<hr>
					<form class="resrch-form" id="resrch-form" name="resrch-form"
					method="post"
					action="${pageContext.servletContext.contextPath }/admin/organz">
					<input type="hidden" id="tabnm" name="tabnm" value="lab">
					연구실 번호 :  <input type="text" class="form-control" id="orgnzNo" name="orgnzNo">
					<br>
					실적구분 : <select name="acrsltDstnct">
   					 <option value=""> 실적구분</option>
					 <option value="논문">논문</option>
					 <option value="세미나">세미나</option>
					 <option value="학회">학회</option>
					 <option value="특허">특허</option>
					 <option value="프로젝트">프로젝트</option>
					 <option value="기타">기타</option>
					</select>
					<br>
					<br>   
					연구년도 :<input type="text" class="form-control"  id="resrchYycl" name="resrchYycl">
					<br>
					연구내용:<textarea onkeydown="resize(this)" onkeyup="resize(this)"  class="form-control" id="resrchText" name="resrchText"></textarea>
					<br>

			
				<button type="submit" class="form-control">입력</button>
			</form>
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