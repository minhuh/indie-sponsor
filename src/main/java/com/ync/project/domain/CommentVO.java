package com.ync.project.domain;

import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: CommentVO.java
  * @Date		: 2019. 10. 26. 
  * @Author		: 석준영
  * @프로그램 설명 :	댓글 테이블 변수 저장
  */
@Data
public class CommentVO {
	private Date reg_date;		//등록일자
	private String content;		//내용
	private String userid;		//회원이메일
	
	private Long content_id;	//컨텐트ID
	private Long comment_id;	//댓글ID
}
