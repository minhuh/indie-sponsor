package com.ync.project.front.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.DonationVO;

public interface DonationMapper {

	public DonationVO read(String userid);					//후원 상세 정보
	
	public List<DonationVO> getList();						//후원 목록
	
	public List<DonationVO> getListWithPaging(Criteria cri);	//후원 페이징

	public int delete(String userid);							//후원 삭제

	public int update(DonationVO donation); 					//후원정보 수정

	public int getTotalCount(Criteria cri);					//후원 전체 수
	
	public void insert(DonationVO donation); 				//후원추가
	
	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
