package com.ync.project.front.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;

public interface MemberMapper {

	public MemberVO read(String userid);					//멤버 상세 정보
	
	public MemberVO read_member(String userid);
	
	public List<MemberVO> getList();						//멤버 목록
	
	public List<MemberVO> getListWithPaging(Criteria cri);	//멤버 페이징

	public int delete(String userid);						//회원 탈퇴/삭제

	public int update(MemberVO member); 					//회원정보 수정

	public int getTotalCount(Criteria cri);					//멤버 전체 수
	
	public void insert(MemberVO member); 					//회원추가

	public int request_creator(MemberVO r_creator); 		//창작자 신청
	
	public MemberVO checkUser(MemberVO member);					//회원 정보 확인

	public int member_modify(MemberVO userid); 		
	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
