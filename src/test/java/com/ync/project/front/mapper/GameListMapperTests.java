package com.ync.project.front.mapper;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.ContentVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: GameListMapperTests.java
  * @Date		: 2019. 12. 4. 
  * @Author		: 허 민
  * @프로그램 설명 : 게임 리스트 test
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class GameListMapperTests {

	@Setter(onMethod_ = @Autowired)
	@Autowired
	private GameListMapper mapper;
	
	//전체
//	@Test
//	public void testGetListAll() {
//		
//		mapper.getList().forEach((gameList) -> {
//			log.info("==================");
//			log.info(gameList);
//			});
//
//	}
	
//	@Test
//	public void testGetListAction() {
//		
//		mapper.getListWithPageByAction(cri).forEach((gameList1) -> {
//			log.info("==================");
//			log.info(gameList1);
//			});
//
//	}
//	
//	@Test
//	public void testGetListAdventure() {
//		
//		mapper.getList2().forEach((gameList2) -> {
//			log.info("==================");
//			log.info(gameList2);
//			});
//
//	}
//	
//	@Test
//	public void testGetListRogueLike() {
//		
//		mapper.getList3().forEach((gameList3) -> {
//			log.info("==================");
//			log.info(gameList3);
//			});
//
//	}
//	
//	@Test
//	public void testGetListPuzzle() {
//		
//		mapper.getList4().forEach((gameList4) -> {
//			log.info("==================");
//			log.info(gameList4);
//			});
//
//	}
//	
//	@Test
//	public void testGetListRhythm() {
//		
//		mapper.getList5().forEach((gameList5) -> {
//			log.info("==================");
//			log.info(gameList5);
//			});
//
//	}
//	
//	@Test
//	public void testGetListHorror() {
//		
//		mapper.getList5().forEach((gameList6) -> {
//			log.info("==================");
//			log.info(gameList6);
//			});
//
//	}
//	
//	@Test
//	public void testGetListSimulation() {
//		
//		mapper.getList5().forEach((gameList7) -> {
//			log.info("==================");
//			log.info(gameList7);
//			});
//
//	}
//	
//	@Test
//	public void testGetListCasual() {
//		
//		mapper.getList5().forEach((gameList8) -> {
//			log.info("==================");
//			log.info(gameList8);
//			});
//
//	}
//	
//	@Test
//	public void testGetListStrategy() {
//		
//		mapper.getList5().forEach((gameList9) -> {
//			log.info("==================");
//			log.info(gameList9);
//			});
//
//	}

//	@Test
//	public void testPaging() {
//
//		Criteria cri = new Criteria();
//		
//	    //10개씩 3페이지 
//	    cri.setPageNum(3);
//	    cri.setAmount(20);
//
//		List<contentVO> list = mapper.getListWithPaging(cri);
//		list.forEach(content -> log.info(content));
//
//	}
	
}