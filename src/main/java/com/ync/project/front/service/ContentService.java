package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.ContentVO;

import com.ync.project.domain.Criteria;

 /**
  * @FileName	: ContentService.java
  * @Date		: 2019. 10. 29. 
  * @Author		: 석준영
  * @프로그램 설명 : 창작자 컨텐츠 서비스 파일 생성
  */
public interface ContentService {
	// 글 등록
		public void register(ContentVO content);
		
		// 글 상세보기
		public ContentVO read(String content_id);
		
		// 글 수정
		public boolean modify(ContentVO content);
		
		// 글 삭제
		public boolean remove(String content_id);
		
		// 전체 글 목록
		public List<ContentVO> getList();
		
		
		// 글 목록 페이징 
		public List<ContentVO> getListWithPaging(Criteria cri);

		//추가
		 public int getTotal(Criteria cri);
		 
		public int readHit(String content_id);
}
