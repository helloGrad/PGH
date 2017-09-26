<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>하이그래드넷</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="css/higrad-signup.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <style>
        /* nav-bar css Start */
        .navbar {
            background-color: rgba(255, 255, 255, 0.95);
        }

        .navbar-qna {
            font-weight: 400;
            margin-top: -5px;
            margin-bottom: -5px;
            margin-left: -1em;
            font-size: 1.5vmin;
            letter-spacing: 4px;
            float: left;
        }

        .navbar-nav li a:hover {
            color: #1abc9c !important;
            background-color: white;
        }
        .grad-background-color {
            background-color: rgb(247, 245, 242);
        }

        /* nav-bar End */
        body {
            padding-top: 5em;
        }
        .grad-banner {
            box-shadow: 5px 10px 10px rgba(102, 102, 255, 0.3), -1px -1px 10px rgba(136, 176, 75, 0.3);
            margin-bottom: 1.5em;
            background-color: white;
        }

        .grad-banner:hover {
            box-shadow: 5px 10px 30px rgba(102, 102, 255, 0.5), -1px -1px 30px rgba(136, 176, 75, 0.5);
            margin-bottom: 1.5em;

        }

        .lab-banner {
            box-shadow: 5px 10px 10px rgba(51, 102, 255, 0.3), -1px -1px 10px rgba(75, 0, 130, 0.3);
            margin-bottom: 1.5em;
            background-color: white;
        }

        .lab-banner:hover {
            box-shadow: 5px 10px 30px rgba(51, 102, 255, 0.5), -1px -1px 30px rgba(75, 0, 130, 0.5);
            margin-bottom: 1.5em;
        }

        .conference-banner {
            box-shadow: 5px 10px 10px rgba(51, 102, 255, 0.3), -1px -1px 10px rgba(153, 0, 153, 0.3);
            margin-bottom: 1.5em;
            background-color: white;
        }
        .conference-banner:hover {
            box-shadow: 5px 10px 30px rgba(51, 102, 255, 0.5), -1px -1px 30px rgba(153, 0, 153, 0.5);
            margin-bottom: 1.5em;
            background-color: white;
        }

        .qna-banner {
            box-shadow: 5px 10px 10px rgba(0, 0, 51, 0.3), -1px -1px 10px rgba(0, 0, 51, 0.3);
            margin-bottom: 1.5em;
            background-color: white;
        }
        .qna-banner:hover {
            box-shadow: 5px 10px 30px rgba(0, 0, 51, 0.5), -1px -1px 30px rgba(0, 0, 51, 0.5);
            margin-bottom: 1.5em;
        }

        .content-answers {
            height: 3.5em;
            text-overflow:ellipsis;
            overflow: hidden;
            white-space: normal;
        }
        .grad-banner-our {
            box-shadow: 5px 10px 10px rgba(0, 0, 0, 0.15), -1px -1px 10px rgba(0, 0, 0, 0.15);
            margin-bottom: 1.5em;
            background-color: white;
        }

    </style>
</head>
<body class="grad-background-color">
<!--nav-bar -->
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
                <li>
                    <a class=" navbar-qna nav-btn" href="#">
                        <span class=" w3-btn w3-border w3-round-large"><i
                                class="glyphicon glyphicon-pencil"></i>글쓰기</span></a>
                </li>
                <li>
                    <a class=" navbar-qna" href="#">
                        <span class="w3-btn w3-border w3-round-large"><i
                                class="glyphicon glyphicon-check"></i>답변하기</span></a>
                </li>
            </ul>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href=""> <i class="glyphicon glyphicon glyphicon-search" style="font-size: 1.5em;"></i></a></li>
                <li><a href=""> <i class="glyphicon glyphicon-user" style="font-size: 1.5em;"></i></a></li>
            </ul>
        </div>

    </div>
</nav>

<!--
    학과 구분 nav 박스
