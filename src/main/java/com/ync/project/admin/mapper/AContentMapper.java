package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.ContentVO;

public interface AContentMapper {

	public ContentVO read(String userid);					//컨텐츠 상세 정보
	
	public List<ContentVO> getList();						//컨텐츠 목록
	
	public List<ContentVO> getListWithPaging(Criteria cri);	//컨텐츠 페이징

	public int delete(String userid);						//컨텐츠 삭제

	public int update(ContentVO ContentVO); 				//컨텐츠정보 수정

	public int getTotalCount(Criteria cri);					//컨텐츠 전체 수
	
	public void insert(ContentVO ContentVO); 				//컨텐츠추가
	
	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
