package com.ync.project.front.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.ync.project.domain.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
//	@Test
//	public void testRead() { //tjrwnsdud2에 대한 정보를 조회 MemberVO와 AuthvO가 구성됨
//		
//		MemberVO vo = mapper.read("tjrwnsdud2@naver.com");
//	}
//	
//	@Test
//	public void testInsert() { 
//		
//		MemberVO vo = new MemberVO();
//		vo.setUserid("hyeon@mail.com");
//		vo.setName("jeonghyeon");
//		vo.setBirth("960202");
//		vo.setPhone("01039290412");
//		vo.setUserpw("1234");
//		vo.setCreater_name("another");
//		vo.setBank_account(null);
//		vo.setDonation_accept("1");
//		vo.setLevels("1");
//		vo.setStatus("1");
//		vo.setSns(null);
//		vo.setOther_address(null);
//		
//		mapper.insert(vo);
//		log.info(vo);
//	}
	
//	@Test
//	public void testDelete() { 
//		
//		MemberVO member = new MemberVO();
//		member.setUserid("test123@mail.com");
//		
//		
//		mapper.delete(member);
//
//	}
}
