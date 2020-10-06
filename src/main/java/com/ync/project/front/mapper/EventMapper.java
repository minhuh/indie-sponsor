package com.ync.project.front.mapper;

import java.util.List;


import com.ync.project.domain.EventVO;

/**
  * @FileName	: EventMapper.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 김정현
  * @프로그램 설명 : 이벤트 Mapper Interface
  */
public interface EventMapper {
	
	public List<EventVO> getList(); //이벤트 목록 불러오기
	
	public EventVO read(Long event_id); //이벤트 상세보기
	
	public int delete(Long event_id); //이벤트 삭제하기
}
