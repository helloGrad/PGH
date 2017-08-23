<!-- 허규준 -->
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

<script type="text/javascript">

/**
 * 박가혜
 */
	var chkCnt = 0;//체크 카운트 0으로 초기화
	var chkMaxCnt = 3; //체크될 최대 갯수 설정
	
	
	var comlist = [];
	
	
	
	function chk(chkObj) {

		var chk = chkObj.checked; //체크박스 선택 true/false;
		var name = chkObj.name; //체크박스 이름 
		var value = chkObj.value;
		
		var len = document.getElementsByName(name).length; //체크박스 총갯수
	

		if (chk == true) { //선택이면 1증가
			
			chkCnt = chkCnt + 1;
			comlist.push(value);
			//alert(comlist);

		} else { //취소면 1감소
			chkCnt = chkCnt - 1;
			comlist.pop();
			//alert(comlist);
		}

		if (chkCnt > chkMaxCnt) {

			alert("3개초과입니다.");

			chkObj.checked = false;

			chkCnt = chkMaxCnt;//3개로 초기화;
			comlist.pop();
		

		} else {
			for (var i = 0; i < len; i++) {
				if (document.getElementsByName(name)[i].disabled == true) {
					document.getElementsByName(name)[i].disabled = false;
				}
			}

		}

	}
	

	
	
	function comparinsert() {
		
		event.preventDefault();
		
		//alert("안녕하세요");
		
	
		// ajax 통신 
		
		jQuery.ajaxSettings.traditional = true;
		
		console.log(JSON.stringify(comlist));
		
		$.ajax( {
			url : "${pageContext.request.contextPath }/noti/api/lab",
			type: "post",
			//dataType: "json", // 받아야되는 데이터 타입 
			data: {comlist : comlist},
			//data: {list : comlist},
			//contentType: 'application/json; charset=utf-8', //json 타입으로 데이터를 보낼때 사용함 
			
			
			
			success: function(response){

				
					if(response.result === "fail"){
						
						
						console.error(response.message);
						return;
					}
					
					console.log("성공입니다");
					console.log(response.data);
					//response.data.contextpath = "${pageContext.request.contextPath}/noti/api/lab";
			
				
			},
			error: function( jqXHR, status, e ){
				console.log("에러입니다");
				console.error( status + " : " + e );
				console.log(jqXHR);
			}
			} );
		
		
		
	}
</script>






<title>Insert title here</title>

</head>
<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="container">

		<div class="row">
			<h3>연구실 공고 페이지</h3>
			<div class="col-lg-4 centering">

				<a id="gradBtn" class="btn btn-info"
					href="${pageContext.servletContext.contextPath }/noti/grad">대학원
					더보기</a> <a id="labBtn" class="btn btn-info"
					href="${pageContext.servletContext.contextPath }/noti/lab">연구실
					더보기</a>
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

			<form name="Comparison" id="Comparison" onsubmit="comparinsert();">
			<div id="gradList" class="col-lg-8">
				<c:forEach items="${notiList }" var="list" varStatus="status">
					<div class="col-md-12">
						<h3>
							<a href="${pageContext.servletContext.contextPath }/noti/detail?no=${list.slctnNotiNo}&tabnm=${list.slctnNotiDstnct}">${list.slctnTitle }</a>
							<input type="checkbox" name="selectcheck" value="${list.slctnNotiNo}" onclick="javascript:chk(this);"/>	
					


						</h3>
						<hr>
					</div>
				</c:forEach>

			</div>
			
			<input type="submit" value="비교하기">
 			
 			 </form>


		</div>
	</div>

	<!--footer-->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>

</body>
</html>