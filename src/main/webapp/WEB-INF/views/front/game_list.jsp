<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>게임 리스트</title>
		<link rel="stylesheet" type="text/css" href="/resources/css/table-style.css" />
		<!-- list-css -->
		<link rel="stylesheet" href="/resources/css/list.css" type="text/css" media="all" />
		<!-- //list-css -->
</head>
<body>
	<!--/main-header-->
	<div>
		<jsp:include page="/WEB-INF/views/include/header-for_front(nobg).jsp" flush="false" />
	</div>
	<!-- breadcrumb -->
	<div class="w3_breadcrumb">
		<div class="breadcrumb-inner">
			<ul>
				<li><a href="index.html">메인</a><i>//</i></li>
				<li>게임 리스트</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumb -->
	
	<!--/content-inner-section-->
	<div class="w3_content_agilleinfo_inner">
		<div class="agile_featured_movies">
			<div class="inner-agile-w3l-part-head">
				<h3 class="w3l-inner-h-title">게임 리스트</h3>
				<p class="w3ls_head_para">장르별 순위</p>
			</div>
			<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
				<ul id="myTab" class="nav nav-tabs" role="tablist">
					<li role="presentation"><a href="#all" 			role="tab" id="all-tab" data-toggle="tab" aria-controls="all">전체</a></li>
					<li role="presentation"><a href="#action" 		role="tab" id="a-tab" data-toggle="tab" aria-controls="a">액션</a></li>
					<li role="presentation"><a href="#adventure"	role="tab" id="b-tab" data-toggle="tab" aria-controls="b">어드벤쳐</a></li>
					<li role="presentation"><a href="#roguelike"	role="tab" id="c-tab" data-toggle="tab" aria-controls="c">로그라이크</a></li>
					<li role="presentation"><a href="#puzzle" 		role="tab" id="d-tab" data-toggle="tab" aria-controls="d">퍼즐</a></li>
					<li role="presentation"><a href="#rhythm" 		role="tab" id="e-tab" data-toggle="tab" aria-controls="e">리듬</a></li>
					<li role="presentation"><a href="#horror" 		role="tab" id="f-tab" data-toggle="tab" aria-controls="f">호러</a></li>
					<li role="presentation"><a href="#simulation" 	role="tab" id="g-tab" data-toggle="tab" aria-controls="g">시뮬레이션</a></li>
					<li role="presentation"><a href="#casual" 		role="tab" id="h-tab" data-toggle="tab" aria-controls="h">캐주얼</a></li>
					<li role="presentation"><a href="#strategy" 	role="tab" id="i-tab" data-toggle="tab" aria-controls="i">전략</a></li>
				</ul>
				<script src="/resources/js/bootstrap.js"></script>
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade in active" id="all" aria-labelledby="all-tab">
						<div class="agile-news-table">
							<div class="w3ls-news-result">
								<!-- 카운팅 넣기 -->
								<h4>Search Results : <span>${total }</span></h4>
							</div>
							<table id="table-breakpoint">
								<thead>
									<tr>
										<th>순위</th>
										<th>제목</th>
										<th>게임연령등급</th>
										<th>지원플랫폼</th>
										<th>장르</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${allContent}" var="content" varStatus="status">
										<tr onClick = "location.href='game_content?content_id=${content.content_id}'">
											<td>${status.count}</td>
											<td class="w3-list-img">
												<a href="game_content?content_id=${content.content_id}">
													<img src="${content.media2}" alt="" />
													${content.title}
												</a>
											</td>
											<td class="w3-list-info">${content.age_rate}</td>
											<td>${content.platform}</td>
											<td>${content.genre_name}</td>
											<td>${content.hit}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 더보기 버튼 -->
							<div class="col-md-2 " style="{margin:2px 2px 2px 2px;align:center;}">
								<ul class="w3-tag2">
									<li><a href="game_list_all"> 더보기</a></li>
								 </ul>
							</div>
							<!-- //더보기 버튼 -->
						</div>
					</div>
					
					<div role="tabpanel" class="tab-pane fade" id="action" aria-labelledby="a-tab">
						<div class="agile-news-table">
							<div class="w3ls-news-result">
								<h4>Search Results : <span>${acttotal }</span></h4>
							</div>
							<table id="table-breakpoint2">
								<thead>
									<tr>
										<th>순위</th>
										<th>제목</th>
										<th>게임연령등급</th>
										<th>지원플랫폼</th>
										<th>장르</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${actContent}" var="content" varStatus="status">
										<tr onClick = "location.href='game_content?content_id=${content.content_id}'">
											<td>${status.count}</td>
											<td class="w3-list-img">
												<a href="game_content?content_id=${content.content_id}">
													<img src="${content.media2}" alt="" />
													${content.title}
												</a>
											</td>
											<td class="w3-list-info">${content.age_rate}</td>
											<td>${content.platform}</td>
											<td>${content.genre_name}</td>
											<td>${content.hit}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 더보기 버튼 -->
							<div class="col-md-2 " style="{margin:2px 2px 2px 2px;align:center;}">
								<ul class="w3-tag2">
									<li><a href="game_list_action">액션 장르 더보기</a></li>
								 </ul>
							</div>
							<!-- //더보기 버튼 -->
						</div>
					</div>
					
					<div role="tabpanel" class="tab-pane fade" id="adventure" aria-labelledby="b-tab">
						<div class="agile-news-table">
							<div class="w3ls-news-result">
								<h4>Search Results : <span>${advtotal }</span></h4>
							</div>
							<table id="table-breakpoint2">
								<thead>
									<tr>
										<th>순위</th>
										<th>제목</th>
										<th>게임연령등급</th>
										<th>지원플랫폼</th>
										<th>장르</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${advContent}" var="content" varStatus="status">
										<tr onClick = "location.href='game_content?content_id=${content.content_id}'">
											<td>${status.count}</td>
											<td class="w3-list-img">
												<a href="game_content?content_id=${content.content_id}">
													<img src="${content.media2}" alt="" />
													${content.title}
												</a>
											</td>
											<td class="w3-list-info">${content.age_rate}</td>
											<td>${content.platform}</td>
											<td>${content.genre_name}</td>
											<td>${content.hit}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 더보기 버튼 -->
							<div class="col-md-2 " style="{margin:2px 2px 2px 2px;align:center;}">
								<ul class="w3-tag2">
									<li><a href="game_list_adventure">어드벤쳐 장르 더보기</a></li>
								 </ul>
							</div>
							<!-- //더보기 버튼 -->
						</div>
					</div>
	
					<div role="tabpanel" class="tab-pane fade" id="roguelike" aria-labelledby="c-tab">
						<div class="agile-news-table">
							<div class="w3ls-news-result">
								<h4>Search Results : <span>${rogtotal}</span></h4>
							</div>
							<table id="table-breakpoint3">
								<thead>
									<tr>
										<th>순위</th>
										<th>제목</th>
										<th>게임연령등급</th>
										<th>지원플랫폼</th>
										<th>장르</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${rogContent}" var="content" varStatus="status">
										<tr onClick = "location.href='game_content?content_id=${content.content_id}'">
											<td>${status.count}</td>
											<td class="w3-list-img">
												<a href="game_content?content_id=${content.content_id}">
													<img src="${content.media2}" alt="" />
													${content.title}
												</a>
											</td>
											<td class="w3-list-info">${content.age_rate}</td>
											<td>${content.platform}</td>
											<td>${content.genre_name}</td>
											<td>${content.hit}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 더보기 버튼 -->
							<div class="col-md-2 " style="{margin:2px 2px 2px 2px;align:center;}">
								<ul class="w3-tag2">
									<li><a href="game_list_roguelike">로그라이크 장르 더보기</a></li>
								 </ul>
							</div>
							<!-- //더보기 버튼 -->
						</div>
					</div>
					
					<div role="tabpanel" class="tab-pane fade" id="puzzle" aria-labelledby="d-tab">
						<div class="agile-news-table">
							<div class="w3ls-news-result">
								<h4>Search Results : <span>${puztotal }</span></h4>
							</div>
							<table id="table-breakpoint4">
								<thead>
									<tr>
										<th>순위</th>
										<th>제목</th>
										<th>게임연령등급</th>
										<th>지원플랫폼</th>
										<th>장르</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${puzContent}" var="content" varStatus="status">
										<tr onClick = "location.href='game_content?content_id=${content.content_id}'">
											<td>${status.count}</td>
											<td class="w3-list-img">
												<a href="game_content?content_id=${content.content_id}">
													<img src="${content.media2}" alt="" />
													${content.title}
												</a>
											</td>
											<td class="w3-list-info">${content.age_rate}</td>
											<td>${content.platform}</td>
											<td>${content.genre_name}</td>
											<td>${content.hit}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 더보기 버튼 -->
							<div class="col-md-2 " style="{margin:2px 2px 2px 2px;align:center;}">
								<ul class="w3-tag2">
									<li><a href="game_list_puzzle">퍼즐 장르 더보기</a></li>
								 </ul>
							</div>
							<!-- //더보기 버튼 -->
						</div>
					</div>
					
					<div role="tabpanel" class="tab-pane fade" id="rhythm" aria-labelledby="e-tab">
						<div class="agile-news-table">
							<div class="w3ls-news-result">
								<h4>Search Results : <span>${rhytotal }</span></h4>
							</div>
							<table id="table-breakpoint5">
								<thead>
									<tr>
										<th>순위</th>
										<th>제목</th>
										<th>게임연령등급</th>
										<th>지원플랫폼</th>
										<th>장르</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${rhyContent}" var="content" varStatus="status">
										<tr onClick = "location.href='game_content?content_id=${content.content_id}'">
											<td>${status.count}</td>
											<td class="w3-list-img">
												<a href="game_content?content_id=${content.content_id}">
													<img src="${content.media2}" alt="" />
													${content.title}
												</a>
											</td>
											<td class="w3-list-info">${content.age_rate}</td>
											<td>${content.platform}</td>
											<td>${content.genre_name}</td>
											<td>${content.hit}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 더보기 버튼 -->
							<div class="col-md-2 " style="{margin:2px 2px 2px 2px;align:center;}">
								<ul class="w3-tag2">
									<li><a href="game_list_rhythm">리듬 장르 더보기</a></li>
								 </ul>
							</div>
							<!-- //더보기 버튼 -->
						</div>
					</div>
							
					<div role="tabpanel" class="tab-pane fade" id="horror" aria-labelledby="f-tab">
						<div class="agile-news-table">
							<div class="w3ls-news-result">
								<h4>Search Results : <span>${hortotal }</span></h4>
							</div>
							<table id="table-breakpoint6">
								<thead>
									<tr>
										<th>순위</th>
										<th>제목</th>
										<th>게임연령등급</th>
										<th>지원플랫폼</th>
										<th>장르</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${horContent}" var="content" varStatus="status">
										<tr onClick = "location.href='game_content?content_id=${content.content_id}'">
											<td>${status.count}</td>
											<td class="w3-list-img">
												<a href="game_content?content_id=${content.content_id}">
													<img src="${content.media2}" alt="" />
													${content.title}
												</a>
											</td>
											<td class="w3-list-info">${content.age_rate}</td>
											<td>${content.platform}</td>
											<td>${content.genre_name}</td>
											<td>${content.hit}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 더보기 버튼 -->
							<div class="col-md-2 " style="{margin:2px 2px 2px 2px;align:center;}">
								<ul class="w3-tag2">
									<li><a href="game_list_horror">호러 장르 더보기</a></li>
								 </ul>
							</div>
							<!-- //더보기 버튼 -->
						</div>
					</div>
							
					<div role="tabpanel" class="tab-pane fade" id="simulation" aria-labelledby="g-tab">
						<div class="agile-news-table">
							<div class="w3ls-news-result">
								<h4>Search Results : <span>${simtotal }</span></h4>
							</div>
							<table id="table-breakpoint7">
								<thead>
									<tr>
										<th>순위</th>
										<th>제목</th>
										<th>게임연령등급</th>
										<th>지원플랫폼</th>
										<th>장르</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${simContent}" var="content" varStatus="status">
										<tr onClick = "location.href='game_content?content_id=${content.content_id}'">
											<td>${status.count}</td>
											<td class="w3-list-img">
												<a href="game_content?content_id=${content.content_id}">
													<img src="${content.media2}" alt="" />
													${content.title}
												</a>
											</td>
											<td class="w3-list-info">${content.age_rate}</td>
											<td>${content.platform}</td>
											<td>${content.genre_name}</td>
											<td>${content.hit}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 더보기 버튼 -->
							<div class="col-md-2 " style="{margin:2px 2px 2px 2px;align:center;}">
								<ul class="w3-tag2">
									<li><a href="game_list_simulation">시뮬레이션 장르 더보기</a></li>
								 </ul>
							</div>
							<!-- //더보기 버튼 -->
						</div>
					</div>
							
					<div role="tabpanel" class="tab-pane fade" id="casual" aria-labelledby="h-tab">
						<div class="agile-news-table">
							<div class="w3ls-news-result">
								<h4>Search Results : <span>${castotal }</span></h4>
							</div>
							<table id="table-breakpoint8">
								<thead>
									<tr>
										<th>순위</th>
										<th>제목</th>
										<th>게임연령등급</th>
										<th>지원플랫폼</th>
										<th>장르</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${casContent}" var="content" varStatus="status">
										<tr onClick = "location.href='game_content?content_id=${content.content_id}'">
											<td>${status.count}</td>
											<td class="w3-list-img">
												<a href="game_content?content_id=${content.content_id}">
													<img src="${content.media2}" alt="" />
													${content.title}
												</a>
											</td>
											<td class="w3-list-info">${content.age_rate}</td>
											<td>${content.platform}</td>
											<td>${content.genre_name}</td>
											<td>${content.hit}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 더보기 버튼 -->
							<div class="col-md-2 " style="{margin:2px 2px 2px 2px;align:center;}">
								<ul class="w3-tag2">
									<li><a href="game_list_casual">캐쥬얼 장르 더보기</a></li>
								 </ul>
							</div>
							<!-- //더보기 버튼 -->
						</div>
					</div>
							
					<div role="tabpanel" class="tab-pane fade" id="strategy" aria-labelledby="i-tab">
						<div class="agile-news-table">
							<div class="w3ls-news-result">
								<h4>Search Results : <span>${strtotal }</span></h4>
							</div>
							<table id="table-breakpoint9">
								<thead>
									<tr>
										<th>순위</th>
										<th>제목</th>
										<th>게임연령등급</th>
										<th>지원플랫폼</th>
										<th>장르</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${strContent}" var="content" varStatus="status">
										<tr onClick = "location.href='game_content?content_id=${content.content_id}'">
											<td>${status.count}</td>
											<td class="w3-list-img">
												<a href="game_content?content_id=${content.content_id}">
													<img src="${content.media2}" alt="" />
													${content.title}
												</a>
											</td>
											<td class="w3-list-info">${content.age_rate}</td>
											<td>${content.platform}</td>
											<td>${content.genre_name}</td>
											<td>${content.hit}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 더보기 버튼 -->
							<div class="col-md-2 " style="{margin:2px 2px 2px 2px;align:center;}">
								<ul class="w3-tag2">
									<li><a href="game_list_strategy">전략 장르 더보기</a></li>
								 </ul>
							</div>
							<!-- //더보기 버튼 -->
						</div>
					</div>
						
				
				
				</div>
			</div>
		</div>
		
	</div>
	<!--//content-inner-section-->


	<!--/footer-bottom-->
	<div>
		<jsp:include page="/WEB-INF/views/include/footer_mp.jsp" flush="false" />
	</div>
	
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"></span>
	</a>

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
	
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion
				width: 'auto', //auto or any width like 600px
				fit: true,   // 100% fit in a container
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
		
		$(function(){
			if (location.hash == "#all"){
				$('.nav-tabs').find('li').eq(0).addClass('active').siblings().removeClass();
				$('.tab-content').find('#all').addClass('active in').siblings().removeClass('active in');
				
			} else if(location.hash == "#action"){
				$('.nav-tabs').find('li').eq(1).addClass('active').siblings().removeClass();
				$('.tab-content').find('#action').addClass('active in').siblings().removeClass('active in');
				
			} else if(location.hash == "#adventure"){
				$('.nav-tabs').find('li').eq(2).addClass('active').siblings().removeClass();
				$('.tab-content').find('#adventure').addClass('active in').siblings().removeClass('active in');
				
			}else if(location.hash == "#roguelike"){
				$('.nav-tabs').find('li').eq(3).addClass('active').siblings().removeClass();
				$('.tab-content').find('#roguelike').addClass('active in').siblings().removeClass('active in');
				
			}else if(location.hash == "#puzzle"){
				$('.nav-tabs').find('li').eq(4).addClass('active').siblings().removeClass();
				$('.tab-content').find('#puzzle').addClass('active in').siblings().removeClass('active in');
				
			}else if(location.hash == "#rhythm"){
				$('.nav-tabs').find('li').eq(5).addClass('active').siblings().removeClass();
				$('.tab-content').find('#rhythm').addClass('active in').siblings().removeClass('active in');
				
			}else if(location.hash == "#horror"){
				$('.nav-tabs').find('li').eq(6).addClass('active').siblings().removeClass();
				$('.tab-content').find('#horror').addClass('active in').siblings().removeClass('active in');
				
			}else if(location.hash == "#simulation"){
				$('.nav-tabs').find('li').eq(7).addClass('active').siblings().removeClass();
				$('.tab-content').find('#simulation').addClass('active in').siblings().removeClass('active in');
				
			}else if(location.hash == "#casual"){
				$('.nav-tabs').find('li').eq(8).addClass('active').siblings().removeClass();
				$('.tab-content').find('#casual').addClass('active in').siblings().removeClass('active in');
				
			}else if(location.hash == "#strategy"){
				$('.nav-tabs').find('li').eq(9).addClass('active').siblings().removeClass();
				$('.tab-content').find('#strategy').addClass('active in').siblings().removeClass('active in');
			}
		});
	</script>

	<!-- 페이징 관련 스크립트 -->
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
			actionForm.append("<input name='inquiry_id' value='" + $(this).attr("href")	+ "'>");
			actionForm.attr("action", "/");
			actionForm.submit();
		});
	});
	</script>
	<!-- //페이징 관련 스크립트 -->
	
						<%-- <!--  Pagination 시작 -->
				<div class='pull-right'>
					<ul class="pagination">
					
						<c:if test="${actMaker.prev}">
							<li class="paginate_button previous"><a href="${actMaker.startPage -1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${actMaker.startPage}"	end="${actMaker.endPage}">
							<li class="paginate_button  ${actMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${actMaker.next}">
							<li class="paginate_button next"><a href="${actMaker.endPage +1 }">Next</a></li>
						</c:if>

					</ul>
				</div>
				<!--  Pagination 끝 -->
				<!-- Form 시작 -->
				<form id='actionForm' action="game_list?#action" method='get'>
					<input type='hidden' name='pageNum' value='${actMaker.cri.pageNum}'>
					<input type='hidden' name='amount' value="${actMaker.cri.amount}">
				</form>
				<!-- Form 끝 --> --%>
</body>
</html>
