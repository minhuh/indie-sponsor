package com.ync.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.front.service.GameListService;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class GameListServiceTests {

	@Autowired
	private GameListService service;


	@Test
	public void testGetListAll() {

		service.getList().forEach(content -> log.info(content));
	}
	
//	@Test
//	public void testGetListAction() {
//		
//		service.getList1().forEach(content -> log.info(content));
//
//	}
//	
//	@Test
//	public void testGetListAdventure() {
//		
//		service.getList2().forEach(content -> log.info(content));
//
//	}
//	
//	@Test
//	public void testGetListRogueLike() {
//		
//		service.getList3().forEach(content -> log.info(content));
//	}
//	
//	@Test
//	public void testGetListPuzzle() {
//		
//		service.getList4().forEach(content -> log.info(content));
//	}
//	
//	@Test
//	public void testGetListRhythm() {
//		
//		service.getList5().forEach(content -> log.info(content));
//	}
//	
//	@Test
//	public void testGetListHorror() {
//		
//		service.getList6().forEach(content -> log.info(content));
//
//	}
//	
//	@Test
//	public void testGetListSimulation() {
//		
//		service.getList7().forEach(content -> log.info(content));
//	}
//	
//	@Test
//	public void testGetListCasual() {
//		
//		service.getList8().forEach(content -> log.info(content));
//	}
//	
//	@Test
//	public void testGetListStrategy() {
//		
//		service.getList9().forEach(content -> log.info(content));
//	}

}
