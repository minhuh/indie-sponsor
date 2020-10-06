package com.ync.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.MemberVO;
import com.ync.project.front.service.MemberService;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberServiceTests {
	@Autowired
	private MemberService service;
	
//	@Test
//	public void testjoin() {
//		MemberVO member = new MemberVO();
//		
//		member.setUserid("test12@naver.com");
//		member.setName("jeonghyeon1234");
//		member.setBirth("960202");
//		member.setPhone("01012341234");
//		member.setUserpw("1234");
//		member.setCreater_name("another2");
//		member.setBank_account("2134");
//		member.setDonation_accept("1");
//		member.setStatus("1");
//		member.setSns("abc");
//		member.setOther_address("abc@mail.com");
//			
//		service.join(member);
//		log.info("생성된 아이디: " + member.getUserid());
//	}
	
//	@Test
//	public void testdelete() {
//		MemberVO member = new MemberVO();
//		
//		member.setUserid("test123@mail.com");
//		service.withdraw(member);
//	}
}
