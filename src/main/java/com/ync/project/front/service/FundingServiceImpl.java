package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.ContentVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.Criteria2;
import com.ync.project.domain.FundVO;
import com.ync.project.front.mapper.FundingMapper;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: FundingServiceImpl.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 허 민
  * @프로그램 설명 : 펀딩 리스트 서비스 impl 파일 생성
  */
@Log4j
@Service
//@AllArgsConstructor
public class FundingServiceImpl implements FundingService{
	
	@Autowired
	private FundingMapper mapper;
	
	@Override
	public void insert(FundVO fund) {
		// TODO Auto-generated method stub
		
		log.info("register........" + fund);
		
		mapper.insert(fund);
	}


	@Override
	public boolean modify (ContentVO content) throws Exception{
		// TODO Auto-generated method stub
		log.info("modify........" + content);
		
		return mapper.update(content) == 1;
	}

	@Override
	public boolean remove(Long content_id) {
		// TODO Auto-generated method stub
	                   	log.info("remove........" + content_id);
		
		return mapper.delete(content_id) == 1;
	}
	
	@Override
	public List<ContentVO> getList() {
		// TODO Auto-generated method stub
		
		log.info("getList.......");
		return mapper.getList();
	}
	
	@Override
	public List<ContentVO> mpgetList(Criteria cri) {
		// 후원받은 게임 게시물 목록
		return mapper.mpgetList(cri);
	}
 
	@Override
	public List<ContentVO> getListWithPaging() {
		// TODO Auto-generated method stub
		
		log.info("get List with criteria ");
		
		return mapper.getListWithPaging();
	}
	
	//종료 펀딩
		public List<ContentVO> getListEndFund() {
			// 종료 펀딩
			log.info("get List with criteria ");
			
			return mapper.getListEndFund();
			
		}

	   @Override
	   public int getTotal(Criteria2 cri2) {
	      
	      log.info("get total count");
	      
	      return mapper.getTotalCount(cri2);
	   }


	@Override
	public List<ContentVO> getFundNow() {
		// TODO Auto-generated method stub
		log.info("getFundingNow.......");
		return mapper.getFundNow();
	}


	@Override
	public ContentVO get() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public ContentVO get1() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public ContentVO get2() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public ContentVO read(Long content_id) {
		// TODO Auto-generated method stub
		return mapper.read(content_id);
	}
	
	@Override
	public ContentVO read2(Long content_id) {
		// TODO Auto-generated method stub
		return mapper.read2(content_id);
	}


	
	
}
