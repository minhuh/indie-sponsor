package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.BookmarkVO;
import com.ync.project.domain.ContentVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.Criteria2;
import com.ync.project.domain.FundVO;


 /**
  * @FileName	: FundingService.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 허 민
  * @프로그램 설명 : 펀딩 리스트 서비스 파일 생성
  */
public interface FundingService {
	// 글 등록
	public void insert(FundVO fund);

	// 글 상세보기
	public ContentVO get();

	// 글 상세보기
	public ContentVO get1();

	// 글 상세보기
	public ContentVO get2();

	// 글 수정
	public boolean modify(ContentVO content) throws Exception;
	
	//글 불러오기
	public ContentVO read(Long content_id); //게시글 내용
	

	// 글 삭제
	public boolean remove(Long bno);
	
	// 전체 글 목록
	public List<ContentVO> getList();
	
	public List<ContentVO> mpgetList(Criteria cri); //후원받은 게시글 목록
	
	public List<ContentVO> getFundNow(); //게시글 목록

	// 글 목록 페이징
	public List<ContentVO> getListWithPaging();
	
	//종료 펀딩
	public List<ContentVO> getListEndFund(); // 종료 펀딩

	// 추가
	public int getTotal(Criteria2 cri2);
	
	public ContentVO read2(Long content_id); //게시글 불러오기
	
}
