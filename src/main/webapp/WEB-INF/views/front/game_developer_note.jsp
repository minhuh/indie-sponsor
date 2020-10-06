<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>

<head>
	<title>Movies Pro an Entertainment Category Flat Bootstrap Responsive Website Template | Single Page :: w3layouts</title>
	<!-- for-mobile-apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Movies Pro Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function() {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //for-mobile-apps -->
	<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- pop-up -->
	<link href="resources/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //pop-up -->
	<link href="resources/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" type="text/css" href="resources/css/zoomslider.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
	<link href="resources/css/font-awesome.css" rel="stylesheet">
	<script type="text/javascript" src="resources/js/modernizr-2.6.2.min.js"></script>
	<!--/web-fonts-->
	<link href='https://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<!--//web-fonts-->
</head>

<body>
	<!--/main-header-->
	<div>
   <jsp:include page="/WEB-INF/views/include/header-for_front(nobg).jsp" flush="false" />
</div>
	<div class="w3_breadcrumb">
		<div class="breadcrumb-inner">
			<ul>
				<li><a href="index.html">게임소식</a><i>//</i></li>
				<li>게임노트<i>//</i></li>
				<li><c:out value = "${change_log_content.title}"/></li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumb -->
	
	<!--/content-inner-section-->
	<div class="w3_content_agilleinfo_inner">
		<div class="agile_featured_movies">
			<div class="inner-agile-w3l-part-head">
				<h3 class="w3l-inner-h-title"><c:out value="${change_log_content.title}"/></h3>
				<p class="w3ls_head_para">
					|
					<c:forTokens var ="item" items = "${change_log_content.tag}" delims = "/">
						<a>${item} | </a>
					</c:forTokens>
				</p>
			</div>
			<div class="latest-news-agile-info">
				<div class="col-md-8 latest-news-agile-left-content">
					<div class="single video_agile_player">

						<div class="video-grid-single-page-agileits">
							<div data-video="${change_log_content.media1}" id="video" > <img src="${change_log_content.media2}" alt="" class="img-responsive" style="width:700px; height:400px"/> </div>
						</div>
						<h4></h4>
					</div>
					<div class="single-agile-shar-buttons">
						<ul>
						</ul>
					</div>
					<c:if test ="${not empty changelog_comment.userid}">
						<div class="admin-text"  style="text-align:center" >
							<h5>작성자 : <c:out value="${changelog_comment.userid}"/></h5>
							<div class="admin-text-left">
								<a href="#"><img src="/resources/img/best_user.jpg" alt=""></a>
							</div>
							<div class="admin-text-right">
								<h3><c:out value="${changelog_comment.content}"/></h3>
								<div></div>
								<span><a href="#"><fmt:formatDate pattern="yyyy-MM-dd" value="${changelog_comment.reg_date}" /> </a></span>
							</div>
							<div class="clearfix"> </div>
						</div>
					</c:if>
					<c:if test ="${change_log_content.cmedia1 != '1'}">
					<div class="slideshow-container">
						
						<div class="mySlides fade">
						  <div class="numbertext">1 / 4</div>
						  <img src="${change_log_content.cmedia1}" width="700px" height="300px">
						</div>
						<c:if test ="${change_log_content.cmedia2 ne '1'}">
						<div class="mySlides fade">
						  <div class="numbertext">2 / 4</div>
						  <img src="${change_log_content.cmedia2}" width="700px" height="300px">
						</div>
						</c:if>
						<c:if test ="${change_log_content.cmedia3 ne '1'}">
						<div class="mySlides fade">
						  <div class="numbertext">3 / 4</div>
						  <img src="${change_log_content.cmedia3}" width="700px" height="300px">
						</div>
						</c:if>
						<c:if test ="${change_log_content.cmedia4 ne '1'}">
						<div class="mySlides fade">
						  <div class="numbertext">4 / 4</div>
						  <img src="${change_log_content.cmedia4}" width="700px" height="300px">
						</div>
						</c:if>
					</div>
					</c:if>
					<br>
					<c:if test ="${change_log_content.cmedia1 ne '1'}">
					<div style="text-align:center">
					  <span class="dot"></span> 
					  <c:if test ="${change_log_content.cmedia2 ne '1'}">
					  <span class="dot"></span> 
					  </c:if>
					  <c:if test ="${change_log_content.cmedia3 ne '1'}">
					  <span class="dot"></span> 
					  </c:if>
					  <c:if test ="${change_log_content.cmedia4 ne '1'}">
					  <span class="dot"></span> 
					  </c:if>
					</div>
					</c:if>
					<div class="response" style="text-align:center">
						<h4>패치노트</h4>
						<div class="media response-info">
							<div class="media-body response-text-right">
							<pre>
<h4><c:out value="${change_log_content.patch_log}"/></h4>
</pre>
								<ul>
									<li><fmt:formatDate pattern="yyyy-MM-dd" value="${change_log_content.reg_date}" /></li>
								</ul>
							</div>
							<div class="clearfix"> </div>
						</div>

					</div>
				</div>
				
				
				<div class="col-md-4 latest-news-agile-right-content">

					<h3 class="side-t-w3l-agile">이전 <span>패치노트</span></h3>
						<ul class="side-bar-agile">
							<c:forEach items="${patch_note_List}" var="patch">
							<li><a class='move' href='<c:out value="${patch.change_log_id}"/>'><c:out value ="${patch.patch_log}"/></a>
								<p>	<c:out value ="[${patch.version}]"/> <fmt:formatDate pattern="yyyy-MM-dd" value="${patch.reg_date}" /></p>
							</li>
							</c:forEach>
						</ul>

							<div class="clearfix"> </div>
							<div class="agile-info-recent">
								<h4 class="side-t-w3l-agile">다른 <span>게임노트</span></h4>
								<div class="w3ls-recent-grids">
									<c:forEach items="${other_patch}" var="other">
									<div class="w3l-recent-grid">
										<div class="wom">
											<a href="single.html"><img src="${other.media2}" alt=" " class="img-responsive"></a>
										</div>
										<div class="wom-right">
											<h5><a class='move' href='<c:out value="${other.change_log_id}"/>'><c:out value="${other.title}"/></a></h5>
											<p><c:out value ="${other.patch_log}"/></p>
											<ul class="w3l-sider-list">
												<li><i class="fa fa-clock-o" aria-hidden="true"></i><fmt:formatDate pattern="yyyy-MM-dd" value="${other.reg_date}" /></li>
											</ul>
										</div>
										<div class="clearfix"> </div>
									</div>
									</c:forEach>
								</div>
							</div>

				</div>
				<div class="clearfix"></div>
			</div>
		
		</div>
	</div>
	<!--//content-inner-section-->
<form id='actionForm' action="/game_developer_note" method='get'>
		<input type='hidden' name='pageNum' value='${param.pageNum}'>
		<input type='hidden' name='amount' value='${param.amount}'>
</form>

	<!--/footer-bottom-->
<div>
		<jsp:include page="/WEB-INF/views/include/footer_mp.jsp"
			flush="false" />
	</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="resources/js/jquery-1.11.1.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
			<script>
				$(document).ready(function(){
					$(".dropdown").hover(
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
							$(this).toggleClass('open');
						},
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
							$(this).toggleClass('open');
						}
					);
				});
			</script>
		<!-- //Dropdown-Menu-JavaScript -->
	<!-- search-jQuery -->
	<script src="resources/js/main.js"></script>

	<script src="resources/js/simplePlayer.js"></script>
	<script>
		$("document").ready(function() {
			$("#video").simplePlayer();
		});
	</script>

	<!-- pop-up-box -->
	<script src="resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->

	<div id="small-dialog1" class="mfp-hide">
		<iframe src="https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0"></iframe>
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<iframe src="https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0"></iframe>
	</div>
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
	<script src="resources/js/easy-responsive-tabs.js"></script>
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
	<script src="resources/js/owl.carousel.js"></script>
	<script type="text/javascript"
		src="/resources/js/jquery.zoomslider.min.js"></script>

	<!--/script-->
	<script type="text/javascript" src="resources/js/move-top.js"></script>
	<script type="text/javascript" src="resources/js/easing.js"></script>

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
		$(document)
				.ready(
						function() {
							var actionForm = $("#actionForm");

							// 상세보기 클릭 이벤트
							$(".move")
									.on(
											"click",
											function(e) {
												e.preventDefault();
												actionForm
														.append("<input type='hidden' name='change_log_id' value='"
																+ $(this).attr(
																		"href")
																+ "'>");
												actionForm
														.attr("action",
																"/game_developer_note");
												actionForm.submit();
											});
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
							
							var actionForm = $("#actionForm");

							// 페이지 번호 클릭 이벤트
							$(".paginate_button a").on("click", function(e) {
								e.preventDefault();
								// console.log('click');
								actionForm.find("input[name='pageNum']").val($(this).attr("href"));
								actionForm.submit();
							});
	
						});
	</script>
	<!-- 슬라이드 쇼를 위한  함수 -->
	<script>
	var slideIndex = 0;
	showSlides();
	
	function showSlides() {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("dot");
	  for (i = 0; i < slides.length; i++) {
	    slides[i].style.display = "none";  
	  }
	  slideIndex++;
	  if (slideIndex > slides.length) {slideIndex = 1}    
	  for (i = 0; i < dots.length; i++) {
	    dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";  
	  dots[slideIndex-1].className += " active";
	  setTimeout(showSlides, 2000); // Change image every 2 seconds
	}
	</script>
	<!-- 슬라이드 쇼를 위한  함수 -->
	
	<!--end-smooth-scrolling-->
	<script src="resources/js/bootstrap.js"></script>



</body>

</html>
