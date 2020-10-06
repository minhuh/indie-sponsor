package com.ync.project.domain;

import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: ContentVO.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 심재민
  * @프로그램 설명 : 창작자 컨텐츠 테이블 저장
  */
@Data
public class ContentVO {

	private Long content_id;		//
	
	private String age_rate;		//
	private String title;			//
	private String content_intro;	//
	private String userid;			//
	private Long hit;				//
	private Long like_cnt;			//
	
	private Date reg_date;			//
	private Date highlight;			//

	private String platform;		//
	private String tag;				//
	private String languages;		//
	private Long genre_id;			//

	private Date don_reg;			//
	private Long don_attainment;	//
	
	private String game_launch;		//
	private String media1;			//
	private String media2;			//
	private String media3;			//
	private String media4;			//
	private Long donation;
	private Long money_temp;
	
	private String creater_name; // 창작자 이름
	private String genre_name; //장르 이름
	
	
}
