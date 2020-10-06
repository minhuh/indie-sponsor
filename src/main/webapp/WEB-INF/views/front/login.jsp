<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
	<!-- jQuery -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="/resources/dist/js/sb-admin-2.js"></script>
<script type="application/x-javascript">
	
	
	
					addEventListener("load", function () {
						setTimeout(hideURLbar, 0);
					}, false);

					function hideURLbar() {
						window.scrollTo(0, 1);
					}
				


</script>
<link href="/resources/css/loginstyle.css" rel="stylesheet"
	type="text/css" media="all" />

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
<link rel="stylesheet" type="text/css"
	href="/resources/css/zoomslider(custom_support).css" />
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
	
</head>

<body>
	<div id="demo-1"
		data-zs-src='["/resources/img/deadcells.jpg", "/resources/img/braid.jpg", "/resources/img/dungreed.jpg","/resources/img/katanazero.jpg"]'
		data-zs-overlay="dots">
		<div class="demo-inner-content">
		<br>
			<div class="header">
				<h1>Indie Sponsor 로그인</h1>
				<!-- <h1><img src="./loginimg/5.png" alt=" ">Indie Sponsor 로그인</h1> -->
			</div>

			<div class="design-w3l">
				<div class="mail-form-agile">
					<form action="/login" method="post">
						<fieldset>
						<div class="form-group">
						<input class="form-control" placeholder="아이디" name="username" type="text" autofocus>
						</div>
						<div class="form-group">
						<input class="form-control" placeholder="비밀번호" name="password" type="password" value="">
						</div>
						<br/>
						<div class="checkbox">
						<label style="color: white"> <input name="remember-me"
							type="checkbox">Remember Me
						</label>
						</div>
						<br/>
						<a href="/front/index.jsp" class="btn btn-lg btn-success btn-block">Login</a><br/>
						<input type="button" id="search" value="찾기"/> 
						<input type="button" id="newuser" value="가입"/>
						</fieldset>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</form>
				</div>
				<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
					<font color="red">
						<p>
							Your login attempt was not successful due to <br />
							${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
						</p> <c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session" />
					</font>
				</c:if>
				<div class="clear"></div>
			</div>
			<p style="color: black;">© 2019 Indie Sponsor HomePage. Project
				by TeamA</p>
		</div>
	</div>
	<script src="/resources/js/jquery-1.11.1.min.js"></script>

	<script type="text/javascript"
		src="/resources/js/jquery.zoomslider.min.js"></script>
	<!-- search-jQuery -->
	<script src="/resources/js/main.js"></script>
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


	<script>
		$(".btn-success").on("click", function(e) {

			e.preventDefault();
			$("form").submit();

		});
	</script>

	<c:if test="${param.logout != null}">
		<script>
			$(document).ready(function() {
				alert("로그아웃하였습니다.");
			});
			location.href='/';
		</script>
	</c:if>
</body>

</html>
