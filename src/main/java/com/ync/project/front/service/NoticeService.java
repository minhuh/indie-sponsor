package com.ync.project.front.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.NoticeVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;

 /**
  * @FileName	: NoticeService.java
  * @Date		: 2019. 10. 29. 
  * @Author		: 석준영
  * @프로그램 설명 : 공지사항 서비스 인터페이스 생성
  */
public interface NoticeService {
	// 글 등록
	public void register(NoticeVO content);
	
	// 전체 글 목록
	public List<NoticeVO> getList();
	
	// 글 목록 페이징 
	public List<NoticeVO> getListWithPaging(Criteria cri);

	//추가
	 public int getTotal(Criteria cri);
}
