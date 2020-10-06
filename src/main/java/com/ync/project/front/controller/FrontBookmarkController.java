//package com.ync.project.front.controller;
//
//import org.springframework.http.HttpStatus;
//import org.springframework.http.MediaType;
//import org.springframework.http.ResponseEntity;
//import org.springframework.security.access.prepost.PreAuthorize;
//import org.springframework.web.bind.annotation.DeleteMapping;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.ync.project.domain.CommentPageDTO;
//import com.ync.project.domain.CommentVO;
//import com.ync.project.domain.Criteria;
//import com.ync.project.front.service.CommentService;
//
//import lombok.AllArgsConstructor;
//import lombok.extern.log4j.Log4j;
//
//@RequestMapping("//")
//@RestController
//@Log4j
//@AllArgsConstructor
//public class FrontBookmarkController {
//	
//private CommentService service;
//
//	// consumes - 호출하는쪽에서 application/json 요청만 받아들임 (요청 컨텐츠 타입)
//	// produces - 조건에 지정한 미디어 타입과 관련된 응답 생성, 응답 컨텐트 타입 제한
//	// 명시적이 좋음
//	@PostMapping(value = "/new",
//			consumes = "application/json",
//			produces = { MediaType.TEXT_PLAIN_VALUE })
//	//RequestBody는 파라미터에서만 작동함
//	@PreAuthorize("isAuthenticated()")
//	public ResponseEntity<String> create(@RequestBody CommentVO vo) {
//		
//		log.info("CommentVO: " + vo);
//		
//		int insertCount = service.register(vo);
//		
//		log.info("Reply INSERT COUNT: " + insertCount);
//		
//		//1이면 참
//		return insertCount == 1
//		? new ResponseEntity<>("success", HttpStatus.OK)
//		: new ResponseEntity<>("Fail 댓글 등록 중 오류 발생", HttpStatus.INTERNAL_SERVER_ERROR);
//		//삼항 연산자 처리
//	}
//	
//	//특정 게시물의 댓글 확인
//	@GetMapping(value = "/pages/{contentid}/{page}",
//			produces = {
//					MediaType.APPLICATION_XML_VALUE,
//					MediaType.APPLICATION_JSON_UTF8_VALUE })
//	public ResponseEntity<CommentPageDTO> getList(
//			@PathVariable("page") int page,
//			@PathVariable("contentid") Long content_id) {
//		
//		log.info("getList........");
//		Criteria cri = new Criteria(page, 10);
//		
//		log.info("get Reply List bno: " + content_id);
//		
//		log.info(cri);
//		
//		return new ResponseEntity<>(service.getListPage(cri, content_id), HttpStatus.OK);
//		
//		}
//	
//	//삭제
//	@GetMapping(value = "/{comment_id}",
//			produces = {
//					MediaType.APPLICATION_XML_VALUE,
//					MediaType.APPLICATION_JSON_UTF8_VALUE })
//	public ResponseEntity<CommentVO> get(@PathVariable("comment_id") Long comment_id) {
//		
//		log.info("get: " + comment_id);
//		
//		return new ResponseEntity<>(service.get(comment_id), HttpStatus.OK);
//		
//		}
//	
//	@DeleteMapping(value = "/{comment_id}",produces = {MediaType.TEXT_PLAIN_VALUE })
//	@PreAuthorize("principal.username == #vo.userid")
//	public ResponseEntity<String> remove(@RequestBody CommentVO vo, @PathVariable("comment_id") Long comment_id) {
//		
//		log.info("remove: " + comment_id);
//		
//		log.info("replyer " + vo.getUserid());
//		
//		return service.remove(comment_id) == 1
//			? new ResponseEntity<>("success", HttpStatus.OK)
//			: new ResponseEntity<>("fail, 댓글 삭제 오류", HttpStatus.INTERNAL_SERVER_ERROR);
//		}
//	
//	//put, patch 둘다 적용시켜야 하므로 @RequestMapping 사용
//	//수정
//	@RequestMapping(method = { RequestMethod.PUT, RequestMethod.PATCH },
//			value = "/{comment_id}",
//			consumes = "application/json",
//			produces = {
//					MediaType.TEXT_PLAIN_VALUE })
//	@PreAuthorize("principal.username == #vo.userid")
//	public ResponseEntity<String> modify(
//					@RequestBody CommentVO vo,
//					@PathVariable("comment_id") Long comment_id) {
//		
//		vo.setComment_id(comment_id);
//		
//		log.info("comment_id: " + comment_id);
//		
//		log.info("modify: " + vo);
//		
//		return service.modify(vo) == 1
//			? new ResponseEntity<>("success", HttpStatus.OK)
//			: new ResponseEntity<>("fail, 댓글 수정 실패", HttpStatus.INTERNAL_SERVER_ERROR);
//		}
//	
//}
//
