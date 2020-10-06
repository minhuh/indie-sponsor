<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>공지사항 등록</title>
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
  <!-- //for-mobile-apps -->
  <link href="/resources/css/bootstrap-admin.css" rel="stylesheet" type="text/css" media="all" />
  <!-- pop-up -->
  <link href="/resources/css/popuo-box-admin.css" rel="stylesheet" type="text/css" media="all" />
  <!-- //pop-up -->
  <link href="/resources/css/easy-responsive-tabs-admin.css" rel='stylesheet' type='text/css'/>
  <link rel="stylesheet" type="text/css" href="/resources/css/zoomslider-admin.css" />
  <link rel="stylesheet" type="text/css" href="/resources/css/style-admin.css" />
  <link href="/resources/css/font-awesome-admin.css" rel="stylesheet">
  <script type="text/javascript" src="/resources/js/modernizr-2.6.2.min.js"></script>
  <!--/web-fonts-->
  <link href='https://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
  <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
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
<link rel="stylesheet" type="text/css" href="/resources/css/style-refund(button).css" />
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
			<section class="grids-section bd-content">

				<!-- Grids Info -->
				<div class="outer-w3-agile mt-3">
					<h4>게시물 > 공지사항 등록</h4>
				</div>
			</section>
          <!--// main-heading -->
          <!-- Tables content -->
          <section class="tables-section">
              <!-- table1 -->
              <div class="outer-w3-agile mt-3">
                  <h4 class="tittle-w3-agileits mb-4">공지사항 등록</h4>
                  
				  <form role="form" action="/admin/notice_upload" method="post" enctype="multipart/form-data">
					<input type="hidden" name="media1" value=""/> 
					<input type="hidden" name="media2" value=""/>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					
					<!-- <div class="form-group">
						<label>카테고리</label>
                        <select name="category" size="1">
							<option value="notice" selected>공지사항</option>
							<option value="event" >Event</option>
						</select>
					</div> -->
					
					<div class="form-group">
						<label>제목</label>
						<input class="form-control" name='title'>
					</div>
					
					<div class="form-group">
						<label>작성자</label>
						<input class="form-control" name='userid'
							value='<sec:authentication property="principal.username"/>'
							readonly="readonly">
						<!-- <input class="form-control" name='userid' value="admin" readonly="readonly"/> -->
					</div>
					
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="6" name='content'></textarea>
					</div>
					
					<div class="form-group" style="{display:inline-block}">
						<div class="btn btn-default btn-file">
							<i class="fa fa-paperclip"></i>
							<label>게임 이미지파일 1</label>
							<input type="file" class="form-control" name='uploadFile'>
						</div>
						<br>
						<div class="btn btn-default btn-file">
							<i class="fa fa-paperclip"></i>
							<label>게임 이미지파일 2</label>
							<input type="file" class="form-control" name='uploadFile'>
						</div>
					</div>
					
					<div align="center">
						<input type="submit" class="snip1535 btn btn-default" name="submit" value="등록"/>
						<input type="reset" class="snip1535 btn btn-default" name="cancel" value="취소"/>
					</div>
					
				  </form>
				 
				 
              </div>
              </section>
          <!--// Stats -->
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
