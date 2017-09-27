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

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>



<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ejs/ejs.js"></script>
<!--  
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
 <link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet"> 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


	

<!--//////////////////////// footer End ////////////////////////////-->
<link href="${pageContext.request.contextPath}/resources/css/counseling.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/study.css" rel="stylesheet">



<style>

 
.element {
  display: inline-flex;
  align-items: center;
}
i.fa-camera {
  margin: 10px;
  cursor: pointer;
  font-size: 30px;
}
i:hover {
  opacity: 0.6;
}
.hide{
  		display:none;  
}

.col-xs-91 {
    border-right: 1px solid #ccc;
  	padding-right: 0px; 
 	padding-left: 0px; 
 	 margin: 10px;
}

.col-xs-31{

 	padding-right: 0px; 
 	padding-left: 0px; 
	 margin: 10px;
}







</style>


<script>








</script>




</head>
<body>

	
     
         <!-- Modal -->

		<form class="counselingform" id="counselingform" name="counseling"  method="post" action="/net/counseling/api/write" enctype="multipart/form-data">
		<div id="writeModal" class="modal" tabindex=-1 >
			<div class="modal-dialog modal-lg modal-fullsize">
			
			
			  <div class="row">
			    <div id="writeright" class="col-xs-12 col-lg-9">
			    
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
	               			 <ul id="writrInfoOpngYn2" class="dropdown-menu dropdown-menu-right"> <!-- 디폴트는 Y -->
	                  	     <li class="hide"><a href="#" value="Y">공개로 작성하기</a></li>
	                  	     <li><a href="#" value="N">비공개로 작성하기</a></li>
	                  	  
	                		</ul>
	               
	                		
	                		<select id="writrInfoOpngYn" class="hide">
			           		
							  <option  class="hide" value="Y" selected="selected"></option>
							  <option value="N">비공개로 작성하기</option>
							</select> 
	                		
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
			      		
			      			<br>
			      		  <div class="gender">
		                  	<label class="objectbutton1 on" id="5"> <input type="radio"
		                     name="writeoption" value="상담게시판" id="writeoption" checked
		                     onclick="changeColor(this);"> 상담하기
		                  	</label> <label class="objectbutton2" id="6"> <input type="radio"
		                     name="writeoption" value="일반게시판" id="writeoption"
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
					 			<textarea class="autosize wrtbtText" onkeydown="resize(this)" onkeyup="resize(this)" id="wrtbtText" name="wrtbtText" placeholder="Tell your story..." style=" width:100%; height:200px; border:none; border-color: white;"></textarea>
					      	
			   					</div>
								
			        
			        </div>
			        <div class="modal-footer">
			        	
			        
			        	<!--  <button type="button" onclick="addFile()">파일 추가</button>-->
							<table id="filetable" cellpadding="5" cellspacing="0">
								<tr name="tr_attach_file">
									
									<td>
											
										<div class="element">
										  <i id="cfile" class="fa fa-picture-o fa-lg"></i><span class="name"></span>
										  <input class="hide" id="file" type="file" name="file"  accept="image/*" multiple />
										</div>
															
				
									</td>
								</tr>
		
								<!-- 추가 버튼을 누르면 위 숨겨진 테이블의 tr 을 가져다가 추가할 겁니닷 -->
							</table>
							<div id='apndngfiles'></div>
							<input type="button" value="입력" class="form-control" onClick="counselinginsert();">
			
			          
			        </div>
			       
								  
								  
								  
								  
				</div>
					    
			    
			    </div>
			    <div id="writeleft" class="col-xs-12 col-lg-3">
			    
				  <div class="modal-content content-fullsize sidebar">
						<div class="modal-header u-flex1">
			        	
			    
			      			<div> 카테고리 </div>
			      	
			        	</div>
			       

			        <div class="modal-body">
			        <select class="w3-select" name="boardoption" id="boardoption">
					  <option value="전체">게시판선택</option>
					  <option value="인문학">인문학</option>
					  <option value="사회과학">사회과학</option>
					  <option value="자연과학">자연과학</option>
					  <option value="공학">공학</option>
					   <option value="의약학">의약학</option>
					    <option value="농수해양학">농수해양학</option>
					     <option value="예술체육학">예술체육학</option>
					      <option value="복합학">복합학</option>
					</select>
			
				    
			      
			        </div>
			        <div class="modal-footer">
			        	
		
			        </div>
			       
								  
				   </div>				  
								  
								  
				</div>
			    
			    
			    
			    
			    </div>
			</div>
			
			
			
		</div>
	
	
	
		
		
		
	</form>	
	
	
</body>
</html>