package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;

 /**
  * @FileName	: NoticeMapper.java
  * @Date		: 2019. 10. 29. 
  * @Author		: 석준영
  * @프로그램 설명 : 공지사항 mapper 파일 생성
  */
public interface NoticeMapper {
	public List<NoticeVO> getList(); //게시글 목록

	public List<NoticeVO> getListWithPaging(Criteria cri); //게시글 페이징\
	
	public void insert(NoticeVO notice);						// 공지사항글 삽입
	
	public Integer insertSelectKey(NoticeVO notice); //게시글 번호

	public NoticeVO read(Long notice_num); //게시글 내용
	
	public int getTotalCount(Criteria cri); //게시글 전체 수

	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
	public void updateReplyCnt(@Param("bno") Long notice_id, @Param("amount") int amount);
}
