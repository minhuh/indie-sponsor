package com.ync.project.front.service;

import com.ync.project.domain.MemberVO;


/**
  * @FileName	: MemberService.java
  * @Date		: 2019. 11. 25. 
  * @Author		: 김정현
  * @프로그램 설명 : 회원관련 서비스 파일 생성
  */
public interface MemberService {
	
	// 회원가입
	public void join(MemberVO member);
	
	// 회원정보 수정
	public void modify(MemberVO member);
	
	//아이디 찾기
	public void findID(MemberVO member);
	
	//비밀번호 찾기
	public void findPassword(MemberVO member);


	public boolean request_creator(MemberVO r_creator);
	
	//회원정보 가져오기
	public MemberVO get(String userid);

	//비밀번호 확인
	public MemberVO checkPassword(MemberVO member);

	public MemberVO read_member(String string);

	public boolean member_modify(MemberVO userid);

}