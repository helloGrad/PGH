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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">	



<!--//////////////////////// footer End ////////////////////////////-->
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/study.css" rel="stylesheet">

<style>
        body {
            padding-top: 6em;
        }

        .more {
            float: right;
            width: 5em;
            font-size: 0.5em;
            margin-top: 1.5em;
        }

        @media screen and (max-width: 768px) {

        }

        @media screen and (min-width: 768px) {

        }
        .symposium {
            height: 15em;
        }

        /*전공 네비게이션 박스*/
        .major-nav-box {
            height: 6em;
            /*border-bottom: 1px solid grey;*/
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

        .grad-banner {
            margin-bottom: 3em;
        }

        .lab-banner {
            margin-bottom: 3em;
        }

        /*공고 포스트 */
        .noti-default {
            width: 100%;
            border: solid 1px #ccc;
            border-radius: 3px;
            margin-bottom: 5%;
            background-color: #ffffff;
        }

        .noti-default:hover {
            width: 100%;
            border: solid 1px red;
            border-radius: 3px;
            margin-bottom: 5%;
            background-color: #ffffff;
        }

        .noti-default2 {
            width: 100%;
            border: solid 1px #ccc;
            border-radius: 3px;
            margin-bottom: 5%;
            background-color: #ffffff;
        }

        .noti-name {
            color: darkblue;
            border-left: 0.5em solid darkblue;
            margin-bottom: 2%;
            font-weight: 500;
            font-size: 1.1em;
            padding-left: 3%;
            padding-right: 3%;
            padding-top: 1%;
            letter-spacing: 2px;


        }

        .noti-name2 {
            color: darkblue;
            margin-bottom: 2%;
            font-weight: 500;
            font-size: 1.1em;
            padding-right: 3%;
            padding-top: 1%;
            letter-spacing: 2px;

        }

        .noti-title, .noti-subtitle {
            font-size: 0.8em;
            padding-left: 6%;
            padding-right: 3%;
            letter-spacing: 1px;
        }

        .noti-subtitle {
            font-weight: bold;
        }

        .noti-endtext, .noti-hh {
            width: 48%;
            font-size: 0.8em;
            color: #929292;
            display: inline-block;
            padding-left: 3%;
            padding-right: 3%;
            padding-bottom: 3%;
        }

        .noti-hh {
            text-align: left;
        }

        .noti-endtext {
            text-align: right;
        }

        .noti-period {
            padding-top: 2%;
            padding-bottom: 2%;
        }

        /*세미나 컨퍼런스*/
        .thumbnail {
            padding: 0 0 15px 0;
            border-radius: 0;
            box-shadow: 0 5px 40px 0 rgba(0, 0, 0, 0.1), 0 15px 25px 0 rgba(0, 0, 0, 0.1);
            border : 1px solid white;
        }

        .thumbnail p {
            margin-top: 15px;
            color: #555;
        }

        /* Black buttons with extra padding and without rounded borders */
        .btn {
            padding: 10px 20px;
            background-color: #333;
            color: #f1f1f1;
            border-radius: 0;
            transition: .2s;
        }

        /* On hover, the color of .btn will transition to white with black text */
        .btn:hover, .btn:focus {
            border: 1px solid #333;
            background-color: #fff;
            color: #000;
        }
        .semester {
            background-color: white;
            color : grey;
            letter-spacing: 1px;
            margin-left: 1.2em;
            font-size: 0.8em;
            border-left: 3px solid #2aabd2;
         
        }
        .conference-banner {
            max-height : 183px;
        }

        .thumbnail{
            border-radius: 7px;
        }

        img {
            border-radius: 7px;
        }
        .research-field {
            height: 3em;
            text-overflow:ellipsis;
            overflow: hidden;
            white-space: normal;
        }



/*공고 포스트 */
        .noti-default {
            width : 100%;
            border : solid 1px #ccc;
            margin-bottom: 5%;
            background-color: #fffcf3;
        }

        .noti-name {
            background-color: #fefbed;
            color: darkblue;
            border-left : 0.5em solid darkblue;
            margin-bottom: 2%;
            font-weight: 500;
            font-size: 1.1em;
            padding-left : 3%;
            padding-right: 3%;
            padding-top : 1%;
            letter-spacing: 2px;

        }

        .noti-title, .noti-subtitle {
            font-size: 0.8em;
            padding-left : 6%;
            padding-right: 3%;
            letter-spacing: 1px;
        }

        .noti-subtitle {
            font-weight: bold;
        }

        .noti-endtext,.noti-hh  {
            width : 48%;
            font-size: 0.8em;
            color : #929292;
            display: inline-block;
            padding-left : 3%;
            padding-right: 3%;
            padding-bottom: 3%;
        }

        .noti-hh {
            text-align: left;
        }
        .noti-endtext {
            text-align: right;
        }

        .noti-period {
            padding-top : 2%;
            padding-bottom: 2%;
        }
        
          .w3-display-topleft2 {
		    position: absolute;
		    left: 0;
		   
		}
    </style>
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
				<h3>
					<div style="float: left; margin-right: 0.3em;">대학원 모집공고</div>
					<br>
				</h3>

				<hr>



				<div class="row">

					<c:forEach items="${BoardList }" var="BoardList" varStatus="status">

						<c:choose>


									 <c:when test="${BoardList.slctnNotiDstnct == '대학원'}">
								 
								 
								   <c:if test="${BoardList.pchrgYn =='Y' }"	>
								  				
								  	      <div class="col-xs-4 col-sm-4 col-lg-4">
								  	      
						                      <div class="thumbnail text-center">
						                        <span class="w3-tag w3-display-topleft2 semester">${BoardList.slctnYycl} / ${BoardList.slctnSemstr}</span>
						                        
						                        <c:if test="${BoardList.storgPath == null }"	>
						                    		${BoardList.major} ${BoardList.lab}
						                    	</c:if>
						                    	<c:if test="${BoardList.storgPath != null }"	>
						                    		  <img src="${pageContext.request.contextPath }${BoardList.storgPath }" style="padding: 7% 5% 0 5%;">
						                    	</c:if>
						                    	
						                        
						                        <h5><strong>${BoardList.lab} </strong></h5>
						                        <p>${BoardList.slctnTitle}</p>
						                        <div class="noti-period">
						                            <div class="w3-light-grey w3-tiny">
						                            
						                            		<c:if test="${BoardList.slctnSemstr == '상시' || BoardList.percent <0 }"	>
							                    				<div class="w3-container "
							                                 style="width: 0; height: 1px;"></div>
							                    			</c:if>
							                    			<c:if test="${BoardList.slctnSemstr != '상시' && BoardList.percent > 0 }"	>
							                  				  	<div class="w3-container w3-black"
							                                 style="width: ${BoardList.percent}%; height: 1px;"></div>
							                    			</c:if>
						                
						                            </div>
						                        </div>
						                        <div style="margin-bottom: -5%;">
						                            <div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
						                              <c:if test="${BoardList.slctnSemstr == '상시' }"	>
							                    		 <div class="noti-endtext">상시 모집</div>	
							                    	</c:if>
							                    	<c:if test="${BoardList.slctnSemstr != '상시' && BoardList.percent > 0 }"	>
							                  			 <div class="noti-endtext">D-${BoardList.dday}</div>	  	
							                    	</c:if>
							                    	<c:if test="${BoardList.percent < 0 }"	>
							                  			 <div class="noti-endtext">모집예정</div>	  	
							                    	</c:if>
							                    	<c:if test="${BoardList.slctnSemstr != '상시' && BoardList.percent >= 99 }"	>
							                  			 <div class="noti-endtext">오늘 마감</div>	  	
							                    	</c:if>
						                        </div>
						                    </div>
						                  
						                    
						                    
						                </div>
					                                      
					                </c:if>
					

							              
							    </c:when>

						</c:choose>

					</c:forEach>


				</div>

				<div class="row">

					<c:forEach items="${BoardList }" var="BoardList" varStatus="status">

						<c:choose>


							<c:when test="${BoardList.slctnNotiDstnct == '대학원'}">



										 
								   <c:if test="${BoardList.pchrgYn =='N' }"	>
								   
								    <div class="col-xs-4 col-sm-4 col-lg-4">
								   			   <div class="noti-default">
						                        <div class="noti-name" style="color: ${BoardList.symbolColorNm};">${BoardList.major} ${BoardList.lab}</div>
						                        <c:if test="${BoardList.slctnSemstr == '상시' }"	>
							                    		 <div class="noti-title">${BoardList.slctnSemstr}</div>  
							                    	</c:if>
							                    	<c:if test="${BoardList.slctnSemstr != '상시' }"	>
							                  			  <div class="noti-title">${BoardList.slctnYycl}학년도 ${BoardList.slctnSemstr}</div>  	
							                    	</c:if>
						      
						                        <div class="noti-subtitle" style="color: ${BoardList.symbolColorNm};">${BoardList.slctnTitle}</div>
						                        <div class="noti-period">
						                            <div class="w3-light-grey w3-tiny">
						                                
						                                
						                                <c:if test="${BoardList.slctnSemstr == '상시' || BoardList.percent <0 }"	>
							                    				<div class="w3-container "
							                                 style="width: 0; height: 1px;"></div>
							                    			</c:if>
							                    			<c:if test="${BoardList.slctnSemstr != '상시' && BoardList.percent > 0 }"	>
							                  				  	<div class="w3-container w3-black"
							                                 style="width: ${BoardList.percent}%; height: 1px;"></div>
							                    			</c:if>
						                            </div>
						                        </div>
						                  
						                            <div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
						                              <c:if test="${BoardList.slctnSemstr == '상시' }"	>
							                    		 <div class="noti-endtext">상시 모집</div>	
							                    	</c:if>
							                    	<c:if test="${BoardList.slctnSemstr != '상시' && BoardList.percent > 0 }"	>
							                  			 <div class="noti-endtext">D-${BoardList.dday}</div>	  	
							                    	</c:if>
							                    	<c:if test="${BoardList.percent < 0 }"	>
							                  			 <div class="noti-endtext">모집예정</div>	  	
							                    	</c:if>
							                    	<c:if test="${BoardList.slctnSemstr != '상시' && BoardList.percent >= 99 }"	>
							                  			 <div class="noti-endtext">오늘 마감</div>	  	
							                    	</c:if>
						                        </div>
						                        </div>
								   
					                                     
					                </c:if>

							</c:when>

						</c:choose>

					</c:forEach>

				</div>
			</div>





			<c:forEach items="${codeList }" var="codeList" varStatus="status"> 
          
          	<c:if test="${codeList.cdDstnct == '학과' }"	>
          	<div class="col-xs-12 col-sm-12 col-lg-12">
          		 <h3>
                <div style="float: left; margin-right: 0.3em;">${codeList.cdNm }</div>
                <br>
	            </h3>
	          
	            <hr>
	            
	       </div>     
	            
	         <div class="row">
	         		
	         		  <c:forEach items="${majorList }" var="majorList" varStatus="status">
           
		          	<c:if test="${majorList.spCdNm == codeList.cdNm }"	>
		          	
		          		
		          		
		          		
		          			  <c:forEach items="${BoardList }" var="BoardList" varStatus="status">
		          			<c:if test="${majorList.slctnNotiNo == BoardList.slctnNotiNo}"	>
		          			
		          			
		          			 <c:choose>
		          				 <c:when test="${BoardList.slctnNotiDstnct == '연구실'}">
								  		
								  <c:if test="${BoardList.pchrgYn =='Y' }"	>
								
								  	  		 <div class="col-xs-4 col-sm-4 col-lg-4">
						                    <div class="thumbnail text-center">
						                    	
						                    	<c:if test="${BoardList.storgPath == null }"	>
						                    		${BoardList.university} ${BoardList.graduate }
						                    	</c:if>
						                    	<c:if test="${BoardList.storgPath != null }"	>
						                    		  <img src="${pageContext.request.contextPath }${BoardList.storgPath }" style="padding: 5%">
						                    	</c:if>
						                       
						                        <h5 style="font-size: 1.8vmin;"><strong>${BoardList.major} ${BoardList.lab }</strong></h5>
						                        <p style="font-size: 1.8vmin;">${BoardList.slctnTitle}</p>
						                        <div class="research-field">
						                        
						                        <c:forEach items="${majorList2}" var="majorList2" varStatus="status">
						                        	<c:if test="${BoardList.slctnNotiNo == majorList2.slctnNotiNo }"	>
						                    		  <span class="w3-tag w3-black w3-tiny ">${majorList2.cdNm}</span>
						                    	</c:if>
						                        
						                        
						                        </c:forEach>
						                        
						                        
						                        </div>
						                        <div style="margin-bottom: -5%;">
						                            <div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
						                              <c:if test="${BoardList.slctnSemstr == '상시' }"	>
							                    		 <div class="noti-endtext">상시 모집</div>	
							                    	</c:if>
							                    	<c:if test="${BoardList.slctnSemstr != '상시' && BoardList.percent > 0 }"	>
							                  			 <div class="noti-endtext">D-${BoardList.dday}</div>	  	
							                    	</c:if>
							                    	<c:if test="${BoardList.percent < 0 }"	>
							                  			 <div class="noti-endtext">모집예정</div>	  	
							                    	</c:if>
							                    	<c:if test="${BoardList.slctnSemstr != '상시' && BoardList.percent >= 99 }"	>
							                  			 <div class="noti-endtext">오늘 마감</div>	  	
							                    	</c:if>
						                        </div>
						                    </div>
						              	</div>
								  
								  
					                                      
					                </c:if>
								 
    
							    </c:when>
		          	
		          			</c:choose>
		          	
		          			
		          			</c:if>
         					</c:forEach>
		          		
		          	
		          	
		          	</c:if>
         
           
           </c:forEach>
	         
	         
	         </div>   
         
         
         
         	<div class="row">
         	
         			  <c:forEach items="${majorList }" var="majorList" varStatus="status">
           
		          	<c:if test="${majorList.spCdNm == codeList.cdNm }"	>
		          	
		          		
		          		
		          		
		          			  <c:forEach items="${BoardList }" var="BoardList" varStatus="status">
		          			<c:if test="${majorList.slctnNotiNo == BoardList.slctnNotiNo}"	>
		          				 <c:choose>
		          			
		          				 <c:when test="${BoardList.slctnNotiDstnct == '연구실'}">
								  		
								 
								   <c:if test="${BoardList.pchrgYn =='N' }"	>
								   
										 <div class="col-xs-4 col-sm-4 col-lg-4">
							                 <div class="noti-default2">
							                    <div class="noti-name2"><i class="glyphicon glyphicon-bookmark" style="color: ${BoardList.symbolColorNm};"></i>${BoardList.university} ${BoardList.graduate} ${BoardList.major} ${BoardList.lab}</div>
							                    	<c:if test="${BoardList.slctnSemstr == '상시' }"	>
							                    		 <div class="noti-title">${BoardList.slctnSemstr}</div>  
							                    	</c:if>
							                    	<c:if test="${BoardList.slctnSemstr != '상시' }"	>
							                  			  <div class="noti-title">${BoardList.slctnYycl}학년도 ${BoardList.slctnSemstr}</div>  	
							                    	</c:if>
							                    								                  
							                    <div class="noti-subtitle" style="color: ${BoardList.symbolColorNm};">${BoardList.slctnTitle}</div>
							                    <div class="noti-period">
							                        <div class="w3-light-grey w3-tiny">
							                        	
					                                 
							                                 
							                        </div>
							                    </div>
							                    <div>
							                    	 
						                            <div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
						                              <c:if test="${BoardList.slctnSemstr == '상시' }"	>
							                    		 <div class="noti-endtext">상시 모집</div>	
							                    	</c:if>
							                    	<c:if test="${BoardList.slctnSemstr != '상시' && BoardList.percent > 0 }"	>
							                  			 <div class="noti-endtext">D-${BoardList.dday}</div>	  	
							                    	</c:if>
							                    	<c:if test="${BoardList.percent < 0 }"	>
							                  			 <div class="noti-endtext">모집예정</div>	  	
							                    	</c:if>
							                    	<c:if test="${BoardList.slctnSemstr != '상시' && BoardList.percent >= 99 }"	>
							                  			 <div class="noti-endtext">오늘 마감</div>	  	
							                    	</c:if>
						                      
							                    </div>
							                </div>
							            </div>
								   
					                                     
					                </c:if>
								 
								 
							              
							    </c:when>
		          	
		          			</c:choose>
		          	
		          			
		          			</c:if>
         					</c:forEach>
		          		
		          	
		          	</c:if>
         
           
           </c:forEach>
         	
         	
         	
         	
         	
         	</div>
            
	
          	
          	</c:if>
          
          
          </c:forEach>
          
         
  

    </div>
</div>

</body>
  
  
</html>