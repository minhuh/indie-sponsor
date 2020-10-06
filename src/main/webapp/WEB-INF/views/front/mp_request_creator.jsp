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
<title>창작자 신청</title>

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

							<h4>My page > 창작자 신청</h4>

						</div>


						<div class="outer-w3-agile mt-3"
							data-example-id="contextual-table">
							<form role="form" action="/mypage/mp_request_creator"
								method="post" enctype="multipart/form-data" name="request" onsubmit = "return check_onclick()">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								<table class="table">
									<thead>


										<tr>
											<th class="text-nowrap" scope="row">창작자명</th>
											<th colspan="5" width="50%">
											<input type="text" value="" name="creater_name">
											</th>
										</tr>
										<tr>
											<th class="text-nowrap" scope="row">아이디(E-MAIL)</th>
											<th colspan="5">
											<c:out value="${member_info.userid }" />
											<input type="hidden" name=userid value="${member_info.userid }"> 
											</th>
										</tr>
										<tr>
											<th class="text-nowrap" scope="row">SNS</th>
											<th colspan="5"><input type="text" name="sns" value="">
											</th>
										</tr>
										<tr>

											<th class="text-nowrap" scope="row">계좌번호</th>

											<th colspan="5">
											 <input type="text" name="bank_account" value=""></th>

										</tr>
										<tr>
											<th colspan="2"><label>개인정보 수집 및 이용 동의</label>
												<div id="terms"
													style="border: 1px solid #ddd; height: 200px; overflow: auto; padding: 5px;">
													"인디게임 정보공유 사이트"는 (이하 "indiesponsor"는) 고객님의 개인정보를 중요시하며,
													"정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다. 본 사이트는 개인정보취급방침을 통하여
													고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가
													취해지고 있는지 알려드립니다. 본 사이트는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는
													개별공지)을 통하여 공지할 것입니다. ο 개인정보취급방침 공고일 : 2019년 10월 26일 ο 본 방침은
													: [ 2019년 10월 26일] 부터 시행됩니다. 개인정보 수집에 대한 동의 본 사이트는 귀하께서
													개인정보보호방침 또는 이용약관의 내용에 대해 「동의한다」버튼 또는 「동의하지 않는다」버튼을 클릭할 수 있는
													절차를 마련하여, 「동의한다」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다. 아동의
													개인정보보호 ο 본 협회는 만14세 미만 아동의 개인정보를 수집하는 경우 법정대리인의 동의를 받습니다. ο
													만14세 미만 아동의 법정대리인은 아동의 개인정보의 열람, 정정, 동의철회를 요청할 수 있으며, 이러한
													요청이 있을 경우 본 협회는 지체없이 필요한 조치를 취합니다. 이하 생략...</div> <label>
													<input type=checkbox name="accept" id="accept"> &nbsp 동의합니다.</label></th>

										</tr>
									</thead>

								</table>
								<div style="text-align: center;">
								<button type="submit" class="btn btn-primary">Submit</button>
								<button type="reset" class="btn btn-default">Reset</button>
								</div>
							</form>
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
<script>
		function check_onclick(){
			var chk1=document.request.accept.checked;
			
			if($("input[name=creater_name]").val() == ""){
				alert("창작자명을 입력해주세요.");
				$("input[name=creater_name]").focus();
				return false;
			}
			
			if($("input[name=sns]").val() == ""){
				alert("SNS를 입력해주세요.");
				$("input[name=sns]").focus();
				return false;
			}
			if($("input[name=bank_account]").val() == ""){
				alert("은행 정보를 입력해주세요");
				$("input[name=bank_account]").focus();
				return false;
			}
			
	        if(!chk1){
	            alert('약관1에 동의해 주세요');
	            return false;
	        }
		}
	</script>
	
</body>
</html>
