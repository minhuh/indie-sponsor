package com.ync.project.front.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.ChangelogVO;
import com.ync.project.domain.Criteria;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
//Java Config
//@ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class ChangelogMapperTests {
	
	@Autowired
	private ChangelogMapper mapper;
	
//	@Test
//	public void testGetList() {
//		
//		mapper.getList().forEach((content) -> {
//		log.info("==================");
//		log.info(content);
//		});
//	}
	
//	@Test
//	public void testCreate() {
//		
//		IntStream.rangeClosed(1, 20).forEach(i -> {
//			
//			ChangelogVO vo = new ChangelogVO();	
//			vo.setContent_id((long) i % 9 +1);
//			vo.setVersion("v1."+i);
//			vo.setGame_launch("www." + i + ".com");
//			vo.setPatch_log(i+"번째 페이징 테스트 파일");
//			vo.setMedia1(1+"");
//			vo.setMedia2(2+"");
//			vo.setMedia3(3+"");
//			vo.setMedia4(4+"");
//			mapper.insert(vo);
//			log.info(vo);
//		});
//	}
//	
//	@Test
//	public void testGetListWithPaging() {	
//		
//		mapper.getListWithPaging(new Criteria()).forEach((content) -> {
//		log.info("==================");
//		log.info(content);
//		});
//	}
	
//	@Test
//	public void testGetList() {
//		System.out.println("read Comment.....");
//		
//		mapper.readComment(3L);
//	}
	
//	@Test
//	public void readpatchnoteList() {
//		
//		mapper. readpatchnoteList(3L).forEach((content) -> {
//		log.info("==================");
//		log.info(content);
//		});
//	}
	
	@Test
	public void readother_patch() {
		
		mapper. readpatchnoteList(3L).forEach((content) -> {
		log.info("==================");
		log.info(content);
		});
	}
}	
