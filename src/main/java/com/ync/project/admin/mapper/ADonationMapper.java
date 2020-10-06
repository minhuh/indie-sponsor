package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.DonationVO;
import com.ync.project.domain.GDonationVO;



public interface ADonationMapper {

	public DonationVO read(String userid);						//후원 상세 정보
	
	public List<DonationVO> getList();							//후원 목록
	
	public List<DonationVO> getListWithPaging(Criteria cri);	//후원 페이징

	public int delete(String userid, String Content_id);							//후원 탈퇴/삭제

	public int update(DonationVO DonationVO); 					//후원정보 수정

	public int getTotalCount(Criteria cri);						//후원 전체 수
	
	public void insert(DonationVO DonationVO); 					//후원추가

	public List<GDonationVO> getGetDonation(Criteria cri);		//후원받은 금액

	public List<GDonationVO> getGiveDonation(Criteria cri);		//후원한 금액
	

	public DonationVO read_user(String userid);					//유저 후원 상세 정보
	public DonationVO read_content(String content_id);			//컨텐츠 후원 상세 정보

	public int getTotalDonation();								//후원한 총 금액
	
	public int creatersGetDonation();
	
	public List<DonationVO> getListWithPagingAndContent(Criteria cri); //컨텐츠id 와 조인 한 리스트
	

	
	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
