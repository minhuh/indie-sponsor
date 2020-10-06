package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.ContentVO;
import com.ync.project.domain.Criteria;

/**
  * @FileName	: GameListMapper.java
  * @Date		: 2019. 11. 25. 
  * @Author		: 허 민
  * @프로그램 설명 : 게임 리스트 Mapper interface
  */
public interface GameListMapper {
		public List<ContentVO> getList(); 									// 게시글 목록
	
		public List<ContentVO> getListWithPageByAdventure(Criteria cri);	// 어드벤쳐 장르 목록
		
		public List<ContentVO> getListWithPageByRoguelike(Criteria cri);	// 로그라이크 장르 목록
		
		public List<ContentVO> getListWithPageByPuzzle(Criteria cri); 		// 퍼즐 장르 목록
		
		public List<ContentVO> getListWithPageByRhythm(Criteria cri); 		// 리듬 장르 목록
		
		public List<ContentVO> getListWithPageByHorror(Criteria cri); 		// 호러 장르 목록
		
		public List<ContentVO> getListWithPageBySimulation(Criteria cri); 	// 시뮬레이션 장르 목록
		
		public List<ContentVO> getListWithPageByCasual(Criteria cri); 		// 캐쥬얼 장르 목록
		
		public List<ContentVO> getListWithPageByStrategy(Criteria cri); 	// 전략 장르 목록

		public List<ContentVO> getListWithPaging(Criteria cri); 			//게시글 페이징
		
		public List<ContentVO> Act(Criteria cri); 			//게시글 페이징

		public void insert(ContentVO content); //게시글 추가

		public Integer insertSelectKey(ContentVO content); //게시글 번호

		public ContentVO read(); //게시글 내용
		
		public ContentVO read1(); //게시글 내용
		
		public ContentVO read2(); //게시글 내용
		
		public int delete(Long content_id); //게시글 삭제

		public int update(ContentVO content); //게시글 수정

		public int getTotalCount(Criteria cri); //게시글 전체 수

		// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
		public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);

		public int getactTotal(Criteria cri);
		public int getadvTotal(Criteria cri);
		public int getrogTotal(Criteria cri);
		public int getpuzTotal(Criteria cri);
		public int getrhyTotal(Criteria cri);
		public int gethorTotal(Criteria cri);
		public int getsimTotal(Criteria cri);
		public int getcasTotal(Criteria cri);
		public int getstrTotal(Criteria cri);
	}

