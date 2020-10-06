package com.ync.project.front.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class NoticeMapperTests {

//	@Setter(onMethod_ = @Autowired)
	@Autowired
	private NoticeMapper mapper;

	@Test
	public void testGetList() {
		
		// 기존 방식의 코드
//		List<NoticeVO> notice = mapper.getList();
		
//		for(NoticeVO b : notice) {
//			log.info(b);
//		}
		
//		mapper.getList().forEach(notice -> log.info(notice));
		
		mapper.getList().forEach((notice) -> {
			log.info("==================");
			log.info(notice);
			});

	}
//	@Test
//	public void testInsert() {
//		NoticeVO notice = new NoticeVO();
//		notice.setTitle("공지1");
//		notice.setContent("공지1 내용");
//		notice.setHit(99L);
//		notice.setMedia1("1-1");
//		notice.setMedia2("1-2");
//		notice.setUserid("tjrwnsdud2@naver.com");
//		mapper.insert(notice);	
//
//		log.info(notice);
//	}
//
//	@Test
//	public void testInsertSelectKey() {
//
//		NoticeVO notice = new NoticeVO();
//		notice.setTitle("새로 작성하는 글 select key");
//		notice.setnotice("새로 작성하는 내용 select key");
//		notice.setWriter("newbie");
//
//		mapper.insertSelectKey(notice);
//
//		log.info(notice);
//	}
//
//	@Test
//	public void testRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		NoticeVO notice = mapper.read(58L);
//
//		log.info(notice);
//
//	}
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete(59L));
//	}
//
//	@Test
//	public void testUpdate() {
//
//		NoticeVO notice = new NoticeVO();
//		// 실행전 존재하는 번호인지 확인할 것
//		notice.setNotice_id(58L);
//		notice.setTitle("수정된 공지1");
//		notice.setContent("수정된 공지1 내용");
//		notice.setHit(99L);
//		notice.setMedia1("1-1");
//		notice.setMedia2("1-2");
//		notice.setUserid("tjrwnsdud2@naver.com");
//
//		int count = mapper.update(notice);
//		log.info("UPDATE COUNT: " + count);
//
//	}
//
//	@Test
//	public void testPaging() {
//
//		Criteria cri = new Criteria();
//		
//	    //10개씩 3페이지 
//	    cri.setPageNum(1);
//	    cri.setAmount(10);
//
//		List<NoticeVO> list = mapper.getListWithPaging(cri);
//		list.forEach(notice -> log.info(notice));
//
//	}

//	  @Test
//	  public void testSearch() {
//
//	    Criteria cri = new Criteria();
//	    cri.setKeyword("키워드");
//	    cri.setType("TC");
//
//	    List<NoticeVO> list = mapper.getListWithPaging(cri);
//
//	    list.forEach(notice -> log.info(notice));
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