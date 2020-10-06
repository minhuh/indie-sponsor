package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.ContentVO;
import com.ync.project.domain.Criteria;

/**
  * @FileName	: BoardMapper.java
  * @Date		: 2019. 10. 26. 
  * @Author		: 김정현
  * @프로그램 설명 :  게시판 Mapper interface
  */
public interface ContentMapper {
		public List<ContentVO> getList(); //게시글 목록

		public List<ContentVO> getListWithPaging(Criteria cri); //게시글 페이징

		public void insert(ContentVO content); //게시글 추가

		public Integer insertSelectKey(ContentVO content); //게시글 번호

		public ContentVO read(String content_id); //게시글 내용

		public int delete(String content_id); //게시글 삭제

		public int update(ContentVO content); //게시글 수정

		public int getTotalCount(Criteria cri); //게시글 전체 수
		
		public int readHit(String content_id);

		// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
		public void updateReplyCnt(@Param("content_id") Long content_id, @Param("amount") int amount);


	}

