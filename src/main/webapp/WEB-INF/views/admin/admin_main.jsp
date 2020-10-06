<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>관리자 메인 페이지</title>
  <!-- Meta Tags -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <meta name="keywords" content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
  <script>
    addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
  <!-- //Meta Tags -->

  <!-- Style-sheets -->
  <!-- Bootstrap Css -->
  <link href="/resources/css/bootstrap-admin.css" rel="stylesheet" type="text/css" media="all" />
  <!-- Bootstrap Css -->
  <!-- Bars Css -->
  <link rel="stylesheet" href="/resources/css/bar-admin.css">
  <!--// Bars Css -->
  <!-- Common Css -->
  <link href="/resources/css/style-admin.css" rel="stylesheet" type="text/css" media="all" />
  <!--// Common Css -->
  <!-- Nav Css -->
  <link rel="stylesheet" href="/resources/css/style4-admin.css">
  <!--// Nav Css -->
  <!-- Fontawesome Css -->
  <link href="/resources/css/fontawesome-all-admin.css" rel="stylesheet">
  <!--// Fontawesome Css -->
  <!--// Style-sheets -->

  <!--web-fonts-->
  <link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!--//web-fonts-->
  <link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
  <!-- 폰트 링크 -->
</head>
 
<body>
  <div class="se-pre-con"></div>
	<div class="wrapper">
		<jsp:include page="/WEB-INF/views/include/side_bar-admin.jsp"></jsp:include>

		<!-- Page Content Holder -->
		<div id="content">
			<!-- top-bar -->
			<jsp:include page="/WEB-INF/views/include/header-for_admin.jsp"></jsp:include>
      <!--// top-bar -->
      <!-- main-heading -->
      <h2 class="main-title-w3layouts mb-2 text-center">관리자 메인 화면</h2>
      <!--// main-heading -->
      <!-- Carousel content -->
      <section class="carousels-section">
        <div class="outer-w3-agile mt-3">
            <h4 class="tittle-w3-agileits mb-4">최신 펀딩 컨텐츠</h4>
            <div id="carouselExampleIndicators1" class="carousel slide text-carousel" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators1" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators1" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators1" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <a href="single.html"><img class="d-block w-100" src="/resources/img/main1-admin.jpg" alt="First Image">
                          </a>
                        <div class="carousel-caption">
                            <h5>지뢰 찾기</h5>
                            <p class="paragraph-agileits-w3layouts text-white">
                              버젼 : v1.0 //
                              창작자 명 : 홍길동<br />
                              장르 : 캐주얼 //
                              등록일 : 2019-10-15<br />
                              지뢰를 전부 찾으면 승리하는 게임
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <a href="single.html"><img class="d-block w-100" src="/resources/img/main2-admin.jpg" alt="First Image">
                          </a>
                        <div class="carousel-caption">
                            <h5>지뢰 찾기</h5>
                            <p class="paragraph-agileits-w3layouts text-white">
                              버젼 : v1.0 //
                              창작자 명 : 홍길동<br />
                              장르 : 캐주얼 //
                              등록일 : 2019-10-15<br />
                              지뢰를 전부 찾으면 승리하는 게임
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <a href="single.html"><img class="d-block w-100" src="/resources/img/main3-admin.jpg" alt="First Image">
                          </a>
                        <div class="carousel-caption">
                            <h5>지뢰 찾기</h5>
                            <p class="paragraph-agileits-w3layouts text-white">
                              버젼 : v1.0 //
                              창작자 명 : 홍길동<br />
                              장르 : 캐주얼 //
                              등록일 : 2019-10-15<br />
                              지뢰를 전부 찾으면 승리하는 게임
                            </p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators1" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators1" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        </caption>
      <!--// Three-grids -->
      <!-- Countdown -->

      <!--// Countdown -->
      <!-- Copyright -->
      <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
        <p>© 2018 Modernize . All Rights Reserved | Design by
          <a href="http://w3layouts.com/"> W3layouts </a>
        </p>
      </div>
      <!--// Copyright -->
    </div>
  </div>


  <!-- Required common Js -->
  <script src='/resources/js/jquery-2.2.3.min.js'></script>
  <!-- //Required common Js -->

  <!-- loading-gif Js -->
  <script src="/resources/js/modernizr.js"></script>
  <script>
    //paste this code under head tag or in a seperate js file.
    // Wait for window load
    $(window).load(function() {
      // Animate loader off screen
      $(".se-pre-con").fadeOut("slow");;
    });
  </script>
  <!--// loading-gif Js -->

  <!-- Sidebar-nav Js -->
  <script>
    $(document).ready(function() {
      $('#sidebarCollapse').on('click', function() {
        $('#sidebar').toggleClass('active');
      });
    });
  </script>
  <!--// Sidebar-nav Js -->

  <!-- profile-widget-dropdown js-->
  <script src="/resources/js/script.js"></script>
  <!--// profile-widget-dropdown js-->

  <!-- dropdown nav -->
  <script>
    $(document).ready(function() {
      $(".dropdown").hover(
        function() {
          $('.dropdown-menu', this).stop(true, true).slideDown("fast");
          $(this).toggleClass('open');
        },
        function() {
          $('.dropdown-menu', this).stop(true, true).slideUp("fast");
          $(this).toggleClass('open');
        }
      );
    });
  </script>
  <!-- //dropdown nav -->

  <!-- Js for bootstrap working-->
  <script src="/resources/js/bootstrap.min.js"></script>
  <!-- //Js for bootstrap working -->

</body>

</html>
