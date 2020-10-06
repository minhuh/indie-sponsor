package com.ync.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.BookmarkVO;
import com.ync.project.domain.Criteria;
import com.ync.project.front.service.BookmarkService;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: BookmarkServiceTests.java
  * @Date		: 2019. 12. 4. 
  * @Author		: 허 민
  * @프로그램 설명 : 북마크 서비스 테스트
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class BookmarkServiceTests {

	@Autowired
	private BookmarkService service;

//	@Test
//	public void teWHEREstExist() {
//
//		log.info(service);
//	}
	
//	@Test
//	public void testInsert() {
//
//		BookmarkVO board = new BookmarkVO();
//		board.setContent_id(5L);
//		board.setUserid("tjrwnsdud2@naver.com");
////		board.setReg_date("2019-10-11");		
//		board.setBookmark(1L);
//		service.insert(board);
//
//		log.info("북마크 등록 여부: " + board.getBookmark());
//	}
	
	
//	@Test
//	public void testDelete() {
//
//		// 게시물 번호의 존재 여부를 확인하고 테스트할 것
//		log.info("REMOVE RESULT: " + service.delete(1L));
//
//	}


	
	@Test
	public void testGetList() {
		
		service.getList(new Criteria(), "tjrwnsdud2@naver.com").forEach(board -> log.info(board));
	}
	
}

