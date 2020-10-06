package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.ChangelogVO;
import com.ync.project.domain.Criteria;

 /**
  * @FileName	: ChangelogMapper.java
  * @Date		: 2019. 11. 25. 
  * @Author		: 석준영
  * @프로그램 설명 : 게임 패치노트 Mapper
  */
public interface ChangelogMapper {
	public List<ChangelogVO> getList(); //게시글 목록
	
	public void insert(ChangelogVO changelog); //게시글 추가
	
	public List<ChangelogVO> getListWithPaging(Criteria cri); //게시글 목록, 페이징
	
	public Integer insertSelectKey(ChangelogVO changelog); //게시글 번호
	
	public ChangelogVO read(Long content_id); //게시글 내용
	
	public int getTotalCount(Criteria cri); //게시글 전체 수

	public ChangelogVO readComment(Long change_log_id);			//댓글 가져오기

	public List<ChangelogVO> readpatchnoteList(Long change_log_id);	//보고있는 패치노트 게임의 다른 패치노트

	public List<ChangelogVO> readother_patch(Long change_log_id);	//보고있는 패치노트 게임이 아닌 다른 게임의 패치노트
	
	public List<ChangelogVO> getMygame_list(String userid);			//나의 게임 리스트
	
}
