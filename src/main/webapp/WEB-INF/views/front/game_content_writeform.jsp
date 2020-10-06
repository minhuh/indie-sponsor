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
			<div class="alert alert-info">제목과 내용을 입력해주세요.</div>
			<form role="form" action="/game_content_writeform" 
				method="post" enctype="multipart/form-data" name="writeform" onsubmit = "return check_onclick()">
				<input type="hidden" name="media2" value="">
				<input type="hidden" name="media3" value="">
				<input type="hidden" name="media4" value="">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

				<div class="form-group">
					<label style="color:red">제목</label> <input class="form-control" name='title'>
				</div>
				
				<div class="form-group">
					<label style="color:red">내용</label>
					<textarea class="form-control" rows="6" name='content_intro'></textarea>
				</div>
				
				<div class="form-group">
					<label>작성자</label>
					<input class="form-control" name='userid'
						value='<sec:authentication property="principal.username"/>'
						readonly="readonly">
				</div>
				
				<div class="form-group">
					<label style="color:red">나이제한</label>
                    <select name="age_rate" class="form-control" size="1">
						<option value="1" selected>전체</option>
						<option value="7" >7세 이상</option>
						<option value="12" >12세 이상</option>
						<option value="15" >15세 이상</option>
						<option value="19" >19세 이상</option>
					</select>
				</div>
				
				<div class="form-group">
					<label style="color:red">태그(총 3개, 각 태그 사이에 / 입력)</label>
					<input class="form-control" name='tag' placeholder="example/예시/Action">
				</div>
				
				<div class="form-group">
					<label style="color:red">유투브 주소</label>
					<input class="form-control" name='media1' placeholder="'유튜브 url을 복사하여 붙여넣기'">
				</div>
				
				<div class="form-group">
					<label style="color:red">출시 플랫폼</label>
					<input class="form-control" name='platform' value="PC"><br>
					
					<label style="color:red">지원 언어</label>
					<input class="form-control" name='languages' value="Korean"><br>
					
					<label>목표 후원금액</label>
					<input class="form-control" name='don_attainment' maxlength=10 value="1000000"><br>
					
					<label style="color:red">대표 장르ID</label>
                    <select name="genre_id" class="form-control" size="1">
						<option value="1" selected>액션</option>
						<option value="2" >어드벤쳐</option>
						<option value="3" >로그라이크</option>
						<option value="4" >퍼즐</option>
						<option value="5" >리듬</option>
						<option value="6" >호러</option>
						<option value="7" >시뮬레이션</option>
						<option value="8" >캐주얼</option>
						<option value="9" >전략</option>
					</select>
				</div>
				
				<br>
				<div class="form-group">
					<div class="btn btn-default btn-file"> 게임실행 URL
						<input class="form-control" name='game_launch' type='url' value = "https://www.">
					</div>
				</div>
				<br>
				
				<div class="form-group">
					<div class="btn btn-default btn-file">
						<i class="fa fa-paperclip"></i>
						<label style="color:red">게임 이미지파일 1</label>
						<input type="file" class="form-control" name='uploadFile' id="media2">
					</div>
					<div class="btn btn-default btn-file" style="margin-left:3em">
						<i class="fa fa-paperclip"></i>
						<label>게임 이미지파일 2</label>
						<input type="file" class="form-control" name='uploadFile'>
					</div>
					<div class="btn btn-default btn-file" style="margin-left:3em">
						<i class="fa fa-paperclip"></i>
						<label>게임 이미지파일 3</label>
						<input type="file" class="form-control" name='uploadFile'>
					</div>
				</div>
				
				<div style="text-align:center"><p class="help-block">Max. 32MB</p></div>
				<br>
				<br>
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
		function check_onclick(){
			if($("input[name=title]").val() == ""){
				alert("게임 제목을 입력해주세요.");
				$("input[name=title]").focus();
				return false;
			}
			
			if($("textarea[name=content_intro]").val() == ""){
				alert("게임 소개를 작성해주세요.");
				$("textarea[name=content_intro]").focus();
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
			}
			if($("input[name=media1]").val() == ""){
				alert("유투브 주소를 입력해 주세요.");
				$("input[name=media1]").focus();
				return false;
			}
			if($("input[name=platform]").val() == ""){
				alert("지원하는 플랫폼을 적어주세요.");
				$("input[name=platform]").focus();
				return false;
			}
			if($("input[name=languages]").val() == ""){
				alert("지원하는 언어를 입력해주세요.");
				$("input[name=languages]").focus();
				return false;
			}
			
			if($("select[name=genre_id]").val() == ""){
				alert("지원하는 언어를 입력해주세요.");
				$("select[name=genre_id]").focus();
				return false;
			}
			
			if($("input[id=media2]").val() == ""){
				alert("사진 하나를 입력해주세요.");
				$("input[id=media2]").focus();
				return false;
			}else{
				alert("게임 입력이 완료되었습니다.");
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
