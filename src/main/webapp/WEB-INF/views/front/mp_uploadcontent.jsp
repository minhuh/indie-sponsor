<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<title>업로드 한 컨텐츠</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Style-sheets -->


<!--// Common Css -->
<!-- Nav Css -->
<link rel="stylesheet" href="/resources/css/style4-mp.css">
<!--// Nav Css -->
<!-- Fontawesome Css -->
<link rel="stylesheet" href="/resources/css/fontawesome-all-mp.css">
<!--// Fontawesome Css -->
<!--// Style-sheets -->
<!-- for-mobile-apps -->
</head>
<body>
	<!--/main-header-->



	<div>
		<jsp:include page="/WEB-INF/views/include/header-for_front(nobg).jsp"
			flush="false" />
	</div>
	<div class="content">
		<div class="wrapper">
			<nav id="sidebar">
				<div>
					<jsp:include page="/WEB-INF/views/include/side_bar-mypage.jsp"
						flush="false" />
				</div>
			</nav>
			<!-- Page Content Holder -->
			<div id="content">
				<!-- top-bar -->
				<nav class="navbar navbar-default mb-xl-5 mb-4">
					<!--//content-inner-section-->
					<!-- Grids Content -->
					<section class="grids-section bd-content">

						<!-- Grids Info -->
						<div class="outer-w3-agile mt-3">
							<h4>My page > 게임 라이브러리 > 업로드 한 컨텐츠</h4><br>
							<h4>업로드 한 컨텐츠 수 : <span>${fn:length(content)}</span></h4><!-- 카운팅 넣기 -->
						</div>
						

						<div class="outer-w3-agile mt-3"
							data-example-id="contextual-table">
							<table class="table">

								<thead>
									<tr>
										<th>No.</th>
										<th>게임 이름</th>
										<th>게임 장르 및 태그</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${content}" var="content" varStatus="status">
								<tr class="active">
									<th scope="row">${status.count}</th>
									<td><a href="/game_content?content_id=${content.content_id}">${content.title}</a></td>
									<td>${content.tag}</td>
									<td>${content.hit}</td>
								</tr>
								</c:forEach>
								</tbody>


							</table>
							<!--  Pagination 시작 -->
				
				<div class='pull-right'>
				<c:forEach items="${content}" var="content" begin="0" end="0">
					<ul class="pagination">
						
						<!--페이지 번호 이벤트 처리 -->
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a href="${pageMaker.startPage -1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a href="<c:url value="${pageMaker.endPage +1}/&userid/=${bmk.userid}"/>">Next</a></li>
						</c:if>
					
					</ul>
					
					<form id='actionForm' action="/mypage/mp_uploadcontent" method='get'>
					<input type='hidden' name='pageNum' value= '${pageMaker.cri.pageNum }'>
					<input type='hidden' name='amount' value= '${pageMaker.cri.amount }'>
					</form>
					</c:forEach>
				</div>
				
				<!--  Pagination 끝 -->
						</div>
					</section>
					<div class="container-fluid"></div>
				</nav>






				<!--/footer-bottom-->


			</div>
		</div>
	</div>

	<div>
		<jsp:include page="/WEB-INF/views/include/footer_mp.jsp" flush="false" />
	</div>

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
           $(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
        }
        
        $("#myModal").modal("show");
     }
     
     $("#regBtn").on("click", function() {
        self.location = "/mypage/mp_uploadcontent";
     });
     	
     var actionForm = $("#actionForm");
     
     $(".paginate_button a").on("click", function(e) {
        e.preventDefault();
        console.log('click');
        actionForm.find("input[name='pageNum']").val($(this).attr("href"));
        actionForm.submit();
     });
     
     
  });
</script>
</body>
</html>
