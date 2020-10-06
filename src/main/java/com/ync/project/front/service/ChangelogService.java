package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.ChangelogVO;
import com.ync.project.domain.ContentVO;
import com.ync.project.domain.Criteria;

/**
  * @FileName	: ChangelogService.java
  * @Date		: 2019. 11. 25. 
  * @Author		: 석준영
  * @프로그램 설명 : 게임 패치노트 서비스 인터페이스 파일 
  */
public interface ChangelogService {
		// 글 등록
		public void register(ChangelogVO changelog);
			
		// 글 상세보기
		public ChangelogVO get(Long change_log_id);
			
		// 글 수정
		public boolean modify(ChangelogVO changelog);
			
		// 글 삭제
		public boolean remove(Long bno);
			
		// 전체 글 목록
		public List<ChangelogVO> getList();
			
		// 글 목록 페이징 
		public List<ChangelogVO> getListWithPaging(Criteria cri);

		//추가
		 public int getTotal(Criteria cri);

		//게임 댓글
		public ChangelogVO getchangelog_comment(Long change_log_id);
		
		//패치노트 글 가져오기
		public List<ChangelogVO> getpatch_note(Long change_log_id);
		
		//현재 게임을 제외한 패치노트 글 가져오기
		public List<ChangelogVO> getother_patch(Long change_log_id);
		
		//현재 게임을 제외한 패치노트 글 가져오기
		public List<ChangelogVO> getMygame_list(String userid);
}
