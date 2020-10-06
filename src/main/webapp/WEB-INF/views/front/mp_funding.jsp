<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<title>마이페이지 펀딩</title>

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
					<section class="tables-section bd-content">
						<!-- table1 -->
						<!-- Grids Info -->
						<div class="outer-w3-agile mt-3">
							<h4>My page > 게임 라이브러리 > 후원 받은 게임</h4>
						</div>
						<div class="outer-w3-agile mt-3">
							<table class="table table-striped">
								<thead class="thead-dark">
									<tr>
										<th scope="col">#</th>
										<th scope="col">컨텐츠 이름</th>
										<th scope="col">후원 받은 금액</th>
										<th scope="col">후원 시작한 일자</th>
										<th scope="col">후원 종료 일자</th>
																		</tr>
								</thead>
								<tbody>
								<c:forEach items="${content}" var="content" varStatus="status">
									<tr class="active">
									<th scope="row">${status.count}</th>
									<td><a href="/game_content?content_id=${content.content_id}">${content.title}</a></td>
									<td>${content.money_temp}</td>
									<td>${content.reg_date}</td>
									<td>${content.don_reg}</td>
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
					
					<form id='actionForm' action="/mypage/mp_funding" method='get'>
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
