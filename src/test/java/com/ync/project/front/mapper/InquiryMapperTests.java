package com.ync.project.front.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.InquiryVO;
import com.ync.project.domain.NoticeVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class InquiryMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private InquiryMapper mapper;
	
	@Test
	public void testGetList() {
		
		mapper.getList().forEach((inquiry_id) -> {
			log.info("==================");
			log.info(inquiry_id);
			});
	}
	
	@Test
	public void testInsert() {

		InquiryVO content = new InquiryVO();

		content.setTitle("제목1");
		content.setUserid("tjrwnsdud2@naver.com");
		content.setContent("문의내용1");
		content.setComments("답변내용");
	
		mapper.insert(content);	
		log.info(content);

	}
	
	@Test
	public void testRead() {

		// 존재하는 게시물 번호로 테스트
		InquiryVO inquiry_id = mapper.read(1L);

		log.info(inquiry_id);

	}
	
	@Test
	public void testDelete() {

		log.info("DELETE COUNT: " + mapper.delete(1L));
	}
}
