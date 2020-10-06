package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

public interface AEventService {
	// 글 등록
	public void register(EventVO content);
	
	// 전체 글 목록
	public List<EventVO> getList();
	
	// 글 목록 페이징 
	public List<EventVO> getListWithPaging(Criteria cri);

	//추가
	public int getTotal(Criteria cri);
}
