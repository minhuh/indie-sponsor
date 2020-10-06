package com.ync.project.front.mapper;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
public class ContentMapperTests {


	@Autowired
	private ContentMapper mapper;
	
//	@Test
//	public void testGetList() {
//		
//		// 기존 방식의 코드
//		List<ContentVO> content = mapper.getList();
//		
//		for(ContentVO b : content) {
//			log.info(b);
//		}
		
//		mapper.getList().forEach(content -> log.info(content));
		
//		mapper.getList().forEach((content) -> {
//			log.info("==================");
//			log.info(content);
//			});

//	}
//	@Test
//	public void testInsert() {
//		ContentVO content = new ContentVO();
//		content.setTitle("월드챔피언쉽");
//		content.setContent_intro("재밌겠다");
//		content.setTag("앞서해보기");
//		content.setAge_rate("9");
//		content.setGame_launch("PC");
//		content.setDon_attainment(9000000L);
//		content.setUserid("tjrwnsdud2@naver.com");
//		content.setPlatform("PC");
//		content.setLanguages("한국어");
//		content.setMedia1("미디어1");
//		content.setMedia2("미디어2");
//		content.setMedia3("미디어3");
//		content.setMedia4("미디어4");
//		content.setGenre_id(1L);
//		mapper.insert(content);	
//
//		log.info(content);
//	}
//
//	@Test
//	public void testInsertSelectKey() {
//
//		ContentVO content = new ContentVO();
//		content.setTitle("새로 작성하는 글 select key");
//		content.setContent("새로 작성하는 내용 select key");
//		content.setWriter("newbie");
//
//		mapper.insertSelectKey(content);
//
//		log.info(content);
//	}
//
	@Test
	public void testRead() {

		// 존재하는 게시물 번호로 테스트
		ContentVO content = mapper.read("1");

		log.info(content);

	}
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete(55L));
//	}
	
//	@Test
//	public void testUpdate() throws ParseException {
//		DateFormat format = new SimpleDateFormat("yyyy-mm-dd");
//		String StartDate = "2015-01-18";
//		Date Startday = format.parse(StartDate);
//		ContentVO content = new ContentVO();
//		// 실행전 존재하는 번호인지 확인할 것
//		content.setTitle("공백게임");
//		content.setContent_intro("공백의 미");
//		content.setReg_date(Startday);
//		content.setTag("두둥탁");
//		content.setAge_rate("15");
//		content.setGame_launch("https://store.steampowered.com/app/977950/A_Dance_of_Fire_and_Ice/");
//		content.setDon_attainment(65000000L);
//		content.setUserid("tjrwnsdud2@naver.com");
//		content.setPlatform("PC");
//		content.setLanguages("한국어");
//		content.setMedia1("6LAupbx_0QY");
//		content.setMedia2("/resources/img/dance.jpg");
//		content.setMedia3("찾아");
//		content.setMedia4("봐요");
//		content.setGenre_id(1L);
//
//		int count = mapper.update(content);
//		log.info("UPDATE COUNT: " + count);
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

//	  @Test
//	  public void testSearch() {
//
//	    Criteria cri = new Criteria();
//	    cri.setKeyword("키워드");
//	    cri.setType("TC");
//
//	    List<contentVO> list = mapper.getListWithPaging(cri);
//
//	    list.forEach(content -> log.info(content));
//	  }
	  
//	  @Test
//	  public void testTotal() {
//
//	    Criteria cri = new Criteria();
//	    cri.setKeyword("새로");
//	    cri.setType("T");
//
//	    int total = mapper.getTotalCount(cri);
//
//	    log.info("total:" + total);
//	  }
	
}