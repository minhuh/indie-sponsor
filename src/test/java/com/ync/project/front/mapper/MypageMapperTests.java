package com.ync.project.front.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class MypageMapperTests {
	@Autowired
	private MypageMapper mapper;
	
	@Test
	public void testGetList() {
	Criteria cri = new Criteria();
	cri.setUserid("tjrwnsdud2@naver.com");
	
	
	mapper.getList(cri);
		
		
	}
	
	@Test
	public void testGetFundList() {
	Criteria cri = new Criteria();
	cri.setUserid("tjrwnsdud2@naver.com");
	
	mapper.getFundList(cri);
		
		
	}
	
}
