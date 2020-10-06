package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquiryVO;

public interface AInquiryMapper {

	public InquiryVO read(String inquiry_id);				//문의 상세 정보
	
	public List<InquiryVO> getList();						//문의 목록
	
	public List<InquiryVO> getListWithPaging(Criteria cri);	//문의 페이징

	public int delete(String inquiry_id);					//문의 삭제

	public int update(InquiryVO inquiry_id); 				//문의 정보 수정

	public int getTotalCount(Criteria cri);					//문의 전체 수
	
	public void insert(InquiryVO InquiryVO); 				//문의 추가
	
	public void insertComment(InquiryVO InquiryVO); 		//문의 댓글 추가
}
