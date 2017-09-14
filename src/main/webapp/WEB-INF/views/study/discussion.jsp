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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>



<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ejs/ejs.js"></script>

	


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">	

<!--//////////////////////// footer End ////////////////////////////-->
<link href="${pageContext.request.contextPath}/resources/css/counseling.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/study.css" rel="stylesheet">


 
    <script>
    
	$(function() {
		disfetchList("공학", "공감순");
		
		/*
		 * 정예린 자동 스크롤링 2017-09-13
		 */
		$(window).scroll(function() {
			var $window = $(this);
			var scrollTop = $window.scrollTop();
			var windowHeight = $window.height();
			var documentHeight = $(document).height();
			if (scrollTop + windowHeight + 10 > documentHeight) {
				if (!disbFetching) {
					disbFetching = true;
					disfetchList('공학','공감순');
				}
			}
		});
	});
    </script>
</head>

<body>

<c:import url="/WEB-INF/views/include/header.jsp" />



<c:import url="/WEB-INF/views/include/subHeader.jsp" />


<!--
    main contents
    page
-->
<div class="row">
    <div class="container">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-lg-2"></div>

            <!--상담실 내용-->
            <div class="col-lg-8">
                <div class="w3-container">
                    <div id="myBtn" class="btn btn-danger web-volunteer">글 작성하기</div>
                    <div class="dropdown option">
                        <button class="w3-button w3-padding w3-padding w3-round-large" type="button" data-toggle="dropdown">
                            <i class="glyphicon glyphicon-option-horizontal"></i>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="javascript:void(0);" onclick="reset('공학','조회순');">조회순</a></li>
                            <li><a href="javascript:void(0);" onclick="reset('공학','공감순');">공감순</a></li>
                            <li><a href="javascript:void(0);" onclick="reset('공학','최신순');">최신순</a></li>
                        </ul>
                    </div>
                </div>
                <!--////// 질문과 답변 시작 ///////////-->
                
				
				<input type="hidden" id="authUser" name="authUser" value="${authUser.mbNo }">
				
                <div id="list">
                    
                </div>

              

               

            </div>

            <div class="col-lg-2"></div>
        </div>
        
        
        
         <!-- Modal -->

		  <form class="counseling-form" id="counseling-form" name="counseling-form" onsubmit="counselinginsert();">
		<div id="writeModal" class="modal" tabindex=-1 >
			<div class="modal-dialog modal-lg modal-fullsize">
			<div class="modal-content content-fullsize">
				<div class="modal-header u-flex1">
	        
	        	
	        	<img src="https://cdn-images-1.medium.com/fit/c/40/40/0*oapGePcc_FQR1KmN." class="avatar-image avatar-image--smaller writeimage">
	   			<button type="button" class="close col-close"></button>
	   			
	   	
	   			<div class="writeName">
	        		<a class="">${authUser.nknm }</a>
	      			
	      			 <div class="dropdown writedropdown">
	               			<button  class="w3-button w3-padding w3-round-large dropdown-toggle" type="button" data-toggle="dropdown" style="float:right;">
	                   		 <i class="glyphicon glyphicon-option-horizontal"></i>
	               			 </button>
	               			 <ul id="writrInfoOpngYn" class="dropdown-menu dropdown-menu-right"> <!-- 디폴트는 Y -->
	                  	     <li><a href="#" value="N">비공개로 작성하기</a></li>
	                		</ul>
	               
	                
	             	</div> 	
	             		
	      			<div class="">
	      			
	      			
	      				      <c:choose>
 
							 <c:when test="${authUser.birdt == null and authUser.agrg == null}">
						              없음
						    </c:when>
		 					
						    <c:when test="${authUser.birdt == null}">
						       ${authUser.agrg }대
						    </c:when>
						 
						    <c:when test="${authUser.agrg == null }">
						        ${authUser.birdt }대
						    </c:when>
						 
						    <c:otherwise>
						        아무것도 아닌 사람 입니다.
						    </c:otherwise>
		 
							</c:choose>
	      				
	      			</div>
	      			<div class="gender">
                  	<label class="objectbutton on" id="5"> <input type="radio"
                     name="bbsNo" value="5" id="bbsNo" checked
                     onclick="changeColor(this);"> 상담하기
                  	</label> <label class="objectbutton" id="6"> <input type="radio"
                     name="bbsNo" value="6" id="bbsNo"
                     onclick="changeColor(this);">잡담하기
                  	</label>
               		</div>
	      			
	      			
	      	
	        	</div>
	       
	          
	             
	
	              
	        </div>
	      
	        
	        <div class="modal-body">
	        
	
	        
					 
						<input type="hidden" id="authUser" name="authUser" value="${authUser.mbNo }">
						
						
						 <div class="">
	         
	      
	        			<textarea class="wrtbtTitle" onkeydown="titleResize(this)" onkeyup="titleResize(this)" id="wrtbtTitle" name="wrtbtTitle" placeholder="Title..." style=" width:100%; height:70px; border:none; border-color: white;" autofocus></textarea>
			 			<br>
			 			<textarea class="wrtbtText" onkeydown="resize(this)" onkeyup="resize(this)" id="wrtbtText" name="wrtbtText" placeholder="Tell your story..." style=" width:100%; height:200px; border:none; border-color: white;"></textarea>
			      	
	   					</div>
						
	        
	        </div>
	        <div class="modal-footer">
	        	<!--  <button type="button" onclick="addFile()">파일 추가</button>-->
					<table id="filetable" cellpadding="5" cellspacing="0">
						<tr name="tr_attach_file">
							<th>첨부파일</th>
							<td><input id="file" type="file" name="attachFile" multiple /></td>
						</tr>

						<!-- 추가 버튼을 누르면 위 숨겨진 테이블의 tr 을 가져다가 추가할 겁니닷 -->
					</table>
					<div id='apndngfiles'></div>
					
	         <button type="submit" class="form-control">입력</button>
	        </div>
	       
						  
						  
						  
						  
		</div>
		</div>
	</div>		
		  </form>
        



    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/counseling.js"></script>
</body>
  
</html>