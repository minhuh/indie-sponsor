package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.GDonationVO;
import com.ync.project.domain.DonationVO;

public interface ADonationService {
	// 후원 등록
	public void register(DonationVO donation);
	
	// 후원 상세보기
	public DonationVO get(String userid);
	
	// 후원 수정
	public boolean modify(DonationVO donation);
	
	// 후원 삭제
	public boolean remove(String userid, String content_id);
	
	// 전체 후원 목록
	public List<DonationVO> getList();
	
	// 후원 목록 페이징 
	public List<DonationVO> getListWithPaging(Criteria cri);

	// 후원 전체 수
	public int getTotal(Criteria cri);
	
	// 각 회원의 후원 합산정보를 얻기 위함
	public List<GDonationVO> getGetDonation(Criteria cri);
	public List<GDonationVO> getGiveDonation(Criteria cri);

	public int getTotalDonation();				//총 후원 금액 리턴
	
	public int creatersGetDonation();			//모든 창작자들이 받은 후원 금액
	
	public List<DonationVO> getListWithPagingAndContent(Criteria cri); //조인한 리스트

	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
