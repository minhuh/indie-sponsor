<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

<head>
	<title>Movies Pro an Entertainment Category Flat Bootstrap Responsive Website Template | 1:1inquiry :: w3layouts</title>
</head>

<body>
	<!--/main-header-->
	<div>
   <jsp:include page="/WEB-INF/views/include/header-for_front(nobg).jsp" flush="false" />
</div>

	<!-- breadcrumb -->
	<!-- <div class="w3_breadcrumb">
		<div class="breadcrumb-inner">
			<ul>
				<li><a href="index.html">Home</a><i>//</i></li>
				<li>Contact</li>
			</ul>
		</div>
	</div> -->
	<!-- //breadcrumb -->

	<!--/content-inner-section-->
	<div class="w3_content_agilleinfo_inner">
		<div class="agile_featured_movies">
			<div class="inner-agile-w3l-part-head">
				<h3 class="w3l-inner-h-title">1 : 1 문의</h3>
				<!-- <p class="w3ls_head_para">Add short Description</p> -->
			</div>
			<div class="w3_mail_grids">
				<form action="/inquiry" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<span class="input input--ichiro">
							<input class="input__field input__field--ichiro" type="text" id="input-25" name="title" placeholder=" " required="">
							<label class="input__label input__label--ichiro" for="input-25">
								<span class="input__label-content input__label-content--ichiro"> 제목 </span>
							</label>
						</span>
						<span class="input input--ichiro">
							<sec:authentication property="principal.username" var="userid" />
							<input class="input__field input__field--ichiro" type="text" id="input-26" value="${userid }" name="userid" placeholder=" " readonly>
							<label class="input__label input__label--ichiro" for="input-26">
								<span class="input__label-content input__label-content--ichiro"> Email주소 </span>
							</label>
						</span>

					<div class="col-md-12 w3_agile_mail_grid two">
						<textarea name="content" placeholder="Your Message" required=""></textarea>
						<input type="submit" value="Submit">
					</div>
					<div class="clearfix"> </div>
				</form>

			</div>
		</div>
	</div>
	<!--//content-inner-section-->
	<div>
		<jsp:include page="/WEB-INF/views/include/footer_mp.jsp"
			flush="false" />
	</div>
</body>

</html>
