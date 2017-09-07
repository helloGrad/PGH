<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
    <title>상담실</title>
    
    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
    
    

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
    <link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontello-embedded.css">
    
    

<style>

  body {
            padding-top: 70px;
        }
        .remove-btn {
            float : right;
        }

        .web-volunteer {
            font-size: 1.5em;
        }
        .info {
            border-top: 1px solid lightgray;
        }
        .interest {
            color : gray;
        }
        .option {
            float : right;
        }
        
 		a:visited { color: gray; text-decoration: none;}



textarea {width:300px; overflow:visible} 

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.postMetaHeader {
    padding-top: 35px;
}


.avatar-image {
    display: inline-block;
    vertical-align: middle;
    border-radius: 100%;
}

.avatar-image--smaller {
    width: 40px;
    height: 40px;
    margin : 20px 10px 0 20px;
}

img {
    border: 0;
}


.u-flex1 {
   
    flex: 1 1 auto;
}


.writeimage{
 float: left;
}

.writeName{
 margin: 20px 0 0 10px;
  
}

.col-close:before { content: 'x'; margin:0 20px 0 0; }



textarea.wrtbtTitle::-webkit-input-placeholder {
   font-size: 40px;
  font-weight: bold;
}
     
textarea.wrtbtTitle {
   font-size: 40px;
  font-weight: bold;
  outline:none;

}

textarea.wrtbtText::-webkit-input-placeholder {
   font-size: 21px;
  font-weight: bold;
}
     
textarea.wrtbtText {
   font-size: 21px;
  
  outline:none;

}
  

textarea.wrtbtText:focus { 
	border: 0 none #FFF;
    overflow: hidden;
    outline: none;
}




 .writedropdown {
   float : right;
   margin: 15px 3px 0 0;
        }
        
        
	@media screen and (max-width: 400px) {
           
			
					
				.modal-dialog.modal-fullsize {
				  width: 100%;
				  height: 100%;
				  margin: 0;
				  padding: 0;
				  padding-right: 0;
				}
				.modal-content.modal-fullsize {
				  height: auto%;
				  min-height: 100%;
				  border-radius: 0; 
				   padding-right: 0;
				}
				.modal {
				  height: auto;
				  min-height: 100%;
			
				 
				}

            }
            @media screen and (min-width: 401px) and (max-width: 600px) {
               
         
					
						
				.modal-dialog.modal-fullsize {
				  width: 100%;
				  height: 100%;
				  margin: 0;
				  padding: 0;
				  padding-right: 0;
				}
				.modal-content.modal-fullsize {
				   height: auto;
				  min-height: 100%;
				  border-radius: 0; 
				   padding-right: 0;
				}
				.modal {
				  height: auto;
				  min-height: 100%;
				 
				}

            }
            @media screen and (min-width: 801px) {
                
            }

 
.modal {
	display: none; 
	position: fixed; 
	z-index: 1; 
	left: 0;
	top: 0;
	width: 100%; 
	height: 100%; 
	overflow: auto; 
	background-color: rgb(0, 0, 0); 
	background-color: rgba(0, 0, 0, 0.4); 
}


.modal-body {
    max-height: calc(100vh - 210px);
    overflow-y: auto;
}



</style>


<script>

//박가혜 2017-08-23

	
	function titleResize(obj) {

		obj.style.height = "1px";

		obj.style.height = (20 + obj.scrollHeight) + "px";

	}

	function resize(obj) {

		// console.log(obj.scrollHeight);

		if (obj.scrollHeight <= 200) {

		} else {

			obj.style.height = (1 + obj.scrollHeight) + "px";

		}

	}
</script>



