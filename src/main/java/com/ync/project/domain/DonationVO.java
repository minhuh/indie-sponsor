package com.ync.project.domain;

import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: DonationVO.java
  * @Date		: 2019. 10. 26. 
  * @Author		: 석준영
  * @프로그램 설명 : 후원 테이블 변수저장
  */
@Data
public class DonationVO {
	private Date don_reg_date;	//후원일자
	private String userid;		//회원이메일우렬이왓다
	private Long donation;		//후원금액
	private Long content_id;	//컨텐츠ID
	private String title; 		//게임제목

}
