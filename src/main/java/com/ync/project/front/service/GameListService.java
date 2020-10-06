package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.ContentVO;

import com.ync.project.domain.Criteria;

/**
 * @FileName : GameListService.java
 * @Date : 2019. 11. 25.
 * @Author : 허 민
 * @프로그램 설명 : 게임 리스트 서비스 파일 생성
 */
public interface GameListService {
	// 글 등록
	public void register(ContentVO content);

	// 글 상세보기
	public ContentVO get();

	// 글 상세보기
	public ContentVO get1();

	// 글 상세보기
	public ContentVO get2();

	// 글 수정
	public boolean modify(ContentVO content);

	// 글 삭제
	public boolean remove(Long bno);
	
	// 전체 글 목록
	public List<ContentVO> getList();

	// 어드벤쳐 장르 목록
	public List<ContentVO> getListWithPageByAdventure(Criteria cri);
	
	// 액션 장르 목록
	public List<ContentVO> Act(Criteria cri);

	// 로그라이크 장르 목록
	public List<ContentVO> getListWithPageByRoguelike(Criteria cri);

	// 퍼즐 장르 목록
	public List<ContentVO> getListWithPageByPuzzle(Criteria cri);

	// 리듬 장르 목록
	public List<ContentVO> getListWithPageByRhythm(Criteria cri);

	// 호러 장르 목록
	public List<ContentVO> getListWithPageByHorror(Criteria cri);

	// 시뮬레이션 장르 목록
	public List<ContentVO> getListWithPageBySimulation(Criteria cri);

	// 캐쥬얼 장르 목록
	public List<ContentVO> getListWithPageByCasual(Criteria cri);

	// 전략 장르 목록
	public List<ContentVO> getListWithPageByStrategy(Criteria cri);

	// 글 목록 페이징
	public List<ContentVO> getListWithPaging(Criteria cri);

	// 추가
	public int getTotal(Criteria cri);

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
