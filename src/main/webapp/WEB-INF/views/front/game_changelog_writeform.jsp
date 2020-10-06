<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<html>
<head>
<title>IndieSponsor</title>
	
<body>
	<div>
		<jsp:include page="/WEB-INF/views/include/header-for_front(nobg).jsp"
			flush="false" />
	</div>


	<!-- 글쓰기 폼 -->
	<!-- main content start-->
	<div id="page-wrapper">
		<div class="panel-body">
			<div class="alert alert-info">패치노트를 입력해주세요.</div>
			<form role="form" action="/game_changelog_writeform" 
				method="post" enctype="multipart/form-data" name="writeform" onsubmit = "return check_onclick()">
				<input type="hidden" name="media1" value="">
				<input type="hidden" name="media2" value="">
				<input type="hidden" name="media3" value="">
				<input type="hidden" name="media4" value="">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<div class="form-group" align = "center" style="color:red; text-align:center" >
					<label>패치노트를 작성할 게임을 선택해 주세요.</label>
                    <select name="content_id" class="form-control" size="1">
                    	<c:forEach items="${mygame_list}" var="content" varStatus="status">
							<option value="${content.content_id}" id="game">[${status.count}]${content.title}</option>
						</c:forEach>
					</select>
				</div>
				<hr style="border: solid 2px black;">
				<div class="form-group" style="color:red;text-align:center">
					<label >버젼</label> <input class="form-control" name='version'>
				</div>
				<hr style="border: solid 2px black;">
				<div class="form-group" style="color:red; text-align:center;">
					<label style="color:red">패치내용</label>
					<textarea class="form-control" rows="6" name='patch_log'></textarea>
				</div>
				<hr style="border: solid 2px black;">
				<div class="form-group" style="text-align:center">
					<label>작성자</label>
					<input class="form-control" name='userid'
						value='<sec:authentication property="principal.username"/>'
						readonly="readonly">
				</div>
				<hr style="border: solid 2px black;">
				<div class="form-group" style="text-align:center">
					<div class="btn btn-default btn-file"> 게임실행 URL
						<input class="form-control" name='game_launch' type='url' value = "https://www.">
					</div>
				</div>
				<hr style="border: solid 2px black;">
				<div class="form-group" style="text-align:center">
					<div class="btn btn-default btn-file" style="width:250px">
						<i class="fa fa-paperclip" ></i>
						<label>게임 이미지파일 1</label>
						<input type="file" class="form-control" name='uploadFile'>
					</div>
					<div class="btn btn-default btn-file" style="margin-left:1em; width:250px">
						<i class="fa fa-paperclip"></i>
						<label>게임 이미지파일 2</label>
						<input type="file" class="form-control" name='uploadFile'>
					</div>
					<div class="btn btn-default btn-file" style="margin-left:1em; width:250px ">
						<i class="fa fa-paperclip"></i>
						<label>게임 이미지파일 3</label>
						<input type="file" class="form-control" name='uploadFile'>
					</div>
					<div class="btn btn-default btn-file" style="margin-left:1em; width:250px">
						<i class="fa fa-paperclip"></i>
						<label>게임 이미지파일 4</label>
						<input type="file" class="form-control" name='uploadFile'>
					</div>
				</div>
				
				<div style="text-align:center"><p class="help-block">Max. 32MB</p></div>
				<br>
				<hr style="border: solid 2px black;">
				<div style="text-align: center;">
					<button type="submit" class="btn btn-default">등록</button>
					<button type="reset" class="btn btn-default">다시 입력</button>
				</div>
			</form>
		</div>
	</div>
	<div class="clearfix"></div>

	<div class="panel-footer"></div>

	<!-- 댓글 출력 부분 -->
	<!--//content-inner-section-->
	<!--/footer-bottom-->
	<div>
		<jsp:include page="/WEB-INF/views/include/footer_mp.jsp" flush="false" />
	</div>

	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<script src="/resources/js/jquery-1.11.1.min.js"></script>
	<script>
	
		$(document).ready(
			function() {
				 if($("#game").length > 0){
				        console.log("jquery : 해당 객체 존재함");   
				  }else{
					  alert("작성한 게임이 없습니다.");
					  self.location = "/";
				  }
		});
		
				
		function check_onclick(){
			if($("input[name=version]").val() == ""){
				alert("게임 버젼을 입력해주세요.");
				$("input[name=version]").focus();
				return false;
			}
			
			if($("textarea[name=patch_log]").val() == ""){
				alert("패치내용을 입력해주세요.");
				$("textarea[name=patch_log]").focus();
				return false;
			}
			if($("select[name=age_rate]").val() == ""){
				alert("게임의 태그를 설정해 주세요");
				$("input[name=age_rate]").focus();
				return false;
			}
			if($("input[name=tag]").val() == ""){
				alert("게임의 태그를 설정해 주세요");
				$("input[name=tag]").focus();
				return false;
			}else{
				alert("패치노트 등록이 완료되었습니다.");
			}

			
		}
	</script>
	
	<!-- Dropdown-Menu-JavaScript -->
	<script>
		$(document).ready(function() {
			$(".dropdown").hover(function() {
				$('.dropdown-menu', this).stop(true, true).slideDown("fast");
				$(this).toggleClass('open');
			}, function() {
				$('.dropdown-menu', this).stop(true, true).slideUp("fast");
				$(this).toggleClass('open');
			});
		});
	</script>
	<!-- pop-up-box -->
	<script src="/resources/js/jquery.magnific-popup.js"
		type="text/javascript"></script>
	<!--//pop-up-box -->

	<!-- 	<script>
		$(document).ready(function() {
			$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
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
	</script> -->
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
	<link href="/resources/css/owl.carousel.css" rel="stylesheet"
		type="text/css" media="all">
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
