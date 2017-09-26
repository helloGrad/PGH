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
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>   
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	
	
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ejs/ejs.js"></script>
	    
	    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
    <link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">

    


    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontello-embedded.css">
    <link href="${pageContext.request.contextPath}/resources/css/counseling.css" rel="stylesheet">
    

<style>


body {
   padding-top: 7em;
 }	


 .pagelist {
   margin : 5%;
   text-align: center;
}

.selectbtn {
   background-color: #ff0000;
}

a.btn.disabled.numbtn {
   background-color: #D9534F;
   color : #ffffff;
}

.scrap-on {
	color: #FF0000;
}

</style>


<script>

var authUser = '${authUser.mbNo }';


	$(function() {
		

	
		
		
		disfetchList("전체", "최신순", function() {
			

			/*
			*  박가혜 상담실 스크랩 
			 */	
	
			if(authUser == null || authUser == "" ){
				
			
			}else{
				
				console.log("sssss");
				var scrapList=JSON.parse('${scrapList}');
				for(var i=0;i<scrapList.length;i++){

					if(scrapList[i].prntsDstnct==='게시글'){ //게시글
						
						
						$('.do-scrapcoun' + scrapList[i].prntsNo).addClass('scrap-on');
					}
				};	
				
			}
		});
		
	

			
		

		
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
					disfetchList("전체", "최신순", function() {
						

						/*
						*  박가혜 상담실 스크랩 
						 */	
				
						if(authUser == null || authUser == "" ){
							
						
						}else{
							
							console.log("sssss");
							var scrapList=JSON.parse('${scrapList}');
							for(var i=0;i<scrapList.length;i++){

								if(scrapList[i].prntsDstnct==='게시글'){ //게시글
									
									
									$('.do-scrapcoun' + scrapList[i].prntsNo).addClass('scrap-on');
								}
							};	
							
						}
					});
				}
			}
			

		
		
		
		});
		
		

		
	
		
	});
</script>




<script type="text/javascript">


</script>
<body>
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
		
            <div id="myBtn" class="btn btn-danger web-volunteer writeBtn">질문하기</div>
            
            <div class="dropdown option">
                <button class="w3-button w3-padding w3-padding w3-round-large" type="button" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-option-horizontal"></i>
                </button>
                <ul class="dropdown-menu">
                     <li><a href="javascript:void(0);" onclick="reset('전체','조회순');">조회순</a></li>
                     <li><a href="javascript:void(0);" onclick="reset('전체','공감순');">공감순</a></li>
                     <li><a href="javascript:void(0);" onclick="reset('전체','최신순');">최신순</a></li>
                </ul>
            </div>
            
            
           

		
		
		
		
		
            
            
 </div>
		
				
		
    

        <!--////// 질문과 답변 시작 ///////////-->
			<input type="hidden" id="authUser" name="authUser" value="${authUser.mbNo }">
        	<div id="list"></div>
        
         	<div id="pagelist" class="pagelist"></div>
        


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

<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/doscrap.js"></script>	
	
</body>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">	

</html>