<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <title>헤더 파일</title>
  <!-- for-mobile-apps -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Indie Sponsor" />
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
  <script type="application/x-javascript">
    addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
  <!-- //for-mobile-apps -->
  <link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
  <!-- pop-up -->
  <link href="/resources/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
  <!-- //pop-up -->
  <link href="/resources/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
  <link rel="stylesheet" type="text/css" href="/resources/css/zoomslider.css" />
  <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
  <link href="/resources/css/font-awesome.css" rel="stylesheet">
  <script type="text/javascript" src="/resources/js/modernizr-2.6.2.min.js"></script>
  <!--/web-fonts-->
  <link href='https://fonts.googleapis.com/css/?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
  <link href="https://fonts.googleapis.com/css/?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css/?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  <!--//web-fonts-->
  
  
<style>
	/* .admBtnPosition{position:absolute; left:16em;}
	.regBtnPosition{position:absolute; left:24em;} */
	.admBtnPosition{display:inline-blokck; margin-left:4px;}
	.regBtnPosition{display:inline-blokck; margin-left:4px;}
	.chBtnPosition{display:inline-blokck; margin-left:4px;}
	.logoutPosition{position:absolute; right:0px;}
</style>
</head>

<body>
  <!--/main-header-->
  <!--/banner-section-->
  <div id="demo-1" class="banner-inner">
    <div class="banner-inner-dott">
      <!--/header-w3l-->
      <div class="header-w3-agileits" id="home">
        <div class="inner-header-agile part2">
          <nav class="navbar navbar-default">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <h1><a href="/"><span>I</span>ndie <span>s</span>ponsor</a></h1>
            </div>
            <!-- navbar-header -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="dropdown"><a href="game_patch.jsp"
									class="dropdown-toggle" data-toggle="dropdown">게임소식 <b
										class="caret"></b></a>
									<ul class="dropdown-menu multi-column columns-3">
										<li>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<li><a href="/developer_note">개발 노트</a></li>
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<li><a href="/notice">공지사항</a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</li>
									</ul></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">펀 딩<b class="caret"></b></a>
                  <ul class="dropdown-menu multi-column columns-3">
                    <li>
                      <div class="col-sm-4">
                        <ul class="multi-column-dropdown">
                          <li><a href="/fund_main">진행중인 펀딩</a></li>
                        </ul>
                      </div>
                      <div class="col-sm-4">
                        <ul class="multi-column-dropdown">
                          <li><a href="/fund_end">종료된 펀딩</a></li>
                        </ul>
                      </div>
                      <div class="clearfix"></div>
                    </li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">게 임<b class="caret"></b></a>
					<ul class="dropdown-menu multi-column columns-3">
						<li>
							<div class="col-sm-4">
								<ul class="multi-column-dropdown">
									<li><a href="/game_list?#all">전체 리스트</a></li>
									<li><a href="/game_list?#action">액션</a></li>
									<li><a href="/game_list?#adventure">어드밴처</a></li>
									<li><a href="/game_list?#roguelike">로그라이크</a></li>
								</ul>
							</div>
							<div class="col-sm-4">
								<ul class="multi-column-dropdown">
									<li><a href="/game_list?#puzzle">퍼즐</a></li>
									<li><a href="/game_list?#rhythm">리듬</a></li>
									<li><a href="/game_list?#simulation">시뮬레이션</a></li>
									<li><a href="/game_list?#horror">호러</a></li>
								</ul>
							</div>
							<div class="col-sm-4">
								<ul class="multi-column-dropdown">
									<li><a href="/game_list?#strategy">전략</a></li>
									<li><a href="/game_list?#casual">캐쥬얼</a></li>
								</ul>
							</div>
							<div class="clearfix"></div>
						</li>
					</ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">고객센터<b class="caret"></b></a>
                  <ul class="dropdown-menu multi-column columns-3">
                    <li>
                      <div class="col-sm-4">
                        <ul class="multi-column-dropdown">
                          <li><a href="/faq">FAQ</a></li>
                        </ul>
                      </div>
                      <div class="col-sm-4">
                        <ul class="multi-column-dropdown">
                          <li><a href="/inquiry">1:1 문의</a></li>
                        </ul>
                      </div>
                      <div class="clearfix"></div>
                    </li>
                  </ul>
                </li>

              </ul>

            </div>
            <div class="clearfix"> </div>
          </nav>

        </div>

      </div>
      <!--//header-w3l-->
    </div>
  </div>
  <!--/banner-section-->
  <!--//main-header-->
  <!--/banner-bottom Logins-->
  <div class="w3_agilits_banner_bootm">
    <div class="w3_agilits_inner_bottom">
		<div class="col-md-6 wthree_agile_login" style="width: 100%">
			<ul>
				<sec:authorize access="isAnonymous()">
					<li><a href="/login" class="login">로그인</a></li>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					<li><a href="/join" class="login reg" data-target="#myModal5">회원가입</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal.username" var="user_id" />
					<li style="margin-left: 0em">
						<a href="/mypage/mp_member_detail"	class="login">${user_id}</a>
					</li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li style="margin-left: 0em">
						<a href="/mypage/mp_bookmark" class="login" style="margin-left: 0em">마이 페이지</a>
					</li>
				</sec:authorize>
				
				<!-- Admin Menus -->
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<li class="admBtnPosition">
						<a href="#" id="admBtn" class="login reg" data-target="#myModal5">어드민페이지</a>
					</li>
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_CREATER') or hasRole('ROLE_ADMIN')">
						<li class="regBtnPosition">
						<a href="#" id="regBtn" class="login reg" data-target="#myModal5">게임등록</a>
					</li>
					<li class="chBtnPosition">
							<a href="#" id="chBtn" class="login reg" data-target="#myModal5">패치노트 등록</a>
						</li>
				</sec:authorize>
				<!-- //Admin Menus -->
				
				<sec:authorize access="isAuthenticated()">
					<li class="logoutPosition">
						<a href="#" id="lgoutBtn" class="login">로그아웃</a>
					</li>
				</sec:authorize>
			</ul>
		</div>
    </div>
  </div>
  <!--//banner-bottom Logins-->
  <!-- Modal1 -->
