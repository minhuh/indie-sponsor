<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
<!-- for-mobile-apps -->
</head>
<body>
<!--/main-header-->
<div>
   <jsp:include page="/WEB-INF/views/include/header-for_front(nobg).jsp" flush="false" />
</div>
			<!--/content-inner-section-->
			<div class="bs-example4" data-example-id="contextual-table"><table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>제목</th>
						<th>Updated</th>
						<th>작성자</th>
						<th>Rating</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="notice">
						<tr>
							<td><c:out value="${notice.notice_id}" /></td>
							<%-- <td><a href='/board/get?bno=<c:out value="${board.bno}"/>'><c:out value="${board.title}"/></a></td> --%>
							<td><a class='move' href='<c:out value="${notice.notice_id}"/>'><c:out value="${notice.title}" /></a></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.reg_date}" /></td>
							<td><c:out value="${notice.userid}" /></td>
							<td><c:out value="${notice.hit}" /></td>
						</tr>
						<c:if test="${param.notice_id==notice.notice_id}">
						<tr>
							<td></td>
							<td colspan = "3"><h4 style="color:black; background-color:#9e9e9e40; border:1px solid black"><c:out value="${notice.content}"/></h4></td>
						</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
			<!--  Pagination 시작 -->
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
				<form id='actionForm' action="notice" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				</form>
				<!-- Form 끝 -->
     </div>
			<!--//content-inner-section-->
	&nbsp;
	<div></div>
	&nbsp;
	<!--/footer-bottom-->
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
		
		var actionForm = $("#actionForm");

		// 페이지 번호 클릭 이벤트
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			// console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		// 상세보기 클릭 이벤트
		$(".move").on("click",function(e) {
			e.preventDefault();
			actionForm.append("<input type='hidden' name='notice_id' value='" + $(this).attr("href")	+ "'>");
			actionForm.attr("action", "/front/notice");
			actionForm.submit();
		});
		

	});
</script>
	<div>
		<jsp:include page="/WEB-INF/views/include/footer_mp.jsp"
			flush="false" />
	</div>

</body>
</html>
