package com.ync.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.DonationVO;
import com.ync.project.front.service.MypageService;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: FundServiceTests.java
  * @Date		: 2019. 12. 4. 
  * @Author		: 허 민
  * @프로그램 설명 : 펀딩부분 서비스 테스트
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class MypageServiceTests {

	@Autowired
	private MypageService service;

	// 펀딩한 페이지 목록
	@Test
	public void testGetFundList() {
		Criteria cri = new Criteria();
		cri.setUserid("tjrwnsdud2@naver.com");
		service.getFundList(cri).forEach(content -> log.info(content));
	}
////
////	// 펀딩 종료
////	@Test
////	public void testGetListEnd() {
////
////		service.getListEndFund().forEach(content -> log.info(content));
////
////	}
//	
//	//상세 페이지
////	@Test
////	public void testRead() {
////
////		// 존재하는 게시물 번호로 테스트
////		ContentVO content = service.read(1);
////
////		log.info(content);
////
////	}
//	
//	//추가
////	@Test
////	public void testInsert() {
////		FundVO content = new FundVO();
////		content.setContent_id(1L);
////		content.setDonation(30000L);
////		content.setUserid("tjrwnsdud2@naver.com");
////		service.insert(content);	
////
////		log.info(content);
////	}
//	
//	//값 변경
//	@Test
//	public void testUpdate() throws Exception {
//		ContentVO content = new ContentVO();
//		// 실행전 존재하는 번호인지 확인할 것
//		content.setContent_id(1);
//		content.setMoney_temp(30000L);
//
//		boolean count = service.modify(content) == true;
//		log.info("UPDATE COUNT: " + count);
//
//	}
//
}
