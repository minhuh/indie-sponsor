package com.ync.project.admin.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.MemberVO;

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
public class AMemberMapperTests {

//	@Setter(onMethod_ = @Autowired)
//	@Autowired
//	private MemberMapper mapper;
	
//	@Test
//	public void testGetList() {
//		
//		// 기존 방식의 코드
//		List<MemberVO> member = mapper.getList();
//		
//	}
	
	// 회원추가 테스트
//	@Test
//	public void testInsert() {
//
//		MemberVO member = new MemberVO();
//		
//		member.setUserid("hong@gildong.jun");
//		member.setName("길동이형");
//		member.setBirth("14430101");
//		member.setPhone("+821012345678");
//		member.setUserpw("1234");
//		member.setCreater_name("호형호제");
//		member.setBank_account("1231231");
//		member.setDonation_accept("0");
//		member.setStatus("1");
//		member.setSns("sss");
//		member.setOther_address("qwe");
//		
//		mapper.insert(member);	
//		log.info(member);
//	}
	@Autowired
	private AMemberMapper AMember;
	
//	@Test
//	public void readAdmin() {
//		
//		
//		AMember.getAdminList().forEach((AMember) -> {
//			log.info("==================");
//			log.info(AMember);
//			});
//			
//	}
	@Test
	public void testrevoke() {
		
		
		AMember.revoke("mun@sang.ho");
			
	}

}