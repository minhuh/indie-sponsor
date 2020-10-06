package com.ync.project.admin.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.EventVO;
import com.ync.project.admin.mapper.AEventMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: ContentMapperTests.java
  * @Date		: 2019. 10. 26. 
  * @Author		: 석준영
  * @프로그램 설명 :	 계시판 mapper test 파일 생성
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class AEventMapperTests {

	@Setter(onMethod_ = @Autowired)
	@Autowired
	private AEventMapper mapper;
	
//	@Test
//	public void testGetList() {
//		
//		// 기존 방식의 코드
//		List<MemberVO> member = mapper.getList();
//		
//	}
	
	// 이벤트 글 추가 테스트
	@Test
	public void testInsert() {

		EventVO content = new EventVO();
		
		content.setUserid("hong@gildong.jun");
		content.setTitle("The Second Testing Event content");
		content.setContent("두번째 테스트 이름 바꾼후 확인");
		content.setHit(1L);
		content.setMedia1("adress/adress/adress/con1");
		content.setMedia2("adress/adress/adress/con2");
		
		mapper.insert(content);	
		log.info(content);
	}

}