<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<title>개발 노트</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
    addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  
</script>
</head>
<body>
	<div>
		<jsp:include page="/WEB-INF/views/include/header-for_front(nobg).jsp"
			flush="false" />
	</div>
	<div class="w3_breadcrumb">
		<div class="breadcrumb-inner">
			<ul>
				<li><a href="index.html">메인</a><i>//</i></li>
				<li>개발 노트</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumb -->

	<!--/content-inner-section-->
	<div class="w3_content_agilleinfo_inner">
		<div class="agile_featured_movies">
			<!--/comedy-movies-->
			<h3 class="agile_w3_title hor-t">
				컨텐츠 <span>개발노트</span>
			</h3>
			<div class="wthree_agile-requested-movies tv-movies">
				<c:forEach items="${chlog_list}" var="dnote">
					<div class="col-md-2 w3l-movie-gride-agile requested-movies">
						<a class='move' href='<c:out value="${dnote.change_log_id}"/>'><img
							src="${dnote.media2}" class="img-responsive" alt=" "
							style="width: 300px; height: 300px"></a>
						<div class="w3l-action-icon">
							<i class="fa fa-play-circle-o" aria-hidden="true"></i>
						</div>
						</a>
						<div class="mid-1 agileits_w3layouts_mid_1_home">
							<div class="w3l-movie-text">
								<h6>
									<a class = 'move' href="<c:out value="${dnote.change_log_id}"/>"><c:out value="${dnote.title}" /></a>
								</h6>
							</div>
							<div>
								<p>
									<c:out value="[${dnote.version}]"></c:out>
								</p>
							</div>
							<div class="mid-2 agile_mid_2_home">
								<p>
									<fmt:formatDate pattern="yyyy" value="${dnote.reg_date}" />
								</p>
								<div class="block-stars">
									<ul class="w3l-ratings">
										<li><a href="#"><i class="fa fa-star"
												aria-hidden="true"></i></a></li>
										<li><a href="#"><i class="fa fa-star"
												aria-hidden="true"></i></a></li>
										<li><a href="#"><i class="fa fa-star-half-o"
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
						<div class="ribben one">
							<p>NEW</p>
						</div>
					</div>
				</c:forEach>
				<div class="clearfix"></div>
			</div>
			
			<!--  Pagination 시작 -->
			<div style = "text-align:center">
				<ul class="pagination">

					<c:if test="${pageMaker.prev}">
						<li class="paginate_button previous"><a
							href="${pageMaker.startPage -1}">Previous</a></li>
					</c:if>

					<c:forEach var="num" begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}">
						<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
							<a href="${num}">${num}</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next}">
						<li class="paginate_button next"><a
							href="${pageMaker.endPage +1 }">Next</a></li>
					</c:if>

				</ul>
			</div>
			<!--  Pagination 끝 -->
			<!-- Form 시작 -->
			<form id='actionForm' action="/developer_note" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
			</form>
			<!-- Form 끝 -->
			
			<!--//tv-movies-->
	</div>
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
	<!--//content-inner-section-->

	<div>
		<jsp:include page="/WEB-INF/views/include/footer_mp.jsp" flush="false" />
	</div>

	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
</body>