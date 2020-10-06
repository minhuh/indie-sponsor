package com.ync.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.ChangelogVO;
import com.ync.project.domain.MemberVO;
import com.ync.project.front.service.ChangelogService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ChangelogServiceTests {
	@Autowired
	private ChangelogService service;
	
	@Test
	public void testinsert() {
		ChangelogVO chlog = new ChangelogVO();
		
		chlog.setVersion("v1.2");
		chlog.setContent_id(2L);
		chlog.setGame_launch("store.steampowered.com/about");
		chlog.setMedia1("1");
		chlog.setMedia2("2");
		chlog.setMedia3("3");
		chlog.setMedia4("4");
		chlog.setPatch_log("사실 바뀐거 없습니다.");
		
		service.register(chlog);
		log.info("생성된 로그 아이디: " + chlog.getChange_log_id());
	}
}