<!--   <div class="modal fade" id="myModal4" tabindex="-1" role="dialog">

    <div class="modal-dialog">
      Modal content
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4>Login</h4>
          <div class="login-form">
            <form action="#" method="post">
              <input type="email" name="email" placeholder="E-mail" required="">
              <input type="password" name="password" placeholder="Password" required="">
              <div class="tp">
                <input type="submit" value="LOGIN NOW">
              </div>
              <div class="forgot-grid">
                <div class="log-check">
                  <label class="checkbox"><input type="checkbox" name="checkbox">Remember me</label>
                </div>
                <div class="forgot">
                  <a href="#" data-toggle="modal" data-target="#myModal2">Forgot Password?</a>
                </div>
                <div class="clearfix"></div>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div> -->
  <!-- //Modal1 -->
  <!-- Modal1 -->
  <!-- <div class="modal fade" id="myModal5" tabindex="-1" role="dialog">

    <div class="modal-dialog">
      Modal content
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4>Register</h4>
          <div class="login-form">
            <form action="#" method="post">
              <input type="text" name="name" placeholder="Name" required="">
              <input type="email" name="email" placeholder="E-mail" required="">
              <input type="password" name="password" placeholder="Password" required="">
              <input type="password" name="conform password" placeholder="Confirm Password" required="">
              <div class="signin-rit">
                <span class="agree-checkbox">
                  <label class="checkbox"><input type="checkbox" name="checkbox">I agree to your <a class="w3layouts-t" href="#" target="_blank">Terms of Use</a> and <a class="w3layouts-t" href="#" target="_blank">Privacy Policy</a></label>
                </span>
              </div>
              <div class="tp">
                <input type="submit" value="REGISTER NOW">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div> -->
  <!-- //Modal1 -->
  <!-- breadcrumb -->
  
  <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

  <script src="/resources/js/jquery-1.11.1.min.js"></script>
  <!-- Dropdown-Menu-JavaScript -->
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
  <!-- //Dropdown-Menu-JavaScript -->


  <script type="text/javascript" src="/resources/js/jquery.zoomslider.min.js"></script>
  <!-- search-jQuery -->
  <script src="/resources/js/main.js"></script>
  <script src="/resources/js/simplePlayer.js"></script>
  <script>
    $("document").ready(function() {
      $("#video").simplePlayer();
    });
  </script>
  <script>
    $("document").ready(function() {
      $("#video1").simplePlayer();
    });
  </script>
  <script>
    $("document").ready(function() {
      $("#video2").simplePlayer();
    });
  </script>
  <script>
    $("document").ready(function() {
      $("#video3").simplePlayer();
    });
  </script>
  <script>
    $("document").ready(function() {
      $("#video4").simplePlayer();
    });
  </script>
  <script>
    $("document").ready(function() {
      $("#video5").simplePlayer();
    });
  </script>
  <script>
    $("document").ready(function() {
      $("#video6").simplePlayer();
    });
  </script>

  <!-- pop-up-box -->
  <script src="/resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
  <!--//pop-up-box -->

  <script>
    $(document).ready(function() {
      $('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
        type: 'inline',
        fixedContentPos: false,
        fixedBgPos: true,
        overflowY: 'auto',
        closeBtnInside: true,
        preloader: false,
        midClick: true,
        removalDelay: 300,
        mainClass: 'my-mfp-zoom-in'
      });

    });
  </script>
  <script src="/resources/js/easy-responsive-tabs.js"></script>
  <script>
    $(document).ready(function() {
      $('#horizontalTab').easyResponsiveTabs({
        type: 'default', //Types: default, vertical, accordion
        width: 'auto', //auto or any width like 600px
        fit: true, // 100% fit in a container
        closed: 'accordion', // Start closed if in accordion view
        activate: function(event) { // Callback function if tab is switched
          var $tab = $(this);
          var $info = $('#tabInfo');
          var $name = $('span', $info);
          $name.text($tab.text());
          $info.show();
        }
      });
      $('#verticalTab').easyResponsiveTabs({
        type: 'vertical',
        width: 'auto',
        fit: true
      });
    });
  </script>
  <link href="/resources/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
  <script src="/resources/js/owl.carousel.js"></script>
  <script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({

        autoPlay: 3000, //Set AutoPlay to 3 seconds
        autoPlay: true,
        navigation: true,

        items: 5,
        itemsDesktop: [640, 4],
        itemsDesktopSmall: [414, 3]

      });

    });
  </script>

  <!--/script-->
  <script type="text/javascript" src="/resources/js/move-top.js"></script>
  <script type="text/javascript" src="/resources/js/easing.js"></script>

  <script type="text/javascript">
    jQuery(document).ready(function($) {
      $(".scroll").click(function(event) {
        event.preventDefault();
        $('html,body').animate({
          scrollTop: $(this.hash).offset().top
        }, 900);
      });
    });
  </script>
  <script type="text/javascript">
    $(document).ready(function() {
      /*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear'
					 		};
							*/

      $().UItoTop({
        easingType: 'easeOutQuart'
      });

    });
  </script>
  <!--end-smooth-scrolling-->
  <script src="/resources/js/bootstrap.js"></script>

	<!-- Button Action -->
	<script>
		$("#admBtn").on("click", function() {
			self.location = "/admin/admin_main";
		});
		$("#regBtn").on("click", function() {
			self.location = "/game_content_writeform";
		});
		$("#lgoutBtn").on("click", function() {
			self.location = "/logout";
		});
	</script>
	<!-- //Button Action -->


</body>

</html>
