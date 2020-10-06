package com.ync.project.domain;

import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: InquiryVO.java
  * @Date		: 2019. 10. 26. 
  * @Author		: 석준영
  * @프로그램 설명 : 문의 테이블 변수 생성
  */
@Data
public class InquiryVO {
	private Long inquiry_id;		//문의ID
	private String title;			//문의 제목
	private Date reg_date;			//문의 등록일자
	private Date comment_date;		//문의 답변일자
	private String userid;	//회원 이메일
	private String content;			//문의 내용
	private String comments;		//문의 답변
}
