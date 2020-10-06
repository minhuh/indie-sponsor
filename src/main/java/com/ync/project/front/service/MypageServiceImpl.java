package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ync.project.domain.BookmarkPageDTO;
import com.ync.project.domain.BookmarkVO;
import com.ync.project.domain.ContentVO;
import com.ync.project.domain.Criteria;
import com.ync.project.front.mapper.MypageMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

	@Service
	@Log4j
	//@AllArgsConstructor
	public class MypageServiceImpl implements MypageService{
		
		@Setter(onMethod_ = @Autowired)
		private MypageMapper mapper;

		@Override
		public List<ContentVO> getList(Criteria cri) {
			
			return mapper.getList(cri);
		}

		@Override
		public int getTotal(Criteria cri) {
			log.info("get total count");
		      
		    return mapper.getTotalCount(cri);
		}
		
		@Override
		public List<ContentVO> getFundList(Criteria cri) {
			
			return mapper.getFundList(cri);
		}

		@Override
		public int getUploadTotal(Criteria cri) {
			// TODO Auto-generated method stub
			return mapper.getUploadTotalCount(cri);
		}

		@Override
		public int getFundTotal(Criteria cri) {
			// TODO Auto-generated method stub
			return mapper.getFundTotalCount(cri);
		}
		

		
	}
