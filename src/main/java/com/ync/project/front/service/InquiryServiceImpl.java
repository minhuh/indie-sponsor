package com.ync.project.front.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ync.project.domain.InquiryVO;
import com.ync.project.front.mapper.InquiryMapper;

import lombok.extern.log4j.Log4j;

	@Service
	@Log4j
	//@AllArgsConstructor
	public class InquiryServiceImpl implements InquiryService{
		
		@Autowired
		private InquiryMapper mapper;
		
		@Transactional
		@Override
		public int register(InquiryVO vo) {
			
			log.info("register......" + vo);
			
			return mapper.insert(vo);
		}
		
		@Override
		public InquiryVO get(Long inquiry_id) {
			
			log.info("get...." + inquiry_id);
			
			return mapper.read(inquiry_id);
		}
		
		@Override
		public int modify(InquiryVO vo) {
			
			log.info("modify......" + vo);
			
			return mapper.update(vo);
			
		}
		
		@Transactional
		@Override
		public int remove(Long comment_id) {
			
			log.info("remove...." + comment_id);
			
			return mapper.delete(comment_id);
		}

		@Override
		public int insert(InquiryVO vo) {
			// TODO Auto-generated method stub
			return mapper.insert(vo);
		}
		
	}
