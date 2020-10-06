package com.ync.project.front.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.MemberVO;
import com.ync.project.front.mapper.MemberMapper;

import lombok.extern.log4j.Log4j;

/**
 * @FileName : MemberServiceImpl.java
 * @Date : 2019. 11. 25.
 * @Author : 김정현
 * @프로그램 설명 : 회원 관련 서비스 impl 파일 생성
 */
@Log4j
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberMapper mapper;

	@Override
	public void join(MemberVO member) {
		// TODO Auto-generated method stub
		log.info("join....." + member);
		mapper.insert(member);
	}

	@Override
	public void modify(MemberVO member) {
		// TODO Auto-generated method stub
		log.info("modify......" + member);
	}

	@Override
	public void findID(MemberVO member) {
		// TODO Auto-generated method stub
		log.info("findID......" + member);
	}

	@Override
	public void findPassword(MemberVO member) {
		// TODO Auto-generated method stub
		log.info("findPassword......" + member);
	}

	@Override
	public MemberVO get(String userid) {
		// TODO Auto-generated method stub
		log.info("read User informations by ......" + userid);

		return mapper.read(userid);
	}

	@Override
	public MemberVO checkPassword(MemberVO member) {
		// TODO Auto-generated method stub
		log.info("Check User information Service by ......" + member);

		return mapper.checkUser(member);
	}

	@Override
	public boolean request_creator(MemberVO r_creator) {
		log.info("modify......" + r_creator);

		return mapper.request_creator(r_creator) == 1;
	}


	@Override
	public MemberVO read_member(String userid) {
		log.info("read User informations by ......" + userid);

		return mapper.read_member(userid);
	}

	@Override
	public boolean member_modify(MemberVO userid) {
		log.info("modify......" + userid);

		return mapper.member_modify(userid) == 1;
	}


}
