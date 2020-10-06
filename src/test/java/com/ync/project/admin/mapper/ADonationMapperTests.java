package com.ync.project.admin.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ADonationMapperTests.java
  * @Date		: 2019. 12. 4. 
  * @Author		: 김정현
  * @프로그램 설명 : Donation 테스트 파일
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ADonationMapperTests {

	@Setter(onMethod_ = @Autowired)
	@Autowired
	private ADonationMapper donation;

	
	@Test
	public void testread() {
		Criteria cri = new Criteria();
		donation.getListWithPagingAndContent(cri).forEach((donation) -> {
			log.info("==================");
			log.info(donation);
			});
	}
	
}
