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

	
<script src="https://apis.google.com/js/platform.js" async defer></script>




<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.min1.css">
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



   <style>
        /*more 버튼*/
        body {
            padding-top: 7em;
        }

        .more {
            float: right;
            width: 5em;
            font-size: 0.5em;
            margin-top: 1.5em;
        }

        @media screen and (max-width: 768px) {
            .dropdown-menu-large {
                margin-left: 0;
                margin-right: 0;
            }

            .dropdown-menu-large > li {
                margin-bottom: 30px;
            }

            .dropdown-menu-large > li:last-child {
                margin-bottom: 0;
            }

            .dropdown-menu-large {
                padding: 3px 15px !important;
            }

            .dropdown-menu-large {
                margin-left: 1em;
                margin-right: 16px;
                padding: 20px 0px;
            }
        }

        @media screen and (min-width: 768px) {
            .glyphicon-education {
                font-size: 6em;
            }

            .glyphicon-education {
                font-size: 6em;
            }

            .dropdown-menu-large {
                margin-left: 25em;
                margin-right: 16px;
                padding: 20px 0px;
            }
        }

        .dropdown-large {
            position: static !important;
        }

        .dropdown-menu-large > li > ul {
            padding: 0;
            margin: 0;
        }

        .dropdown-menu-large > li > ul > li {
            list-style: none;
        }

        .dropdown-menu-large > li > ul > li > a {
            display: block;
            padding: 3px 20px;
            clear: both;
            font-weight: normal;
            line-height: 1.428571429;
            color: #333333;
            white-space: normal;
        }

        .dropdown-menu-large > li ul > li > a:hover,
        .dropdown-menu-large > li ul > li > a:focus {
            text-decoration: none;
            color: #5bc0de;
            /*background-color: #f5f5f5;*/
        }

        .dropdown-menu-large .dropdown-header {
            color: #428bca;
            font-size: 18px;
        }

        .jumbotron {
            position: relative;
            z-index: 1;
            height: 25em;
            margin-bottom: 0.1em;
            text-align: center;
            background-size: cover;
        }

        /*전공 네비게이션 박스*/
        .major-nav-box {
            height: 6em;
            border-bottom: 1px solid grey;
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

        .jumbotron {
            height: 9em;
            margin-bottom: 1em;
        }
    </style>

    <script>
        $(document).ready(function (e) {
            $(".degree").click(function () {
                $(this).toggleClass("check");
            });
        });

        $(window).resize(function () {
            var windowWidth = $(window).width();
            console.log(windowWidth);
            if (window.innerWidth <= 768) {
                $(".quick-menu").removeClass("table-bordered").addClass("thumbnail");
            } else {
                $(".quick-menu").removeClass("thumbnail");

            }
        });
    </script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top al">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
           <a class="navbar-brand" href="${pageContext.servletContext.contextPath }/">하이그래드넷</a>
            <ul class="nav navbar-nav">
                <li class="dropdown dropdown-large">
                    <a class=" navbar-brand dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티 <span
                            class="caret"></span></a>

                    <ul class="dropdown-menu dropdown-menu-large row">
                        <div class="">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#">모든 커뮤니티</a></li>
                                <li><a href="#">즐겨찾기</a></li>
                            </ul>
                        </div>

                        <br>

                        <li class="col-xs-3 col-lg-3 table-bordered">
                            <ul>
                                <br>
                                <li class="quick-menu"><a href="#"><i class="glyphicon glyphicon-search"></i>
                                    <div class="lead"><b>대학원</b></div>
                                </a></li>
                                <!--<li class=" "><a href="#"><img src="images/higrad-img/traffic.jpg"><div class="">대학원</div></a></li>-->
                            </ul>
                        </li>
                        <li class="col-xs-3 col-lg-3 table-bordered">
                            <ul>
                                <br>
                                <li class="quick-menu"><a href="#"><img src="images/higrad-img/safari.jpg"></a>
                                    <div class=""><b>질문하기</b></div>
                                </li>
                            </ul>
                        </li>
                        <li class="col-xs-3 col-lg-3 table-bordered">
                            <ul>
                                <br>
                                <li class="quick-menu"><a href="#"><img src="images/higrad-img/chemistry.jpg"></a>
                                    <div class=""><b>연구실</b></div>
                                </li>
                            </ul>
                        </li>
                        <li class="col-xs-3 col-lg-3 table-bordered">
                            <ul>
                                <br>
                                <li class="quick-menu"><a href="#"><i class="glyphicon glyphicon-cog"></i>
                                    <div class="lead"><b>설정</b></div>
                                </a></li>
                                <!--<li class=""><a href="#"><img src="images/higrad-img/settings.jpg"></a><div class="">설정</div></li>-->
                            </ul>
                        </li>

                    </ul>
                </li>
            </ul>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href=""> <i class="glyphicon glyphicon glyphicon-search" style="font-size: 1.5em;"></i></a></li>
                <li><a href=""> <i class="glyphicon glyphicon-bell" style="font-size: 1.5em;"></i></a></li>
                <li><a href=""> <i class="glyphicon glyphicon-user" style="font-size: 1.5em;"></i></a></li>
            </ul>
        </div>
    </div>
</nav>

<!--
    학과 구분 nav 박스
-->
<div class="row major-nav-box">
    <div class="container">
        <div class=" text-center" style="background-color: white;">
            <div class="col-sm-2"></div>


            <div class="col-sm-8">
                <!--<img src="images/higrad-img/Engineering.jpg"-->
                <!--style="width: 100%; max-width: 760px; vertical-align: middle">-->
                <h2 class="" style="margin-bottom: -0.5em;">Engineering</h2>

            </div>
            <div class="col-sm-2"></div>
            <ul class="nav navbar-nav navbar-left">
                <li><a href="${pageContext.servletContext.contextPath }/">전체</a></li>
                <li><a href="${pageContext.servletContext.contextPath }/study/notice">모집공고</a></li>
                <li><a href="${pageContext.servletContext.contextPath }/study/discussion">토론</a></li>
                <li><a href="${pageContext.servletContext.contextPath }/study/research">연구과제</a></li>
                <li><a href="${pageContext.servletContext.contextPath }/study/lab">연구실</a></li>

            </ul>
        </div>
    </div>


</div>


<!—
    main contents
    page
—>
<div class="row">
    <div class="container">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!—날짜 ,요일 , 년월 —>
            <h3>
                <div style="float: left; margin-right: 0.3em;">공학일반</div>
                <br>
            </h3>
            <!—시작 라인—>
            <hr>
            <!—내용—>
            <div class="col-xs-4 col-sm-4 col-lg-4">
                <div class="jumbotron">1234<br>12341234</div>
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
            </div>
            <div class="col-xs-4 col-sm-4 col-lg-4">
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
            </div>
            <div class="col-xs-4 col-sm-4 col-lg-4">
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
            </div>
        </div>

        <div class="col-lg-12">
            <!—날짜 ,요일 , 년월 —>
            <h3>
                <div style="float: left; margin-right: 0.3em;">기계공학</div>
                <br>
            </h3>
            <!—시작 라인—>
            <hr>
            <!—내용—>
            <div class="col-xs-4 col-sm-4 col-lg-4">
                <div class="jumbotron">1234<br>12341234</div>
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
            </div>
            <div class="col-xs-4 col-sm-4 col-lg-4">
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
            </div>
            <div class="col-xs-4 col-sm-4 col-lg-4">
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
            </div>
        </div>

        <div class="col-lg-12">
            <!—날짜 ,요일 , 년월 —>
            <h3>
                <div style="float: left; margin-right: 0.3em;">자동차공학</div>
                <br>
            </h3>
            <!—시작 라인—>
            <hr>
            <!—내용—>
            <div class="col-xs-4 col-sm-4 col-lg-4">
                <div class="jumbotron">1234<br>12341234</div>
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
            </div>
            <div class="col-xs-4 col-sm-4 col-lg-4">
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
            </div>
            <div class="col-xs-4 col-sm-4 col-lg-4">
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
                <div class="jumbotron"></div>
            </div>
        </div>




    </div>
</div>

</body>
  
  
</html>