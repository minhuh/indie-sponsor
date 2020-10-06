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
<title>종료된 펀딩</title>
<!-- for-mobile-apps -->
<link rel="stylesheet" type="text/css" href="/resources/css/style-endfund.css" />
 <script type="application/x-javascript">
	
    addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  
</script>
 <script>
    $(function() {
    	
    });

    $(document).ready(function(){
    	$("#btn1").click(function(){
            alert("이미 종료된 펀딩입니다.");
            return false;
        });
});

  </script>
</head>
<body>
<!--/main-header-->
	
<div>
   <jsp:include page="/WEB-INF/views/include/header-for_front(nobg).jsp" flush="false" />
</div> 
			<!--/content-inner-section-->
			<div class="page wow animated fadeInUpBig" id="section-2">
				<h1 class="h2 text-center">종료된 펀딩</h1>
				
				<h4 class="h4 text-center">종료된 펀딩 게시물 수 : ${fn:length(list)}</h4><!-- 카운팅 넣기 -->
				
				<div class="container animated fadeInUp" style="padding: 0;">
					<!-- First Row -->
					<div class="row">
						
						
						
						<c:set var = "total" value = "0" />
						
						<c:forEach items="${list}" var="list" varStatus="status">
						<c:set var = "total" value = "${list.money_temp / list.don_attainment}" />
						<div class="col-md-4 col-sm-6 col-xs-12">
							<div class="demo-card-square mdl-card mdl-shadow--2dp">
								<div class="mdl-card--expand">
								<img src="${list.media2}" style="width: 250px; height: 250px;">
								
								
								
								</div>
								<div class="mdl-card__supporting-text">
									<div class="container-fluid">
										<div class="row" id="project-title">
											<h4>${list.title}</h4>
										</div>
										<br />
										<div class="row" id="description">
											<p>${list.platform}</p>
											
										</div>
										<br />
										<div class="row" id="progress">
											<div class="col-md-12">
												<div class="progress">
													<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width : <fmt:formatNumber value="${total}" type="percent" />">
														<span class="sr-only"><p>90%입니다.</p></span>
													</div>
												</div>
											</div>
										</div>
										
										
										<div class="row" id="funding">
											<div class="col-sm-5 col-xs-6">
											
												
												
												<p><strong>모인 금액 : <fmt:formatNumber value="${total}" type="percent" /></strong></p>
											</div>
											
											<div class="col-sm-7 col-xs-6">
												<p><strong>목표 금액 : ${list.don_attainment}</strong></p>
											</div>
										</div>
									</div>
								</div>
								<div class="mdl-card__actions mdl-card--border">
									<a href="" id="btn1" 
									class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent"
									onclick="alert('이미 종료됨')">
										펀딩하기
									</a>
								</div>
							</div>
						</div>
						</c:forEach>
						


					</div>

				</div>
			</div>
			<!--//content-inner-section-->

	<!--/footer-bottom-->
	<div>
		<jsp:include page="/WEB-INF/views/include/footer_mp.jsp"
			flush="false" />
	</div>
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
</body>
</html>
