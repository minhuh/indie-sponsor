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
public interface HomeService {
		// 글 등록
		public void register(ContentVO content);
		
		// 글 상세보기
		public ContentVO latest_first();
		
		// 글 상세보기
		public ContentVO invite_first();
		
		// 글 상세보기
		public ContentVO recommend_first();
		
		// 글 수정
		public boolean modify(ContentVO content);
		
		// 글 삭제
		public boolean remove(Long bno);
		
		// 전체 글 목록
		public List<ContentVO> latest_other();
		
		// 전체 글 목록
		public List<ContentVO> invite_other();
		
		// 전체 글 목록
		public List<ContentVO> recommend_other();
				
		// 글 목록 페이징 
		public List<ContentVO> getListWithPaging(Criteria cri);

		//추가
		 public int getTotal(Criteria cri);
}
