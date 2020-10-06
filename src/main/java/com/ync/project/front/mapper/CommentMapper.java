package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.ync.project.domain.CommentVO;
import com.ync.project.domain.Criteria;

 /**
  * @FileName	: CommentMapper.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 허 민
  * @프로그램 설명 : 댓글 맵퍼
  */
public interface CommentMapper {
	
	public int insert(CommentVO vo);
	
	public CommentVO read(Long content_id);
	
	public int delete(Long comment_id);
	
	public int update(CommentVO content);
	
	public List<CommentVO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("content_id") Long content_id);
	
	public int getCountByBno(Long content_id);
}

