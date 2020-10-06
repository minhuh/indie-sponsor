package com.ync.project.admin.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.admin.mapper.ADonationMapper;
import com.ync.project.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
/**
  * @FileName	: ADonationServiceTests.java
  * @Date		: 2019. 12. 4. 
  * @Author		: 김정현
  * @프로그램 설명 :  Donation 서비스 테스트 파일
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ADonationServiceTests {
	@Setter(onMethod_ = @Autowired)
	@Autowired
	private ADonationService service;
	
	@Test
	public void testGetList() {

		service.getList().forEach((donation) -> {log.info(donation);});

	}
}
