package com.ync.project.domain;

import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: ChangelogVO.java
  * @Date		: 2019. 10. 26. 
  * @Author		: 석준영
  * @프로그램 설명 : 변경내역 테이블 변수 저장
  */
@Data
public class ChangelogVO {
	private Date reg_date;		//등록일자
	private String title;		//게임타이틀 이름
	private String version;		//버젼
	private String game_launch;	//게임실행|URL
	private String media1;		//미디어1
	private String media2;		//미디어2
	private String media3;		//미디어3
	private String media4;		//미디어4
	private String cmedia1;		//패치노트 미디어1
	private String cmedia2;		//패치노트 미디어2
	private String cmedia3;		//패치노트 미디어3
	private String cmedia4;		//패치노트 미디어4
	private String patch_log;	//패치내역
	private Long content_id;	//컨텐츠ID
	private Long change_log_id;	//변경내역ID
	private String tag;			//게임 태그
	private String content;		//댓글내용
	private String userid;		//댓글 작성자
}
