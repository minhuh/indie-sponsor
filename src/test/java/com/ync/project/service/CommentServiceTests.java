package com.ync.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.CommentVO;
import com.ync.project.domain.Criteria;
import com.ync.project.front.service.CommentService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class CommentServiceTests {

	@Autowired
	private CommentService service;

//	@Test
//	public void teWHEREstExist() {
//
//		log.info(service);
//	}
	
	@Test
	public void testRegister() {

		CommentVO board = new CommentVO();
		board.setContent_id(5L);
		board.setContent("새로 작성하는 댓글");
		board.setUserid("tjrwnsdud2@naver.com");

		service.register(board);

		log.info("생성된 댓글의 번호: " + board.getComment_id());
	}
	
//	@Test
//	public void testGet() {
//
//		log.info(service.get(11L));
//	}
	
//	@Test
//	public void testDelete() {
//
//		// 게시물 번호의 존재 여부를 확인하고 테스트할 것
//		log.info("REMOVE RESULT: " + service.remove(11L));
//
//	}

//	@Test
//	public void testUpdate() {
//
//		ReplyVO board = service.get(3L);
//
//		if (board == null) {
//			return;
//		}
//		
//		board.setReply("댓글 제목 수정합니다.");
//		log.info("MODIFY RESULT: " + service.modify(board));
//	}
	
//	@Test
//	public void testGetList() {
//
//		service.getList(new Criteria(), 5L).forEach(board -> log.info(board));
//	}
	
}

