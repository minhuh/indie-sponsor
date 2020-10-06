package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.BookmarkVO;
import com.ync.project.domain.Criteria;

 /**
  * @FileName	: BookmarkMapper.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 허 민
  * @프로그램 설명 : 북마크 맵퍼 인터페이스
  */
public interface BookmarkMapper {
	public List<BookmarkVO> getList(); //북마크 목록 불러오기
	
	public void insert(BookmarkVO book); //북마크 추가하기
	
	public boolean delete(Long bookmark); //북마크 해제하기
	
	public List<BookmarkVO> getList(
			@Param("cri") Criteria cri,
			@Param("userid") String userid);
	
	public List<BookmarkVO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("userid") String userid);
	
	
	public int getTotalCount(Criteria cri);
	
	public void bmkInsert(BookmarkVO bmk); //북마크 추가
	
	public int bmkDelete(Long content_id); //북마크 삭제
	
	public List<BookmarkVO> bmkRead(Long content_id);
}
