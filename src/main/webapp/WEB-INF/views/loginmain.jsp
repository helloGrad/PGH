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


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>



<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
    

    

<!--//////////////////////// footer End ////////////////////////////-->

<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">





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


</head>
<body>

<c:import url="/WEB-INF/views/include/header.jsp" />


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
                <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=인문학" name="Humanities" class="boardtype">
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
                <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=사회과학"  name="SocialScience" class="boardtype">
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
                <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=자연과학"  name="NaturalScience" class="boardtype">
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
                <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=공학" name="Engineering" class="boardtype">
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
                <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=의약학" name="MedicineandPharmacy" class="boardtype">
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
                <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=농수해양학" name="MarineAgricultureFishery" class="boardtype">
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
                <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=예술체육학" name="ArtsandKinesiology" class="boardtype">
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
                <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=복합학" name="ScienceandTechnologyStudies" class="boardtype">
                    복합학
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

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/study.js"></script>
	
	
</body>
</html>