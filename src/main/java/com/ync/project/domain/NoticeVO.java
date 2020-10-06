package com.ync.project.domain;

import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: NoticeVO.java
  * @Date		: 2019. 10. 26. 
  * @Author		: 석준영
  * @프로그램 설명 : 공지사항 테이블 변수 저장
  */
@Data
public class NoticeVO {
	private Long notice_id;		//공지사항ID
	private String title;		//공지사항 제목
	private Date reg_date;		//공지사항 등록일자
	private String content;		//공지사항 내용
	private Date highlight;		//공지사항 하이라이트
	private Long hit;			//공지사항 조회수
	private String media1;		//공지사항 미디어1
	private String media2;		//공지사항 미디어2
	private String userid;		//어드민 이메일
}
