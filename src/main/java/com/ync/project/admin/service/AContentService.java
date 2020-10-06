package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.ContentVO;

public interface AContentService {
	// 컨텐츠 등록
	public void register(ContentVO content_id);
	
	// 컨텐츠 상세보기
	public ContentVO get(String content_id);
	
	// 컨텐츠 수정
	public boolean modify(ContentVO content_id);
	
	// 컨텐츠 삭제
	public boolean remove(String content_id);
	
	// 전체 컨텐츠 목록
	public List<ContentVO> getList();
	
	// 컨텐츠 목록 페이징 
	public List<ContentVO> getListWithPaging(Criteria cri);

	// 컨텐츠 전체 수
	public int getTotal(Criteria cri);
	
	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
