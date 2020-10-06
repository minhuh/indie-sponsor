//package com.ync.project.front.mapper;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import com.ync.project.domain.ContentVO;
//import com.ync.project.domain.FundVO;
//
//import lombok.Setter;
//import lombok.extern.log4j.Log4j;
//
//
//
// /**
//  * @FileName	: FundMapperTests.java
//  * @Date		: 2019. 12. 4. 
//  * @Author		: 허 민
//  * @프로그램 설명 : 펀딩 메인 및 종료된 펀딩 test
//  */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
//// Java Config
//// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
//@Log4j
//public class FundMapperTests {
//
//	@Setter(onMethod_ = @Autowired)
//	@Autowired
//	private FundingMapper mapper;
//	
////	//펀딩 메인
////	@Test
////	public void testGetListMain() {
////		
////		mapper.getListWithPaging().forEach((gameList) -> {
////			log.info("==================");
////			log.info(gameList);
////			});
////
////	}
////	
////	//펀딩 종료
////		@Test
////		public void testGetListEnd() {
////			
////			mapper.getListEndFund().forEach((gameList) -> {
////				log.info("==================");
////				log.info(gameList);
////				});
////
////		}
//		//상세 페이지
//		@Test
//		public void testRead() {
//
//			// 존재하는 게시물 번호로 테스트
//			ContentVO content = mapper.read(1);
//
//			log.info(content);
//
//		}
//		
////		//추가
////		@Test
////		public void testInsert() {
////			FundVO content = new FundVO();
////			content.setContent_id(1);
////			content.setDonation(30000L);
////			content.setUserid("tjrwnsdud2@naver.com");
////			mapper.insert(content);	
////	
////			log.info(content);
////		}
//		
//		//값 변경
//		@Test
//		public void testUpdate() throws Exception {
//			ContentVO content = new ContentVO();
//			// 실행전 존재하는 번호인지 확인할 것
//			content.setContent_id(1);
//			content.setMoney_temp(50000L);
//	
//			int count = mapper.update(content);
//			log.info("UPDATE COUNT: " + count);
//	
//		}
//
////	@Test
////	public void testPaging() {
////
////		Criteria cri = new Criteria();
////		
////	    //10개씩 3페이지 
////	    cri.setPageNum(3);
////	    cri.setAmount(20);
////
////		List<contentVO> list = mapper.getListWithPaging(cri);
////		list.forEach(content -> log.info(content));
////
////	}
//	
//}