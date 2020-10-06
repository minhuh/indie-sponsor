package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.GenreVO;

public interface AGenreMapper {

	public GenreVO read(String genre_id);					//장르 상세 정보
	
	public List<GenreVO> getList();						//장르 목록
	
	public List<GenreVO> getListWithPaging(Criteria cri);	//장르 페이징

	public int delete(String genre_id);						//장르 삭제

	public int update(GenreVO GenreVO); 				//장르정보 수정

	public int getTotalCount(Criteria cri);					//장르 전체 수
	
	public void insert(GenreVO GenreVO); 				//장르추가
	
	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
