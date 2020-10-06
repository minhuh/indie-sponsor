package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;
import com.ync.project.admin.mapper.AEventMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AEventServiceImpl implements AEventService{
	@Autowired // @Inject
	private AEventMapper mapper;
	
	@Override
	public void register(EventVO event) {

		log.info("register......" + event);

		mapper.insert(event);
	}



	 @Override
	 public List<EventVO> getList() {
	
		 log.info("getList..........");
		
		 return mapper.getList();
	 }

	@Override
	public List<EventVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {

		log.info("get total count");
		return mapper.getTotalCount(cri);
	}



}
