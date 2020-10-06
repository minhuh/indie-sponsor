package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.GDonationVO;
import com.ync.project.domain.MemberVO;

public interface AMemberService {
	// 멤버 등록
	public void register(MemberVO member);
	
	//관리자 등록
	public void admin_register(MemberVO admin_member);
	
	// 멤버 상세보기
	public MemberVO get(String userid);
	
	// 멤버 수정
	public boolean modify(MemberVO member);
	
	public boolean creater_modify(String userid);
	
	public boolean creater_status(String userid);
	
	public boolean creater_accept(String userid);
	
	public boolean creater_cancle(String userid);
	
	// 멤버 삭제
	public boolean remove(String userid);
	
	// 전체 멤버 목록
	public List<MemberVO> getList();
	
	//관리자 멤버 목록
	public List<MemberVO> getAdminList();  //관리자 계정 목록
	
	public List<MemberVO> getAdminListWithPaging(Criteria cri);	//관리자 계정 멤버 페이징
	
	// 멤버 목록 페이징 
	public List<MemberVO> getListWithPaging(Criteria cri);
	
	public List<MemberVO> getListWithPagingWithCreater(Criteria cri);
	
	public List<MemberVO> getListWithPagingWithCreater_request(Criteria cri);

	// 멤버 전체 수
	public int getTotal(Criteria cri);
	

	public int getTotalCreater(Criteria cri);				//창작자수 리턴
	
	// 각 회원의 후원 합산정보를 얻기 위함
	public List<GDonationVO> getGetDonation(Criteria cri);
	public List<GDonationVO> getGiveDonation(Criteria cri);

	public int getActiveUser(Criteria cri);					//현재 활동중인 유저 수 리턴

	public GDonationVO getGetDonationToUser(String userid);			// 개인의 후원받은 금액
	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);

	
	public int revoke(String userid);			//권한 해제 

	

	

	
}
