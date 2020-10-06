package com.ync.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.front.service.ContentService;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class ContentServiceTests {

	@Autowired
	private ContentService service;

//	@Test
//	public void testExist() {
//
//		log.info(service);
//		assertNotNull(service);
//	}
//	
//	@Test
//	public void testRegister() {
//
//		ContentVO content = new ContentVO();
//		content.setTitle("월드챔피언쉽123");
//		content.setContent_intro("재밌겠다");
//		content.setTag("앞서해보기");
//		content.setAge_rate(9L);
//		content.setGame_launch("PC");
//		content.setDon_attainment(9000000);
//		content.setUserid("tjrwnsdud2@naver.com");
//		content.setPlatform("PC");
//		content.setLanguages("한국어");
//		content.setMedia1("미디어1");
//		content.setMedia2("미디어2");
//		content.setMedia3("미디어3");
//		content.setMedia4("미디어4");
//		content.setGenre_id('1');
//		content.setHit(99);
//		content.setLike_cnt(18);
//
//		service.register(content);
//
//		log.info("생성된 게시물의 번호: " + content.getContent_id());
//		
//	}
//	
//	@Test
//	public void testGetList() {
//
//		service.getList().forEach(content -> log.info(content));
////		service.getListWithPaging(new Criteria(2, 10)).forEach(board -> log.info(board));
//	}
	
//	@Test
//	public void testGet() {
//
//		log.info(service.get(44L));
//	}
	
//	@Test
//	public void testDelete() {
//
//		// 게시물 번호의 존재 여부를 확인하고 테스트할 것
//		log.info("REMOVE RESULT: " + service.remove(44L));
//
//	}

//	@Test
//	public void testUpdate() {
//
//		ContentVO content = service.get(44L);
//
//		if (content == null) {
//			return;
//		}
//
//		content.setTitle("제목 수정합니다.");
//		log.info("MODIFY RESULT: " + service.modify(content));
//	}
	
	@Test
	public void testRead() {
		service.read("1");
		
	}

}
