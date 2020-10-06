<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>업로드 컨텐츠 관리</title>
    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
   	<!-- //Meta Tags -->

  	<!-- Style-sheets -->
  	<!-- Button Style-->
  	<link rel="stylesheet" type="text/css" href="/resources/css/style-refund(button).css" />

  	<!-- Bootstrap Css -->
  	<link href="/resources/css/bootstrap-admin.css" rel="stylesheet" type="text/css" media="all" />
  	<!-- Bootstrap Css -->
  	<!-- Bars Css -->
  	<link rel="stylesheet" href="/resources/css/bar-admin.css">
  	<!--// Bars Css -->
  	<!-- Common Css -->
  	<link rel="stylesheet" type="text/css" media="all" href="/resources/css/style-admin.css"/>
  	<!--// Common Css -->
  	<!-- Nav Css -->
  	<link rel="stylesheet" href="/resources/css/style4-admin.css">
  	<!--// Nav Css -->
  	<!-- Fontawesome Css -->
  	<link href="/resources/css/fontawesome-all-admin.css" rel="stylesheet">
  	<!--// Fontawesome Css -->
  	<!--// Style-sheets -->

  	<!--web-fonts-->
  	<link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
  	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  	<!--//web-fonts-->
  	<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
	<!-- 폰트 링크 -->
  
	<!-- 서약서 style -->
	<style>
  		.wpcf7-form p input {width:100%;}
  		.wpcf7-form .wpcf7-textarea {width:100% !important; font-size:13px;}
  		.wpcf7-form .terms { padding: 30px 10px;background-color: #f6f6ee;margin-bottom: 30px;}
  		.wpcf7-form .terms .terms-title {text-align:center;margin-bottom:20px;}
  		.wpcf7-form .terms .terms-checkbox {margin-top:10px; text-align:center;}
  		.wpcf7-form .terms .wpcf7-not-valid-tip { width:146px; top:24px !important; right:-28px !important;}
  		.wpcf7-form .terms ol {margin-left:20px;}
  	</style>
    <!-- //서약서 style -->
</head>

<body>
	<div class="wrapper">
    	<jsp:include page="/WEB-INF/views/include/side_bar-admin.jsp"></jsp:include>
        <!-- Page Content Holder -->
        <div id="content">
            <!-- top-bar -->
            <jsp:include page="/WEB-INF/views/include/header-for_admin.jsp"></jsp:include>
            <!--// top-bar -->

        	<!-- Grids Content -->
            <section class="grids-section bd-content">

                <!-- Grids Info -->
                <div class="outer-w3-agile mt-3">
                    <h4>게시물 > 업로드 컨텐츠 관리</h4>
                </div>

    			<div class="outer-w3-agile mt-3" data-example-id="contextual-table">
    				<h4 class="tittle-w3-agileits mb-4">업로드 컨텐츠 관리</h4>
      				<table class="table">

        				<thead>
          					<tr>
            					<th>No.</th>
            					<th>게임 이름</th>
            					<th>게임 장르</th>
            					<th>업로드 날짜</th>
            					<th>삭제</th>
          					</tr>
        				</thead>

						<c:forEach items="${content_list }" var="cList" varStatus="cLVar">
          					<tr class="active" style="cursor:pointer;" class="move"
          							onClick="self.location.href='/game_content?content_id= ${cList.content_id}'">
          						<th scope="row"><c:out value="${cList.content_id }"/></th>
            					<td >
            						<c:out value="${cList.title }"/>
            					</td>
            					<td>
            						<c:forEach items="${genre_list }" var="gList" varStatus="gLVar">
            							<choose>
            								<c:if test="${cList.genre_id eq gList.genre_id }">
            									${gList.genre_name }
            								</c:if>
            							</choose>
            						</c:forEach>
            					</td>
            					<td>
            						<fmt:formatDate value="${cList.reg_date }" pattern="YYYY/MM/dd HH:mm"
            										type="date" var="cLreg_date"/>
            						${cLreg_date }
            					</td>
            					<td>
            						<button id='modalRemoveBtn' type="button" class="btn btn-danger"
                       							value="${cList.content_id }" onclick="if(confirm('삭제 하시겠습니까?')){location.href='content_management/remove_content?content_id=${cList.content_id }'}">
                       					삭제
                       				</button>
                       			</td>
          					</tr>
						</c:forEach>
      				</table>
				<!--  Pagination 시작 -->
  				<script src="/resources/js/bootstrap.js"></script>
				<div class='pull-right'>
					<ul class="pagination">
					
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a href="${pageMaker.startPage -1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
						</c:if>

					</ul>
				</div>
				<!--  Pagination 끝 -->
				<!-- Form 시작 -->
				<form id='actionForm' action="content_management" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				</form>
				<!-- Form 끝 -->
     			</div>
            <!--// Grids Info -->
            </section>
            <!--// Grids Content -->

            <!-- Copyright -->
            <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
                <p>© 2018 Modernize . All Rights Reserved | Design by
                    <a href="http://w3layouts.com/"> W3layouts </a>
                </p>
            </div>
            <!--// Copyright -->
        </div>
    </div>


    <!-- Required common Js -->
    <script src='/resources/js/jquery-2.2.3.min.js'></script>
    <!-- //Required common Js -->

    <!-- Sidebar-nav Js -->
    <script>
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
    <!--// Sidebar-nav Js -->

    <!-- dropdown nav -->
    <script>
        $(document).ready(function () {
            $(".dropdown").hover(
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- //dropdown nav -->

    <!-- Js for bootstrap working-->
    <script src="/resources/js/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->

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
				$(".modal-body").html("게시글 " + parseInt(result)	+ " 번이 등록되었습니다.");
			}

			$("#myModal").modal("show");
		}
		
		$("#regBtn").on("click", function() {
			self.location = "/board/register";
		});
		
		var actionForm = $("#actionForm");

		// 페이지 번호 클릭 이벤트
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			// console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		

		// 삭제 이벤트
		$("button[data-oper='cList']").on("click", function(e){
			operForm.find("#content_id").remove();
			/* operForm.attr("action","/board/list") */
			operForm.submit();
		});
		
	});
	</script>

</body>

</html>
