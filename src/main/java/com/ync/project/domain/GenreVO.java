package com.ync.project.domain;

import lombok.Data;

 /**
  * @FileName	: GenreVO.java
  * @Date		: 2019. 10. 26. 
  * @Author		: 석준영
  * @프로그램 설명 : 장르 테이블 변수 생성
  */
@Data
public class GenreVO {
	private Long genre_id;		//장르ID
	private String genre_name;	//장르명
}
