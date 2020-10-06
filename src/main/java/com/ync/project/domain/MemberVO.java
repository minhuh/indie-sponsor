package com.ync.project.domain;

import java.util.List;

import lombok.Data;

/**
  * @FileName	: MemberVO.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 김정현
  * @프로그램 설명 	: 회원 테이블 변수 저장
  */
@Data
public class MemberVO {
	
	// userid, userpw 이름은 그대로 사용하고 나머지는 프로젝트별 생성한 table 컬럼명에 맞춰 작성
	// spring security 적용으로 로그인 시 소스를 교재 소스 그대로 사용하기 위해.
	
	private String userid; //아이디(이메일)
	private String name; //사용자 이름
	private String userpw; //비밀번호
	private String birth; //생년월일
	private String phone; //전화번호
	private String levels; //사용자 레벨(이용자/게임개발자)
	private String status; //계정 상태
	private String creater_name;//창작자명
	private String bank_account;//계좌
	private String donation_accept; //후원여부
	private String sns; //SNS 계정
	private String other_address; //추가 연락처
	private String auth;
	
	private List<AuthVO> authList;
	
	private String donation;		// 프론트에서 회원정보 확인시의 값
//	private boolean enabled;
//
//	private Date regDate;
//	private Date updateDate;


}