<script type="text/javascript">
	//박가혜 2017-08-23

	var writrInfoOpngYn;

	$(function() {

		var authUser = $("#authUser").val();

		$("#myBtn").click(function() {

			if (authUser === null || authUser === '') {

				$("#login").css({
					"display" : "block"
				});

			} else {
				
				
				//$("#writeModal").modal();
				$("#writeModal").css({
					"display" : "block"
				});
				
				document.getElementById('wrtbtText').focus();

			}

		});

		$(".detail").click(function() {

			if (authUser === null || authUser === '') {
				$(".detail").removeAttr("href");
				// href 막기
				$("#login").css({
					"display" : "block"
				});

			}

		});
		
		$(".close").click(function() {
			$("#writeModal").css({
				"display" : "none"
			});
		});

		$("html").click(function(event) {
			if (event.target.id === "writeModal") {
				$("#writeModal").css({
					"display" : "none"
				});
			}
		});
		

		$('#writrInfoOpngYn li > a').on('click', function() { //비공개여부 값 저장 하기

			writrInfoOpngYn = $(this).attr('value');

		});
		
		
		$(document).keydown(function(e) { 
			

			  var modal1 = document.getElementById('writeModal');
		    if (e.keyCode == 27) { 
		    	
				   modal1.style.display = "none";
		    } 
		});

	})

	//박가혜 2017-08-23
	function counselinginsert() {

		event.preventDefault();

		var wrtbtTitle = $("#wrtbtTitle").val();
		var wrtbtText = $("#wrtbtText").val();

		var conslBbsDstnct = $("#conslBbsDstnct").val();
		var bbsNo = $("#bbsNo").val();

		console.log(writrInfoOpngYn);

		var counselinglist = {
			wrtbtTitle : wrtbtTitle,
			wrtbtText : wrtbtText,
			writrInfoOpngYn : writrInfoOpngYn,
			conslBbsDstnct : conslBbsDstnct,
			bbsNo : bbsNo
		};

		//모달 종료 
		$("#writeModal").css({
			"display" : "none"
		});

		location.reload();

		// ajax 통신 

		jQuery.ajaxSettings.traditional = true;

		//console.log(JSON.stringify(counselinglist));

		$.ajax({
			url : "${pageContext.request.contextPath }/counseling/api/write",
			type : "post",
			dataType : "json", // 받아야되는 데이터 타입 
			data : JSON.stringify(counselinglist),
			//{comlist : comlist},
			contentType : 'application/json; charset=utf-8', //json 타입으로 데이터를 보낼때 사용함 

			success : function(response) {

				if (response.result === "fail") {

					console.error(response.message);
					return;
				}

				console.log("성공입니다");
				//console.log(response.data);
				//response.data.contextpath = "${pageContext.request.contextPath}/noti/api/lab";

			},
			error : function(jqXHR, status, e) {
				console.log("에러입니다");
				console.error(status + " : " + e);
				console.log(jqXHR);
			}
		});

	}
</script><body>
<!-- /////////////////////////////// Header ///////////////////////-->


