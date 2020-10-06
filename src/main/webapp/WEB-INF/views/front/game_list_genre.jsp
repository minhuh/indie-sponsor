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
			<div>
				<div class="agile-news-table">
					<div class="w3ls-news-result">
						<h4> 총 갯수 : <span>${total }</span></h4>
					</div>
						<table id="table-breakpoint2">
						<thead>
							<tr>
								<th>No.</th>
								<th>제목</th>
								<th>게임연령등급</th>
								<th>지원플랫폼</th>
								<th>장르</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${genreContent}" var="content" varStatus="status">
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
					<!--  Pagination 시작 -->
  					<script src="/resources/js/bootstrap.js"></script>
					<div class='pull-right'>
							<ul class="pagination">
							
								<c:if test="${pageMaker.prev}">
									<li class="paginate_button previous"><a href="${pageMaker.startPage -1}">Previous</a></li>
								</c:if>
								
							<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
								<li class="paginate_button  ${pageMaker.cri.pageNum == num ? " active":""} ">
									<a href="${num}">${num}</a>
								</li>
							</c:forEach>
							<c:if test="${pageMaker.next}">
								<li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
							</c:if>
						</ul>
					</div>
					<!--  Pagination 끝 -->
					<!-- Form 시작 -->
					<form id='actionForm' action="game_list${genre }" method='get'>
						<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
						<input type='hidden' name='amount' value="${pageMaker.cri.amount}">
					</form>
					<!-- Form 끝 -->
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
</body>
</html>
