package com.ync.project.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import com.ync.project.domain.MemberVO;
import com.ync.project.front.mapper.MemberMapper;
import com.ync.project.security.domain.CustomUser;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: CustomUserDetailsService.java
  * @Date		: 2019. 10. 16. 
  * @Author		: 정진우
  * @프로그램 설명 : spring security가 적용된 회원 정보를 객체에 저장
  */
@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {

		log.warn("Load User By UserName : " + userName);

		// userName means userid
		MemberVO vo = memberMapper.read(userName);

		log.warn("queried by member mapper: " + vo);

		//return null;
		return vo == null ? null : new CustomUser(vo);
	}

}