<c:import url="/WEB-INF/views/include/header.jsp" />
	
	
<div class="container">
    <!-- ///// filter (대분류) //////-->


    <!-- ////// filter ///////-->
    <div class="row">
        <div class="col-lg-3">
        	    분야
            <a href="*" class="remove-btn">EDIT</a>

            <hr>
            <div class="well well-sm">
                <i class="glyphicon glyphicon-tag"></i> 즐겨찾기
            </div>
            <div class="well well-sm">
                <i class="glyphicon glyphicon-tag"></i> 답변을 기다리는 중 ...
            </div>
            <div class="well well-sm">
                <i class="glyphicon glyphicon-tag"></i> 데이터베이스
                <a href=""> <i class="glyphicon glyphicon-remove remove-btn"></i></a>
            </div>
            <div class="well well-sm">
                <i class="glyphicon glyphicon-tag"></i> 인공지능
                <a href=""> <i class="glyphicon glyphicon-remove remove-btn"></i></a>
            </div>
            <div class="well well-sm">
                <i class="glyphicon glyphicon-tag"></i> 빅 데이터
                <a href=""> <i class="glyphicon glyphicon-remove remove-btn"></i></a>
            </div>
            <div class="well well-sm">
                <i class="glyphicon glyphicon-tag"></i> 컴퓨터
                <a href=""> <i class="glyphicon glyphicon-remove remove-btn"></i></a>
            </div>
        </div>



    <div class="col-lg-9">
    
		 <!-- Trigger/Open The Modal -->
		
		<div class="w3-container">
		
            <div id="myBtn" class="btn btn-danger web-volunteer">질문하기</div>
            
            <div class="dropdown option">
                <button class="w3-button w3-padding w3-padding w3-round-large" type="button" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-option-horizontal"></i>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">조회순</a></li>
                    <li><a href="#">공감순</a></li>
                    <li><a href="#">최신순</a></li>
                </ul>
            </div>
            
            
           
     
		
		  <!-- Modal -->


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
	      			<div class="">20세 
	      				
	      			</div>
	      	
	        	</div>
	       
	          
	             
	
	              
	        </div>
	        <form class="counseling-form" id="counseling-form" name="counseling-form" onsubmit="counselinginsert();">
	        
	        <div class="modal-body">
	        
	
	        
					 
						<input type="hidden" id="authUser" name="authUser" value="${authUser.mbNo }">
						<input type="hidden" id="bbsNo" name="bbsNo" value="1"> <!-- 진로게시판을 의미 -->
						
						 <div class="">
	        
	      
	        			<textarea class="wrtbtTitle" onkeydown="titleResize(this)" onkeyup="titleResize(this)" id="wrtbtTitle" name="wrtbtTitle" placeholder="Title..." style=" width:100%; height:70px; border:none; border-color: white;" autofocus></textarea>
			 			<br>
			 			<textarea class="wrtbtText" onkeydown="resize(this)" onkeyup="resize(this)" id="wrtbtText" name="wrtbtText" placeholder="Tell your story..." style=" width:100%; height:200px; border:none; border-color: white;"></textarea>
			      	
	   					</div>
						
	        
	        </div>
	        <div class="modal-footer">
	         <button type="submit" class="form-control">입력</button>
	        </div>
	         </form>
						  
						  
						  
						  
		</div>
		</div>
	</div>		
		
		
		
		
		
            
            
 </div>
		
				
		
    

        <!--////// 질문과 답변 시작 ///////////-->

        	<c:set var="listcount" value="${fn:length(counselingList)}"/>
        	
        	<c:forEach items="${counselingList }" var="counselingList" varStatus="status">
			
			
					<c:if test="${counselingList.count == 0 }"	>
						
						     <div class="w3-card-2 w3-margin">
						     
						            <div class="w3-container interest">#화학, #생물학, #화학공학
						            </div>
						            <div class="w3-container">
						                <h4><b><a  class="detail" href="${pageContext.servletContext.contextPath }/counseling/detail?no=${counselingList.wrtbtNo}&type=prnts">${counselingList.wrtbtTitle }</a></b></h4>
						                
						                
						            </div>
						
						            <div class="w3-container">
						
						                <div class="w3-button w3-padding-small w3-white w3-border w3-border-white w3-round-large">
						                <a class="detail" href="${pageContext.servletContext.contextPath }/counseling/detail?no=${counselingList.wrtbtNo}&type=reply">답변하기</a>
						                </div>
						                <div class="dropup option">
						                    <button class="w3-button w3-padding w3-padding w3-round-large" type="button" data-toggle="dropdown">
						                        <i class="glyphicon glyphicon-option-horizontal"></i>
						                    </button>
						                    <ul class="dropdown-menu">
						                        <li><a href="#">익명으로 답변하기</a></li>
						                        <li><a href="#">스크랩하기</a></li>
						                        <li><a href="#">신고하기</a></li>
						                    </ul>
						                </div>
						            </div>
						            <br>
						        </div>

					</c:if>
					<c:if test="${counselingList.count != 0 }"	>
					
					   <div class="w3-card-2 w3-margin">
					
					   <div class="w3-container interest">#유학 #외국 #컴퓨터
			            </div>
			            <div class="w3-container">
			                <h4><b><a class="detail" href="${pageContext.servletContext.contextPath }/counseling/detail?no=${counselingList.wrtbtNo}&type=prnts">${counselingList.wrtbtTitle }</a></b></h4>
			
			            </div>
			            <div class="w3-container">
			                <h6>${replyList[status.index].nknm }
			                    <span class="w3-opacity">${replyList[status.index].avlblBeginDt }에 답변</span></h6>
			                <p> <a class="detail" href="${pageContext.servletContext.contextPath }/counseling/detail?no=${counselingList.wrtbtNo}&type=prnts">${replyList[status.index].wrtbtText }</a></p>
			                
			               
			            </div>
			
			            <div class="w3-container">
			                <div class="w3-button w3-padding-small w3-white w3-border w3-border-white w3-round-large">
			                answers<span class="w3-badge w3-white">${counselingList.count }</span>
			                </div>
			                <div class="w3-button w3-padding-small w3-white w3-border w3-border-white w3-round-large">
			                    Up <span class="w3-badge w3-white">${counselingList.rcmdCo }</span>
			                </div>
			                <div class="w3-button w3-padding-small w3-white w3-border w3-border-white w3-round-large">
			                    Down <span class="badge">${counselingList.ncmdCo }</span>
			                </div>
			                <div class="dropup option">
			                    <button class="w3-button w3-padding w3-padding w3-round-large dropdown-toggle" type="button" data-toggle="dropdown">
			                    <i class="glyphicon glyphicon-option-horizontal"></i>
			                    </button>
			                    <ul class="dropdown-menu">
			                        <li><a href="#">익명으로 답변하기</a></li>
			                        <li><a href="#">스크랩하기</a></li>
			                        <li><a href="#">신고하기</a></li>
			                    </ul>
			                </div>
			                
			            </div>
			            <Br>
			        </div>
					
				
				</c:if>
				
			</c:forEach>
        
         
        


    </div>


    </div>
</div>

<footer>
    <!--//////////////////////// footer ////////////////////////////-->
    <div class="container text-center">
        <hr />
        <div class="row">
            <div class="col-lg-12">
                <div class="col-md-3">
                    <ul class="nav nav-pills nav-stacked">
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <ul class="nav nav-pills nav-stacked">
                        <li><a href="#">Product for Mac</a></li>
                        <li><a href="#">Product for Windows</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <ul class="nav nav-pills nav-stacked">
                        <li><a href="#">Web analytics</a></li>
                        <li><a href="#">Presentations</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <ul class="nav nav-pills nav-stacked">
                        <li><a href="#">Product Help</a></li>
                        <li><a href="#">Developer API</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <hr>

    </div>


    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <div class="copyright">
                        © 2015, Webenlance, All rights reserved
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <div class="design">
                        <a href="#">Franchisee </a> |<a target="_blank" href="http://www.webenlance.com">Web Design & Development by Webenlance</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</footer>

</body>
</html>