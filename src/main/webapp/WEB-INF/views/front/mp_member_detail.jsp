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
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 정보</title>

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

							<h4>My page > 회원 정보</h4>

						</div>


						<div class="outer-w3-agile mt-3"
							data-example-id="contextual-table">
							<!--<sec:authorize access="isAuthenticated()">
									<sec:authentication property="principal.username" var="userid" />
								</sec:authorize>
							<form role="form" action="/mypage/mp_member_modify"
								method="post" enctype="multipart/form-data" id="userid">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
									<input type="hidden" name="userid" value="${userid }" />
								
								</form>-->
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<table class="table">
								<tbody>
									<tr>
										<th scope="col">이름</th>
										<td><c:out value="${member_info.name }" /></td>
									</tr>
									<tr>
										<th scope="col">생년월일</th>
										<td><c:out value="${member_info.birth }" /></td>
									</tr>
									<tr>
										<th scope="col">아이디(이메일)</th>
										<td><c:out value="${member_info.userid }" /></td>
									</tr>
									<tr>
										<th scope="col">전화번호</th>
										<td><c:out value="${member_info.phone }" /></td>
									</tr>
									<tr>
										<th scope="col">추가 연락처</th>
										<td><c:out value="${member_info.other_address }" /></td>
									</tr>
									<tr>
										<th scope="col">SNS주소</th>
										<td><c:out value="${member_info.sns }" /></td>
									</tr>
									<tr>
										<th scope="col">후원계좌</th>
										<td><c:out value="${member_info.bank_account }" /></td>
									</tr>
									<tr>
										<th scope="col">후원받은 금액</th>
										<td><c:out value="${member_info.donation }" /></td>
									</tr>
									<tr>
										<th scope="col">회원 등급</th>
										<td><c:choose>
												<c:when test="${member_info.levels eq 'A' }">
												관리자
    											</c:when>
												<c:when test="${member_info.levels eq 'B' }">
												창작자
   												 </c:when>
												<c:when test="${member_info.levels eq 'C' }">
												일반 이용자
   												 </c:when>
											</c:choose></td>
									</tr>
									<tr>
										<th scope="col">회원 상태</th>
										<td><c:choose>
												<c:when test="${member_info.status eq '1' }">
												활성
    											</c:when>
												<c:when test="${member_info.status eq '2' }">
												휴면(창작자 신청)
   												 </c:when>
												<c:otherwise>
												  휴면
    											</c:otherwise>
											</c:choose></td>
									</tr>
									<tr>
										<th scope="col">창작자 권한여부</th>

										<td><sec:authorize access="hasRole('ROLE_CREATER')">O</sec:authorize>
										<sec:authorize access="hasRole('ROLE_ADMIN')">O</sec:authorize>
											<sec:authorize access="hasRole('ROLE_USER')">X</sec:authorize>
										</td>
									</tr>
								</tbody>
							</table>
							<div style="text-align: center;">
								<a href="/mypage/mp_member_modify"><button type="submit"
										class="btn btn-primary">수정</button></a>
							</div>
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
</body>

</html>
