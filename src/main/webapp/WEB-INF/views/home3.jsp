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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link
	href="${pageContext.request.contextPath}/resources/css/higrad-signup.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">	
<link href="${pageContext.request.contextPath}/resources/css/fontello-embedded.css" rel="stylesheet">	
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-light-green.css">

    <style>
        body {
            padding-top: 6em;
        }

        /*more 버튼*/
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
        .symposium {
            height : 15em;
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
            <a class="navbar-brand" href="main.html">하이그래드넷</a>
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
    main contents
    page
-->
<div class="container">

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html">
                    You might interest
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

    <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html">
                    인문학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--사회과학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html">
                    사회과학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html">
                    자연과학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html">
                    공학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html">
                    의약학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html">
                     농수해양학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html">
                    예술체육학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html">
                    복학학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>
</div>

</div>


</body>
</html>