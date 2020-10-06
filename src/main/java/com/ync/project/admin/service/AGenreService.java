package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.GenreVO;
import com.ync.project.domain.Criteria;

public interface AGenreService {
	// 장르 등록
	public void register(GenreVO genre_id);
	
	// 장르 상세보기
	public GenreVO get(String genre_id);
	
	// 장르 수정
	public boolean modify(GenreVO genre_id);
	
	// 장르 삭제
	public boolean remove(String genre_id);
	
	// 전체 장르 목록
	public List<GenreVO> getList();
	
	// 장르 목록 페이징 
	public List<GenreVO> getListWithPaging(Criteria cri);

	// 장르 전체 수
	public int getTotal(Criteria cri);

}
