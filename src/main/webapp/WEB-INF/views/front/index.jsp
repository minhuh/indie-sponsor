<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<html>

<head>
<title>Indie Sponsor - 당신의 취향에 맞는 인디게임 찾기!</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Indie Sponsor" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link href="/resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- pop-up -->
<link href="/resources/css/popuo-box.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- //pop-up -->
<link href="/resources/css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" type="text/css"
	href="/resources/css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
<link href="/resources/css/font-awesome.css" rel="stylesheet">
<script type="text/javascript"
	src="/resources/js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<link href='https://fonts.googleapis.com/css?family=Tangerine:400,700'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<!--//web-fonts-->

<style>
	.admBtnPosition{display:inline-blokck; margin-left:4px;}
	.regBtnPosition{display:inline-blokck; margin-left:4px;}
	.chBtnPosition{display:inline-blokck; margin-left:4px;}
	.logoutPosition{position:absolute; right:0px;}
</style>
</head>

<body style="display: block; ">
	<!--/main-header-->
	<!--/banner-section-->
	<div id="demo-1"
		data-zs-src='["/resources/img/deadcells.jpg", "/resources/img/braid.jpg", "/resources/img/dungreed.jpg","/resources/img/katanazero.jpg"]'
		data-zs-overlay="dots">
		<div class="demo-inner-content">
			<!--/header-w3l-->
			<div class="header-w3-agileits" id="home">
				<div class="inner-header-agile">
					<nav class="navbar navbar-default">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span> <span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<h1>
								<a href="/"><span>I</span>ndie <span>S</span>ponsor</a>
							</h1>
						</div>
						<!-- navbar-header -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="dropdown">
									<a href="game_intro" class="dropdown-toggle"
										data-toggle="dropdown">게임소식 
										<b class="caret"></b>
									</a>
									<ul class="dropdown-menu multi-column columns-3">
										<li>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<li><a href="developer_note">개발 노트</a></li>
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<li><a href="/notice">공지 사항</a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="funding.html"
										class="dropdown-toggle" data-toggle="dropdown">펀 딩
										<b class="caret"></b>
									</a>
									<ul class="dropdown-menu multi-column columns-3">
										<li>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<li><a href="fund_main">진행중인 펀딩</a></li>
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<li><a href="fund_end">종료된 펀딩</a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="game.html" class="dropdown-toggle"
										data-toggle="dropdown">게 임
										<b class="caret"></b>
									</a>
									<ul class="dropdown-menu multi-column columns-3">
										<li>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<li><a href="game_list?#all">전체 리스트</a></li>
													<li><a href="game_list?#action">액션</a></li>
													<li><a href="game_list?#adventure">어드밴처</a></li>
													<li><a href="game_list?#roguelike">로그라이크</a></li>
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<li><a href="game_list?#puzzle">퍼즐</a></li>
													<li><a href="game_list?#rhythm">리듬</a></li>
													<li><a href="game_list?#simulation">시뮬레이션</a></li>
													<li><a href="game_list?#horror">호러</a></li>
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<li><a href="game_list?#strategy">전략</a></li>
													<li><a href="game_list?#casual">캐쥬얼</a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="user_help.jsp" class="dropdown-toggle"
										data-toggle="dropdown">고객센터
										<b class="caret"></b>
									</a>
									<ul class="dropdown-menu multi-column columns-3">
										<li>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<li><a href="faq">FAQ</a></li>
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<li><a href="inquiry">1:1 문의</a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</li>
									</ul>
								</li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</nav>
					<div class="w3ls_search">
						<div class="cd-main-header">
							<ul class="cd-header-buttons">
								<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
							</ul>
							<!-- cd-header-buttons -->
						</div>
						<div id="cd-search" class="cd-search">
							<form id="serachForm" action="game_list_all" method="get">
								<input type='hidden' name='type' value='TWCG' />
								<input name="keyword" type="search" placeholder="Search...">
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--//header-w3l-->
			<!--/banner-info-->
			
			<div class="baner-info">
				<h3>
					당신에게 맞는 <span>인디</span>게임을 <span>찾아</span>보세요
				</h3>
				<h4>당신의 후원이 더욱 재밌는 게임을 만듭니다.</h4>
				<br><br>
				<a class="w3_play_icon1" href="#small-dialog1">
					추천게임 플레이 영상 </a>
			</div>
			<!--/banner-ingo-->
		</div>
	</div>
	<!--/banner-section-->
	<!--//main-header-->
	
	<!--/banner-bottom-->
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
					
					<sec:authorize access="hasRole('ROLE_USER') or hasRole('ROLE_ADMIN') or hasRole('ROLE_CREATER')">
						<li class="logoutPosition">
							<a href="/logout" class="login">로그아웃</a>
						</li>
					</sec:authorize>
				</ul>
			</div>
			<div class="col-md-6 wthree_share_agile"></div>
		</div>
	</div>
	<!--/content-inner-section-->
	<div class="w3_content_agilleinfo_inner">
		<div class="agile_featured_movies">
			<!--/agileinfo_tabs-->
			<div class="agileinfo_tabs">
				<!--/tab-section-->
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li>최신순</li>
						<li>조회순</li>
						<li>추천순</li>
					</ul>
					<div class="resp-tabs-container">
						<div class="tab1">
							<div class="tab_movies_agileinfo">
								<div class="w3_agile_featured_movies">
									<div class="col-md-5 video_agile_player">
										<div class="video-grid-single-page-agileits">
											<div data-video="${latest_first.media1}" id="video">
												<img src="${latest_first.media2}" alt="" class="img-responsive"
													style="width: 500px; height: 290px" />
											</div>
										</div>
										<div class="player-text" style="height:300px">
											<p class="fexi_header">
												<c:out value="${latest_first.title}" />
											</p>
											<p class="fexi_header_para">
												<span>게임설명 </span><label>:</label>${latest_first.content_intro}
											</p>
											<p class="fexi_header_para">
												<span>출시날짜 </span> <label>:</label><fmt:formatDate pattern="yyyy-MM-dd" value="${latest_first.reg_date}" />
											</p>
											<p class="fexi_header_para">
												<span>TAG</span><label>:</label>|
												<c:forTokens var ="item" items = "${latest_first.tag}" delims = "/">
													<a>${item} | </a>
												</c:forTokens>
											</p>
											<p class="fexi_header_para fexi_header_para1">
												<span>별점<label>:</label></span> <a href="#"><i
													class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
													class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
													class="fa fa-star-half-o" aria-hidden="true"></i></a> <a
													href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
												<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
											</p>
										</div>
									</div>
									<div class="col-md-7 wthree_agile-movies_list">
										<c:forEach items="${latest_other}" var="content1">
											<div class="w3l-movie-gride-agile">
												<a href="game_content?content_id=${content1.content_id}" class="hvr-sweep-to-bottom"><img
													src="${content1.media2}" title="자세히" class="img-responsive"
													alt=" " style="width: 300px; height: 200px">
													<div class="w3l-action-icon">
														<i class="fa fa-play-circle-o" aria-hidden="true"></i>
													</div> </a>
												<div class="mid-1 agileits_w3layouts_mid_1_home" >
													<div class="w3l-movie-text"  style="overflow:hidden;text-overflow: ellipsis;white-space: nowrap;width:120px; height: 25px">
														<h6>
															<a href="game_content?content_id=${content1.content_id}"><c:out value="${content1.title}" /></a>
														</h6>
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>
															<fmt:formatDate pattern="yyyy"
																value="${content1.reg_date}" />
														</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o"
																		aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="cleafix"></div>
						</div>

						<div class="tab2">
							<div class="tab_movies_agileinfo">
								<div class="w3_agile_featured_movies">
									<div class="col-md-5 video_agile_player">
										<div class="video-grid-single-page-agileits">
											<div data-video="${invite_first.media1}" id="video1">
												<img src="${invite_first.media2}" alt="" class="img-responsive"
													style="width: 500px; height: 290px" />
											</div>
										</div>
										<div class="player-text"  style="height:300px">
											<p class="fexi_header">
												<c:out value="${invite_first.title}" />
											</p>
											<p class="fexi_header_para">
												<span class="conjuring_w3">게임설명<label>:</label></span>${invite_first.content_intro}
											</p>
											<p class="fexi_header_para">
												<span>출시날짜<label>:</label></span><fmt:formatDate pattern="yyyy-MM-dd" value="${invite_first.reg_date}" />
											</p>
											<p class="fexi_header_para">
												<span>TAG</span><label>:</label>|
												<c:forTokens var ="item" items = "${invite_first.tag}" delims = "/">
													<a>${item} | </a>
												</c:forTokens>
											</p>
											<p class="fexi_header_para fexi_header_para1">
												<span>별점<label>:</label></span> <a href="#"><i
													class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
													class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
													class="fa fa-star-half-o" aria-hidden="true"></i></a> <a
													href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
												<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
											</p>
										</div>
									</div>
									<div class="col-md-7 wthree_agile-movies_list">
										<c:forEach items="${invite_other}" var="content3">
											<div class="w3l-movie-gride-agile">
												<a href="game_content?content_id=${content3.content_id}" class="hvr-sweep-to-bottom"><img
													src="${content3.media2}" title="자세히" class="img-responsive"
													alt=" " style="width: 300px; height: 200px">
													<div class="w3l-action-icon">
														<i class="fa fa-play-circle-o" aria-hidden="true"></i>
													</div> </a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text" style="overflow:hidden;text-overflow: ellipsis;white-space: nowrap;width:120px; height: 25px">
														<h6>
															<a href="game_content?content_id=${content3.content_id}"><c:out value="${content3.title}" /></a>
														</h6>
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>
															<fmt:formatDate pattern="yyyy"
																value="${content3.reg_date}" />
														</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o"
																		aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="cleafix"></div>
						</div>
						<div class="tab3">
							<div class="tab_movies_agileinfo">
								<div class="w3_agile_featured_movies">
									<div class="col-md-5 video_agile_player">
										<div class="video-grid-single-page-agileits">
											<div data-video="${recommend_first.media1}" id="video2">
												<img src="${recommend_first.media2}" alt="" class="img-responsive"
													style="width: 500px; height: 290px" />
											</div>
										</div>
										<div class="player-text"  style="height:300px">
											<p class="fexi_header">
												<c:out value="${recommend_first.title}" />
											</p>
											<p class="fexi_header_para">
												<span class="conjuring_w3">게임설명<label>:</label></span>${recommend_first.content_intro}
											</p>
											<p class="fexi_header_para">
												<span>출시날짜<label>:</label></span><fmt:formatDate pattern="yyyy-MM-dd" value="${recommend_first.reg_date}" />
											</p>
											<p class="fexi_header_para">
												<span>TAG</span><label>:</label>|
												<c:forTokens var ="item" items = "${recommend_first.tag}" delims = "/">
													<a>${item} | </a>
												</c:forTokens>
											</p>
											<p class="fexi_header_para fexi_header_para1">
												<span>별점<label>:</label></span> <a href="#"><i
													class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
													class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
													class="fa fa-star-half-o" aria-hidden="true"></i></a> <a
													href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
												<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
											</p>
										</div>
									</div>
									<div class="col-md-7 wthree_agile-movies_list">
										<c:forEach items="${recommend_other}" var="content5">
											<div class="w3l-movie-gride-agile">
												<a href="game_content?content_id=${content5.content_id}" class="hvr-sweep-to-bottom"><img
													src="${content5.media2}" title="자세히" class="img-responsive"
													alt=" " style="width: 300px; height: 200px">
													<div class="w3l-action-icon">
														<i class="fa fa-play-circle-o" aria-hidden="true"></i>
													</div> </a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text" style="overflow:hidden;text-overflow: ellipsis;white-space: nowrap;width:120px; height: 25px">
														<h6>
															<a href="game_content?content_id=${content5.content_id}"><c:out value="${content5.title}" /></a>
														</h6>
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>
															<fmt:formatDate pattern="yyyy"
																value="${content5.reg_date}" />
														</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o"
																		aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o"
																		aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="cleafix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	&nbsp;
	<!--/footer-bottom-->
	<div>
		<jsp:include page="/WEB-INF/views/include/footer_mp.jsp" flush="false" />
	</div>
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<script src="/resources/js/jquery-1.11.1.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
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
					$(".modal-body").html(
						"게시글 " + parseInt(result) + " 번이 등록되었습니다.");
				}
				$("#myModal").modal("show");
			}

			$("#regBtn").on("click", function() {
				self.location = "/game_content_writeform";
			});
			var userid = '<c:out value="${user_id}"/>';
			$("#chBtn").on("click", function() {
				self.location = "/game_changelog_writeform?userid=" + userid;
			});
							
			$("#admBtn").on("click", function() {
				self.location = "/admin/admin_main";
			});

			var actionForm = $("#actionForm");

			// 페이지 번호 클릭 이벤트
			$(".paginate_button a").on("click",	function(e) {
				e.preventDefault();
				// console.log('click');
				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit();
			});

			// 상세보기 클릭 이벤트
			$(".move").on("click", function(e) {
				e.preventDefault();
				actionForm.append("<input type='hidden' name='bno' value='" + $(this).attr("href") + "'>");
				actionForm.attr("action","/board/get");
				actionForm.submit();
			});

			// --검색 버튼 클릭 이벤트--
      		$(".page-item a").on("click", function(e) {
         		e.preventDefault();
         		if(keyword != ''){
            		actionForm.append("<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type}"/>' />");
            		actionForm.append("<input type='hidden' name='keyword' value='"+ keyword+"' />");
         		}
         		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
         		actionForm.submit();
			});
			
			var searchForm = $("#searchForm");
			
			$("#searchForm ").on("click", function(e) {
				/* if (!searchForm.find("option:selected").val()) {
					alert("검색종류를 선택하세요");
					return false;
				} */
				
				if (!searchForm.find("input[name='keyword']").val()) {
					alert("키워드를 입력하세요");
					return false;
				}

				searchForm.find("input[name='pageNum']").val("1");
				e.preventDefault();
				searchForm.submit();
			});
			// --//검색 버튼 클릭 이벤트--
		});
	</script>
	<!-- //Dropdown-Menu-JavaScript -->

	<script type="text/javascript"
		src="/resources/js/jquery.zoomslider.min.js"></script>
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

	<!-- pop-up-box -->
	<script src="/resources/js/jquery.magnific-popup.js"
		type="text/javascript"></script>
	<!--//pop-up-box -->

	<div id="small-dialog1" class="mfp-hide">
		<!-- 추천게임 플레이 영상 -->
		<iframe width="900" height="400" src="https://www.youtube.com/embed/-SAx52L8iHs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		
		<div id="small-dialog2" class="mfp-hide">
			<iframe	src="https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0">
			</iframe>
		</div>
	</div>
	
		<script>
			$(document).ready(
					function() {
						$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2')
								.magnificPopup({
									type : 'inline',
									fixedContentPos : false,
									fixedBgPos : true,
									overflowY : 'auto',
									closeBtnInside : true,
									preloader : false,
									midClick : true,
									removalDelay : 300,
									mainClass : 'my-mfp-zoom-in'
								});

					});
		</script>
		<script src="/resources/js/easy-responsive-tabs.js"></script>
		<script>
			$(document).ready(function() {
				$('#horizontalTab').easyResponsiveTabs({
					type : 'default', //Types: default, vertical, accordion
					width : 'auto', //auto or any width like 600px
					fit : true, // 100% fit in a container
					closed : 'accordion', // Start closed if in accordion view
					activate : function(event) { // Callback function if tab is switched
						var $tab = $(this);
						var $info = $('#tabInfo');
						var $name = $('span', $info);
						$name.text($tab.text());
						$info.show();
					}
				});
				$('#verticalTab').easyResponsiveTabs({
					type : 'vertical',
					width : 'auto',
					fit : true
				});
			});
		</script>
		<link href="/resources/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"/>
		<script src="/resources/js/owl.carousel.js"></script>
		<script>
			$(document).ready(function() {
				$("#owl-demo").owlCarousel({

					autoPlay : 3000, //Set AutoPlay to 3 seconds
					autoPlay : true,
					navigation : true,

					items : 5,
					itemsDesktop : [ 640, 4 ],
					itemsDesktopSmall : [ 414, 3 ]

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
						scrollTop : $(this.hash).offset().top
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
					easingType : 'easeOutQuart'
				});

			});
		</script>
		<!--end-smooth-scrolling-->
		<script src="/resources/js/bootstrap.js"></script>
</body>

</html>
