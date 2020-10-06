package com.ync.project.front.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.BookmarkVO;
import com.ync.project.domain.CommentVO;
import com.ync.project.domain.Criteria;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: BookmarkMapperTests.java
  * @Date		: 2019. 12. 4. 
  * @Author		: 허 민
  * @프로그램 설명 : 북마크맵퍼 테스트
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class BookmarkMapperTests {
	@Autowired
	private BookmarkMapper mapper;
	
	@Test
	public void testGetList() {
		
		mapper.getList().forEach((Bookmark) -> {
			log.info("==================");
			log.info(Bookmark);
			});

	}
	
	@Test
	public void testGetListWithPaging() {
		
//		mapper.getListWithPaging(cri, content_id).forEach((Bookmark) -> {
//			log.info("==================");
//			log.info(Bookmark);
//			});
		
		Criteria cri = new Criteria(1, 10);
		// 
		List<BookmarkVO> bookmarks = mapper.getListWithPaging(cri, "tjrwnsdud2@naver.com");
		
		bookmarks.forEach(content -> log.info(content));

	}
	
//	@Test
//	public void testInsert() {
//
//		BookmarkVO content = new BookmarkVO();
//		content.setUserid("tjrwnsdud2@naver.com");
//		content.setContent_id(1L);
//		content.setBookmark(1L);
//	
//		mapper.insert(content);	
//		log.info(content);
//
//	}
	 
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete(1L));
//	}
	
	

}
