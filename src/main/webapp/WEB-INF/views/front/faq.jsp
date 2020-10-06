<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>FAQ</title>
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
					
					</tr>
				</thead>

					<tbody><tr class="active">
						<th scope="row">1</th>			
						<td style="cursor:pointer;" data-toggle="modal" data-target="#myModal1">		
						   Q. 구매한 게임에 대해서만 평가를 작성할 수 있나요?		
						</td>						
						<td>2019-10-17</td>
						<td>Admin</td>
					</tr>
					<tr class="active">
						<th scope="row">2</th>			
						<td style="cursor:pointer;" data-toggle="modal" data-target="#myModal2">		
						   Q. 부정적인 평가를 내려도 되나요?				
						</td>						
						<td>2019-10-17</td>
						<td>Admin</td>
					</tr>
					<tr class="active">
						<th scope="row">3</th>			
						<td style="cursor:pointer;" data-toggle="modal" data-target="#myModal3">		
						   Q. 저는 게임 개발자입니다. 평가에 답장을 할 수 있나요?				
						</td>						
						<td>2019-10-17</td>
						<td>Admin</td>
					</tr>
					<tr class="active">
					<th scope="row">4</th>			
						<td style="cursor:pointer;" data-toggle="modal" data-target="#myModal4">		
						   Q. 저는 개발자입니다. 제 제품에 대한 평가를 삭제할 수 있나요?	
						</td>						
						<td>2019-10-17</td>
						<td>Admin</td>
					</tr>
					<tr class="active">
						<th scope="row">5</th>			
						<td style="cursor:pointer;" data-toggle="modal" data-target="#myModal5">		
						   Q. 내 게임이나 소프트웨어가 발매된 후에 매우 많은 변화를 겪었는데, 제가 볼 평가들이 그걸 반영할까요?				
						</td>						
						<td>2019-10-17</td>
						<td>Admin</td>
					</tr>
				
					
					
					
					
					<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						   <div class="modal-dialog"><!--  큰창:<div class="modal-dialog modal-lg"> 작은창 :<div class="modal-dialog modal-sm">  -->
						      <div class="modal-content">
						         <div class="modal-header">
							         <h4 class="modal-title" id="myModalLabel">
							              	Q. 구매한 게임에 대해서만 평가를 작성할 수 있나요?
							            </h4>
						         </div>
						          <div class="modal-body">
						            A. 구매한 제품이 아니어도 관계없습니다. 귀하의  계정에 있는 모든 제품에 대한 평가를 작성하실 수 있습니다. 다른 곳에서 얻은  키를 등록한 게임이나 무료 게임을 플레이한 경우에도 해당 제품에 대한 평가를 작성하실 수 있습니다. 평가 옆에 게임이나 소프트웨어를 사용한 시간이 함께 표시됩니다.

						         </div>
						         <div class="modal-footer">
						            <button type="button" class="btn btn-default" data-dismiss="modal">
						              	 닫기
						            </button>
						     
						         </div>
						      </div>
						    </div>
					</div>
					
					<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						   <div class="modal-dialog"><!--  큰창:<div class="modal-dialog modal-lg"> 작은창 :<div class="modal-dialog modal-sm">  -->
						      <div class="modal-content">
						         <div class="modal-header">
						            
						            <h4 class="modal-title" id="myModalLabel">
						              	Q. 부정적인 평가를 내려도 되나요?
						            </h4>
						         </div>
						         
						          <div class="modal-body">
						            A. 네. 제품이 마음에 들지 않았거나 제품 설명과 차이가 있다고 느꼈을 경우, 왜 이 제품을 추천하지 않는지 다른 사람들에게 이야기해줄 수 있습니다.

						         </div>
						         <div class="modal-footer">
						            <button type="button" class="btn btn-default" data-dismiss="modal">
						              	 닫기
						            </button>
						     
						         </div>
						      </div>
						    </div>
					</div>
					
					
					<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						   <div class="modal-dialog"><!--  큰창:<div class="modal-dialog modal-lg"> 작은창 :<div class="modal-dialog modal-sm">  -->
						      <div class="modal-content">
						         <div class="modal-header">
						            
						            <h4 class="modal-title" id="myModalLabel">
						              	Q. 저는 게임 개발자입니다. 평가에 답장을 할 수 있나요?
						            </h4>
						         </div>
						        
						          <div class="modal-body">
						           A. 네, 각 평가에 개발자가 답변할 수 있는 공간이 따로 있습니다. 또한, 자신의 제품에 대한 평가에 댓글을 달면 개발자가 쓴 댓글로 표시됩니다.

						         </div>
						         <div class="modal-footer">
						            <button type="button" class="btn btn-default" data-dismiss="modal">
						              	 닫기
						            </button>
						     
						         </div>
						      </div>
						    </div>
					</div>
					
					<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						   <div class="modal-dialog"><!--  큰창:<div class="modal-dialog modal-lg"> 작은창 :<div class="modal-dialog modal-sm">  -->
						      <div class="modal-content">
						         <div class="modal-header">
						            
						            <h4 class="modal-title" id="myModalLabel">
						              	Q. 저는 개발자입니다. 제 제품에 대한 평가를 삭제할 수 있나요?
						            </h4>
						         </div>
						        
						          <div class="modal-body">
						           A. 아니요, 직접 삭제할 수는 없습니다. 귀하의 제품에 대한 악의적이거나 부적절한 평가를 찾으셨다면 스팸 및 악성 콘텐츠, 주제에서 벗어난 콘텐츠로 신고하실 수 있습니다. 해당 평가는 상점 페이지에서 사라지지는 않지만, 모더레이터가 삭제하거나 스팸 표시를 해제할 때까지 스팸 표시를 달고 접힌 상태로 표시됩니다.

						         </div>
						         <div class="modal-footer">
						            <button type="button" class="btn btn-default" data-dismiss="modal">
						              	 닫기
						            </button>
						     
						         </div>
						      </div>
						    </div>
					</div>
					
					<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						   <div class="modal-dialog"><!--  큰창:<div class="modal-dialog modal-lg"> 작은창 :<div class="modal-dialog modal-sm">  -->
						      <div class="modal-content">
						         <div class="modal-header">
						            
						            <h4 class="modal-title" id="myModalLabel">
						              	Q. 내 게임이나 소프트웨어가 발매된 후에 매우 많은 변화를 겪었는데, 제가 볼 평가들이 그걸 반영할까요?
						            </h4>
						         </div>
						        
						          <div class="modal-body">
						           A. 상점 페이지에는 최근에 작성된 평가 위주로 표시됩니다. 따라서 게임 또는 소프트웨어의 현재 상태에 대한 평가가 먼저 눈에 띄게 됩니다. 또한, 45일 전에 출시된 게임 중에 최근 평가가 충분한 경우  게임의 현재 상태를 반영하기 위해 최근 평가 점수를 표시합니다.

						         </div>
						         <div class="modal-footer">
						            <button type="button" class="btn btn-default" data-dismiss="modal">
						              	 닫기
						            </button>
						     
						         </div>
						      </div>
						    </div>
					</div>
						      
						      
						 
					
					

				
	
			</tbody></table>
     </div>
			<!--//content-inner-section-->

	<!--/footer-bottom-->
	<div>
		<jsp:include page="/WEB-INF/views/include/footer_mp.jsp"
			flush="false" />
	</div>
	
	<script>
         $("#myButtons1").click(function(){
           alert('AJAX로 처리하고 정상 응답이면.. hide 해 준다.');
	     $('#myModal').modal('hide')
	        });
    </script>  
</body>
</html>
