package com.ync.project.domain;

import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: EventVO.java
  * @Date		: 2019. 10. 26. 
  * @Author		: 석준영
  * @프로그램 설명 : 이벤트 테이블 변수 저장
  */
@Data
public class EventVO {
	private Long event_id;		//이벤트ID
	private String title;		//이벤트 제목
	private Date reg_date;		//이벤트 등록일자
	private String content;		//이벤트 내용
	private Date highlight;		//이벤트 하이라이트
	private Long hit;			//이벤트 조회수
	private String media1;		//이벤트 미디어1
	private String media2;		//이벤트 미디어2
	private String userid;		//회원 이메일
}
