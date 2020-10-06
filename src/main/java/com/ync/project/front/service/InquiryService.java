package com.ync.project.front.service;

import com.ync.project.domain.InquiryVO;

public interface InquiryService {
		
		public int register(InquiryVO vo);
		
		public InquiryVO get(Long inquiry_id);
		
		public int modify(InquiryVO vo);
		
		public int remove(Long inquiry_id);

		public int insert(InquiryVO vo);
}
