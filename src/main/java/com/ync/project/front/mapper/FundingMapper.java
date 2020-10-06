package com.ync.project.front.mapper;

import java.util.List;

import com.ync.project.domain.BookmarkVO;
import com.ync.project.domain.ContentVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.Criteria2;
import com.ync.project.domain.FundVO;


 /**
  * @FileName	: FundingMapper.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 허 민
  * @프로그램 설명 : 펀딩 목록 페이지 Mapper interface
  */
public interface FundingMapper {
		public List<ContentVO> mpgetList(Criteria cri); //게시글 목록
	
		public List<ContentVO> getList(); //게시글 목록
	
		public List<ContentVO> getList1(); //게시글 목록
		
		public List<ContentVO> getFundNow(); //게시글 목록

		public List<ContentVO> getList2(); //게시글 목록
		
		public List<ContentVO> getList3(); //게시글 목록
		
		public List<ContentVO> getList4(); //게시글 목록
		
		public List<ContentVO> getList5(); //게시글 목록
		
		public List<ContentVO> getList6(); //게시글 목록
		
		public List<ContentVO> getList7(); //게시글 목록
		
		public List<ContentVO> getList8(); //게시글 목록
		
		public List<ContentVO> getList9(); //게시글 목록

		public List<ContentVO> getListWithPaging(); //게시글 페이징
		
		public List<ContentVO> getListEndFund(); // 종료 펀딩

		public void insert(FundVO fund); //게시글 추가

		public ContentVO read(Long content_id); //게시글 내용
		
		public ContentVO read2(Long content_id); //게시글 불러오기
		
		public int delete(Long content_id); //게시글 삭제

		public int update(ContentVO content) throws Exception; //게시글 수정

		public int getTotalCount(Criteria2 cri2); //게시글 전체 수

	}

