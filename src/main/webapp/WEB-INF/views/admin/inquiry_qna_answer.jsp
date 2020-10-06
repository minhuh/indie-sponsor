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
	<title>1:1 문의 contents</title>
	
	<!-- Meta Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords"
		content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates,
		 Android Compatible web template, Smartphone Compatible web template,
		  free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
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
	<!-- Button Style-->
	<link rel="stylesheet" type="text/css" href="/resources/css/style-refund(button).css" />
	<!-- //Button style -->
	
	<!-- Bars Css -->
	<link rel="stylesheet" href="/resources/css/bar-admin.css">
	<!--// Bars Css -->
	
	<!-- Bootstrap Css -->
	<link href="/resources/css/bootstrap-admin.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //Bootstrap Css -->
	
	<!-- Common Css -->
	<link rel="stylesheet" type="text/css" media="all" href="/resources/css/style-admin.css" />
	<!--// Common Css -->
	
	<!-- Fontawesome Css -->
	<link href="/resources/css/fontawesome-all-admin.css" rel="stylesheet">
	<!--// Fontawesome Css -->
	
	<!-- Nav Css -->
	<link rel="stylesheet" href="/resources/css/style4-admin.css">
	<!--// Nav Css -->
<!--// Style-sheets -->

<!--web-fonts-->
	<link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<!--//web-fonts-->
<!-- 폰트 링크 -->
	<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- //폰트 링크 -->
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
					<h4>고객센터 관리 > 1대1 문의 > 답변</h4>
				</div>
			</section>
          	<!--// main-heading -->
			
			<!-- Grids Content -->
			<section class="tables-section">
				<div class="outer-w3-agile mt-3">
					<h4 class="tittle-w3-agileits mb-4">1대1 문의 답변</h4>
					<table class="table">
						<tr>
							<th>문의 제목 : <c:out value="${inquiry.title }" /></th>
						</tr>
						<tr class="active">
							<th scope="row">문의내용 : <c:out value="${inquiry.content }" />
							</th>
						</tr>
					</table>

					<div class="outer-w3-agile mt-3">
						<table class="table table-striped">
							<tr>
								<!-- 댓글 출력 부분 -->
								<td>
									<!-- /.panel -->
									<div class="panel panel-default">
										<div class="panel-heading">
											<i class="fa fa-comments fa-fw"></i> Reply<br>
										</div>
										
										<!-- /.panel-heading -->
										<div class="panel-body">
											
											<!-- 댓글 목록 출력 부분 -->
											<ul class="chat">
												<c:out value="${inquiry.comments }" />
											</ul>
											<!-- ./ end 댓글 목록 출력 부분 -->
										</div>
										<!-- /.end panel-heading -->
										<div class="panel-footer">
											<sec:authorize access="isAuthenticated()">
											<c:if test="${inquiry.comments eq '-' }">
												<form role="form" action="/admin/inquiry_qna_answer" method="post">
													<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
													<input type="hidden" name="inquiry_id" value='<c:out value="${inquiry.inquiry_id }"/>'/>
													<input class="form-control" name='userid'
														value='<sec:authentication property="principal.username"/>'
														readonly="readonly">
													<input type="text" name="comments"  style="width:100%;"/><br>
													<input type="submit" id="addReplyBtn" class="snip1535 btn btn-default" name="submit" value="New Reply"/>
												</form>
											</c:if>
											</sec:authorize>
										</div>
									</div>
									<!-- /.end panel -->
								</td>
								<!-- // 댓글 출력 부분 -->
							</tr>
						</table>
					</div>
					<!--// Grids Info -->
					<!--// Grids Content -->

					<!-- Copyright -->
					<div
						class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
						<p>
							© 2018 Modernize . All Rights Reserved | Design by <a href="#">
								W3layouts </a>
						</p>
					</div>
					<!--// Copyright -->
					
				</div>
			</section>
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

	<!-- submit action -->
	<script>
		$(".move").on("click",function(e) {
			e.preventDefault();
			actionForm.append("<input name='userid' value='" + $(this).attr("href")	+ "'>");
			actionForm.attr("action", "/admin/inquiry_qna_answer");
			actionForm.submit();
		});
	</script>
	<!-- //submit action -->

	<!-- Js for bootstrap working-->
	<script src="/resources/js/bootstrap.min.js"></script>
	<!-- //Js for bootstrap working -->
</body>

</html>
