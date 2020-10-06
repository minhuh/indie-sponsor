package com.ync.project.front.mapper;

import java.util.List;

import com.ync.project.domain.InquiryVO;


/**
  * @FileName	: InquiryMapper.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 김정현
  * @프로그램 설명 : 고객센터 정보 관리
  */
public interface InquiryMapper {
	
	public List<InquiryVO> getList(); //문의 목록 불러오기
	
	public InquiryVO read(Long inquiry_id); //문의내용 상세보기
	
	public int insert(InquiryVO vo); //문의목록 추가
	
	public int delete(Long inquiry_id); //문의 삭제

	public int update(InquiryVO vo);
}
