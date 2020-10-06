<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>창작자 권한 수정</title>
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
  <link rel="stylesheet" type="text/css" href="/resources/css/style-refund(button).css" />
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
  <!-- Calender Css -->
  <link rel="stylesheet" type="text/css" href="/resources/css/pignose.calender-admin.css" />
  <!--// Calender Css -->
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
			<section class="grids-section bd-content">

				<!-- Grids Info -->
				<div class="outer-w3-agile mt-3">
					<h4>창작자 관리 > 창작자 권한 수정</h4>
				</div>
			</section>
              <div class="outer-w3-agile mt-3" align="center">
                  <h3 class="tittle-w3-agileits mb-4">창작자 정보</h3>
                  
                  <table class="table">
                      <tbody>
                          <tr>
                              <th scope="col">이름</th>
                              <td><c:out value="${member_info.name }"/></td>
                          </tr>
                          <tr>
                              <th scope="col">생년월일</th>
                              <td><c:out value="${member_info.birth }"/></td>
                          </tr>
                          <tr>
                              <th scope="col">아이디(이메일)</th>
                              <td><c:out value="${member_info.userid }"/></td>
                          </tr>
                          <tr>
                              <th scope="col">전화번호</th>
                              <td><c:out value="${member_info.phone }"/></td>
                          </tr>
                          <tr>
                              <th scope="col">연락처</th>
                              <td><c:out value="${member_info.other_address }"/></td>
                          </tr>
                          <tr>
                              <th scope="col">SNS주소</th>
                              <td><c:out value="${member_info.sns }"/></td>
                          </tr>
                          <tr>
                              <th scope="col">후원계좌</th>
                              <td><c:out value="${member_info.bank_account }"/></td>
                          </tr>
                          <tr>
                              <th scope="col">후원받은 금액</th>
                              <td><c:out value="${getdon.donation }"/></td>
                          </tr>
                          <tr>
                              <th scope="col">창작자 권한여부</th>
                              <td>
                              	<c:if test ="${member_info.auth eq 'ROLE_CREATER' }">
                              		창작자
                              	</c:if> 
                              	<c:if test ="${member_info.auth ne 'ROLE_CREATER' }">
                              		not 창작자
                              	</c:if>
                              </td>
                          </tr>
                      </tbody>
                  </table><div style="display:inline">
                  			<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
                  <a href="/admin/creater_modifying?userid=${member_info.userid}">
					<button type="submit" class="btn btn-default">창작자 강등</button></a>
				 <a href="/admin/creater_status?userid=${member_info.userid}">
				<button type="submit" class="btn btn-default">휴면 복귀</button></a>
				</div>
              </div>
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

	<script type="text/javascript">
	$(document).ready(function() {
		var result = '<c:out value="${result}"/>';
		
		checkModal(result);

		history.replaceState({}, null, null);

		function checkModal(result) {

			if (result === '' || history.state) {
				return;
			}

			if (parseInt(result) > 0) {
				$(".modal-body").html("게시글 " + parseInt(result)	+ " 번이 등록되었습니다.");
			}

			$("#myModal").modal("show");
		}
		
		$("#regBtn").on("click", function() {
			self.location = "/board/register";
		});
		
		var actionForm = $("#actionForm");

		// 페이지 번호 클릭 이벤트
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			// console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		// 상세보기 클릭 이벤트
		$(".move").on("click",function(e) {
			e.preventDefault();
			actionForm.append("<input name='userid' value='" + $(this).attr("href")	+ "'>");
			actionForm.attr("action", "/admin/creater_modify");
			actionForm.submit();
		});
	});
	</script>
	
	<script type="text/javascript">
	$(document).ready(function() {
		
	});
	</script>

</body>

</html>