-->
<div class="">
    <div class="row w3-center">
        <ul class="nav navbar-nav navbar-left">
            <li><a href="major-content.html">전체</a></li>
            <li><a href="major-recruit.html">모집공고</a></li>
            <li><a href="major-counseling.html">토론</a></li>
            <li><a href="majors.html">연구과제</a></li>
            <li><a href="majors.html">맞춤 설정</a></li>
        </ul>
    </div>
</div>


<!--
    main contents
    page
-->

    <div class="container">
        <div class="row">
            <!--날짜 ,요일 , 년월 -->
            <h1>
                <div style="float: left; margin-right: 0.3em;">8</div>
                <small>
                    <div style="float: left; font-size : medium; line-height: 130%;">금요일<br>2017년 9월</div>
                </small>
                <br>
            </h1>
            <!--시작 라인-->
            <hr>
            <!--내용-->
            <!--1 lane-->
            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="grad-banner w3-card w3-round-large">
                    <div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">2018년 전기</div>
                    <img src="images/higrad-img/globalsymbol_korea2_large.gif" alt="고려대학교"
                         style="width:100%; padding: 1em 1em 0 1em;">
                    <div class="w3-container w3-center">
                        <h4><strong>일반대학원</strong></h4>
                        <p style="font-size: 1.8vmin;"><span class="grad-target">석/박사</span> 신입생 모집</p>
                    </div>
                    <div class="noti-period">
                        <div class="w3-light-grey w3-tiny">
                            <div class="w3-container w3-black"
                                 style="width: 50%; height: 2px;"></div>
                        </div>
                    </div>
                    <div class="w3-padding">
                        <span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        <span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"
                              style="float :right;">D-10</span>
                    </div>
                </div>

                <div class="qna-banner w3-card w3-round-large">
                    <div class="w3-small w3-padding ">
                        <span class="">Ordinary</span>
                    </div>
                    <div class="w3-container w3-center">
                        <h4 style="font-size: 2vmin;"><strong>밀웜을 다오</strong></h4>
                    </div>
                    <img src="http://image.ytn.co.kr/general/jpg/2016/0905/201609050940070825_d.jpg" alt="고려대학교"
                         style="width:100%;">

                    <div class="w3-container w3-margin-top">
                        <span class="w3-small w3-padding" >Comment</span>
                        <p class=" w3-padding content-answers w3-round-large w3-border-blue grad-background-color" style="font-size: 1.8vmin; margin-top: 0em;">
                            또 먹냐 </p>
                    </div>
                </div>

                <div class="lab-banner w3-card w3-round-large">
                    <div class="w3-small w3-padding  "style="margin-bottom: -1.5em; height: 2.7em">
                        <span class="w3-red " style="padding-right: 2px; padding-left: 10px; margin-right: -5px">BK</span>
                        <span class="w3-blue " style="padding-right: 5px; padding-left: 0px;">21+</span>
                    </div>
                    <img src="images/higrad-img/globalsymbol_korea2_large.gif" alt="고려대학교"
                         style="width:100%; padding: 1em 1em 0 1em;">
                    <div class="w3-container w3-center">
                        <h4 style="font-size: 1.8vmin;"><strong>생명공학원 유전체학 연구실</strong></h4>
                        <p style="font-size: 1.8vmin;"><span class="grad-target">석/박사</span> 신입생 모집</p>
                    </div>
                    <div class="research-field w3-padding text-center">
                        <span class="w3-tag w3-black w3-tiny ">Fashion</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">New York</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">London</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">Hats</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">Norway</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">Sweaters</span>
                    </div>
                    <div class="w3-padding">
                        <span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        <span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"
                              style="float :right;">D-10</span>
                    </div>
                </div>

            </div>
            <!--2 lane-->
            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="lab-banner w3-card w3-round-large">
                    <div class="w3-small w3-padding  "style="margin-bottom: -1.5em; height: 2.7em">
                        <!--<span class="w3-red " style="padding-right: 2px; padding-left: 10px; margin-right: -5px">BK</span>-->
                        <!--<span class="w3-blue " style="padding-right: 5px; padding-left: 0px;">21+</span>-->
                    </div>
                    <img src="images/higrad-img/globalsymbol_korea2_large.gif" alt="고려대학교"
                         style="width:100%; padding: 1em 1em 0 1em;">
                    <div class="w3-container w3-center">
                        <h4 style="font-size: 1.8vmin;"><strong>생명공학원 유전체학 연구실</strong></h4>
                        <p style="font-size: 1.8vmin;"><span class="grad-target">석/박사</span> 신입생 모집</p>
                    </div>
                    <div class="research-field w3-padding text-center">
                        <span class="w3-tag w3-black w3-tiny ">Fashion</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">New York</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">London</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">Hats</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">Norway</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">Sweaters</span>
                    </div>
                    <div class="w3-padding">
                        <span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        <span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"
                              style="float :right;">D-10</span>
                    </div>
                </div>

                <div class="grad-banner w3-card w3-round-large">
                    <div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">2018년 전기</div>
                    <img src="images/higrad-img/globalsymbol_korea2_large.gif" alt="고려대학교"
                         style="width:100%; padding: 1em 1em 0 1em;">
                    <div class="w3-container w3-center">
                        <h4><strong>일반대학원</strong></h4>
                        <p style="font-size: 1.8vmin;"><span class="grad-target">석/박사</span> 신입생 모집</p>
                    </div>
                    <div class="noti-period">
                        <div class="w3-light-grey w3-tiny">
                            <div class="w3-container w3-black"
                                 style="width: 50%; height: 2px;"></div>
                        </div>
                    </div>
                    <div class="w3-padding">
                        <span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        <span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"
                              style="float :right;">D-10</span>
                    </div>
                </div>

                <div class="qna-banner w3-card w3-round-large">
                    <div class="w3-small w3-padding ">
                        <span class="">Question</span>
                    </div>
                    <div class="w3-container w3-center">
                        <h4 style="font-size: 2vmin;"><strong>제목 제목 제목 궁금 궁금 궁금 궁금 제목 제목 제목 궁금 궁금 궁금 궁금</strong></h4>
                    </div>
                    <img src="" alt=""
                         style="width:100%;">
                    <div class="w3-container w3-margin-top">
                        <span class="w3-small w3-padding" >Answer</span>
                        <p class=" w3-center w3-padding content-answers w3-round-large w3-border-blue grad-background-color" style="font-size: 1.8vmin; margin-top: 0em;">
                            대낮부터 거하게 데굴데굴 데굴데굴 데굴데굴 데굴데굴 데굴데굴 데굴데굴 굴데굴 데굴데굴 데굴데굴 데굴데굴 데굴데굴 데굴데굴 </p>
                    </div>
                    <div class="w3-container w3-center w3-padding">
                        <button class="w3-button w3-block w3-border w3-white w3-round-large w3-text-grey" style="letter-spacing: 2px;">답변하기</button>
                    </div>
                </div>

                <div class="qna-banner w3-card w3-round-large">
                    <div class="w3-small w3-padding ">
                        <span class="">Ordinary</span>
                    </div>
                    <div class="w3-container w3-center">
                        <h4 style="font-size: 2vmin;"><strong>와 석사 심사 탈락했다</strong></h4>
                    </div>
                    <img src="" alt=""
                         style="width:100%;">
                    <div class="w3-container w3-margin-top">
                        <span class="w3-small w3-padding" >Comment</span>
                        <p class=" w3-padding content-answers w3-round-large w3-border-blue grad-background-color" style="font-size: 1.8vmin; margin-top: 0em;">
                            ㅊㅊ  </p>
                    </div>
                </div>
            </div>
            <!--3 lane-->
            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="lab-banner w3-card w3-round-large">
                    <div class="w3-small w3-padding  "style="margin-bottom: -1.5em; height: 2.7em">
                        <span class="w3-red " style="padding-right: 2px; padding-left: 10px; margin-right: -5px">BK</span>
                        <span class="w3-blue " style="padding-right: 5px; padding-left: 0px;">21+</span>
                    </div>
                    <img src="images/higrad-img/globalsymbol_korea2_large.gif" alt="고려대학교"
                         style="width:100%; padding: 1em 1em 0 1em;">
                    <div class="w3-container w3-center">
                        <h4 style="font-size: 1.8vmin;"><strong>생명공학원 유전체학 연구실</strong></h4>
                        <p style="font-size: 1.8vmin;"><span class="grad-target">석/박사</span> 신입생 모집</p>
                    </div>
                    <div class="research-field w3-padding text-center">
                        <span class="w3-tag w3-black w3-tiny ">Fashion</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">New York</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">London</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">Hats</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">Norway</span>
                        <span class="w3-tag w3-light-grey w3-tiny ">Sweaters</span>
                    </div>
                    <div class="w3-padding">
                        <span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        <span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"
                              style="float :right;">D-10</span>
                    </div>
                </div>

                <div class="qna-banner w3-card w3-round-large">
                    <div class="w3-small w3-padding ">
                       <span class="">Question</span>
                    </div>
                    <div class="w3-container w3-center">
                    <h4 style="font-size: 2vmin;"><strong>제목 제목 제목 궁금 궁금 궁금 궁금 제목 제목 제목 궁금 궁금 궁금 궁금</strong></h4>
                        </div>
                    <img src="http://cfile239.uf.daum.net/image/2318A834560919B9295343" alt="고려대학교"
                         style="width:100%;">
                    <div class="w3-container w3-margin-top">
                        <span class="w3-small w3-padding" >Answer</span>
                        <p class=" w3-center w3-padding content-answers w3-round-large w3-border-blue grad-background-color" style="font-size: 1.8vmin; margin-top: 0em;">
                            대낮부터 거하게 데굴데굴 데굴데굴 데굴데굴 데굴데굴 데굴데굴 데굴데굴 굴데굴 데굴데굴 데굴데굴 데굴데굴 데굴데굴 데굴데굴 </p>
                    </div>
                    <div class="w3-container w3-center w3-padding">
                        <button class="w3-button w3-block w3-white w3-border w3-round-large w3-text-grey" style="letter-spacing: 2px;">답변하기</button>
                    </div>
                </div>

                <div class="grad-banner-our w3-card w3-round-large">
                    <div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">2018년 전기</div>
                    <div class="w3-container w3-center w3-padding" style="margin-bottom: -1em;">
                        <h4 class="w3-padding w3-round-large" style="margin-bottom: 0em;"><strong style="color: crimson;">고려대학교</strong><strong> 일반대학원</strong></h4>
                        <p style="font-size: 1.8vmin;">석/박사 신입생 모집</p>
                    </div>
                    <div class="w3-padding">
                        <span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        <span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"
                              style="float :right;">D-10</span>
                    </div>
                 </div>

                <div class="grad-banner-our w3-card w3-round-large">
                    <div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">2018년 전기</div>
                    <div class="w3-container w3-center w3-padding" style="margin-bottom: -1em;">
                        <h5 class="w3-padding" style="margin-bottom: 0em;"><strong style="color: crimson;">고려대학교 </strong><strong>생명공학원 유전체학 연구실</strong></h5>
                        <p style="font-size: 1.8vmin;">석/박사 신입생 모집</p>
                    </div>
                    <div class="w3-padding">
                        <span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        <span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"
                              style="float :right;">D-10</span>
                    </div>
                </div>
        </div>

        <div class="col-lg-12">
            <!--날짜 ,요일 , 년월 -->
            <h1>
                <div style="float: left; margin-right: 0.3em;">7</div>
                <small>
                    <div style="float: left; font-size : medium; line-height: 130%;">금요일<br>2017년 9월</div>
                </small>
                <br>
            </h1>
            <!--시작 라인-->
            <hr>
            <!--내용-->
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
            <!--날짜 ,요일 , 년월 -->
            <h1>
                <div style="float: left; margin-right: 0.3em;">6</div>
                <small>
                    <div style="float: left; font-size : medium; line-height: 130%;">금요일<br>2017년 9월</div>
                </small>
                <br>
            </h1>
            <!--시작 라인-->
            <hr>
            <!--내용-->
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