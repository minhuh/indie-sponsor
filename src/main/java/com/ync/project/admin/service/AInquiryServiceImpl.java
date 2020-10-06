package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.AInquiryMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquiryVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AInquiryServiceImpl implements AInquiryService {

	@Autowired // @Inject
	private AInquiryMapper mapper;
	
	// 문의 등록
	public void register(InquiryVO InquiryVO) {

		log.info("register......" + InquiryVO);

		mapper.insert(InquiryVO);
	}
	
	// 문의 댓글 등록
	public void commentRegister(InquiryVO InquiryVO) {

		log.info("register......" + InquiryVO);

		mapper.insertComment(InquiryVO);
	}
	
	// 문의 상세보기
	public InquiryVO get(String inquiry_id) {
		
		log.info("get......" + inquiry_id);
		
		return mapper.read(inquiry_id);
	}
	
	// 문의 수정
	public boolean modify(InquiryVO inquiry_id) {
		
		log.info("modify......" + inquiry_id);
		
		return mapper.update(inquiry_id) == 1;
	}
	
	// 문의 삭제
	public boolean remove(String inquiry_id) {

		log.info("remove......" + inquiry_id);
		
		return mapper.delete(inquiry_id) == 1;
	}
	
	// 전체 문의 목록
	public List<InquiryVO> getList() {

		log.info("getList......");
		return mapper.getList();
	}
	
	// 문의 목록 페이징 
	public List<InquiryVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria : " + cri);
		return mapper.getListWithPaging(cri);
	}

	// 문의 전체 수
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

}
