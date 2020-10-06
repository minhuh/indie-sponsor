package com.ync.project.domain;

import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: FundVO.java
  * @Date		: 2019. 12. 10. 
  * @Author		: 허 민
  * @프로그램 설명 : 펀딩 테이블 저장
  */
@Data
public class FundVO {

	private Long content_id;		// 게시글 아이디(번호)
	private Date don_reg_date;	// 펀딩일자
	private String userid;			// 펀딩한 유저
	private Long donation;			// 펀딩한 금액
	private Long paid;
	private Long done;
}
