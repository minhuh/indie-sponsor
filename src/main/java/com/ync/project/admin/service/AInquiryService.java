package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquiryVO;

public interface AInquiryService {
	// 문의 등록
	public void register(InquiryVO inquiryVO);
	
	// 문의 댓글 등록
	public void commentRegister(InquiryVO inquiry_id);
	
	// 문의 상세보기
	public InquiryVO get(String inquiry_id);
	
	// 문의 수정
	public boolean modify(InquiryVO inquiry_id);
	
	// 문의 삭제
	public boolean remove(String inquiry_id);
	
	// 전체 문의 목록
	public List<InquiryVO> getList();
	
	// 장르 문의 페이징 
	public List<InquiryVO> getListWithPaging(Criteria cri);

	// 장르 문의 수
	public int getTotal(Criteria cri);

}
