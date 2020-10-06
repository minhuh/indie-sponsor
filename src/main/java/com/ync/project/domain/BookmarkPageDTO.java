package com.ync.project.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

 /**
  * @FileName	: BookmarkPageDTO.java
  * @Date		: 2019. 12. 4. 
  * @Author		: 허 민
  * @프로그램 설명 : 북마크 페이지 도메인
  */
@Data
@AllArgsConstructor
@Getter
public class BookmarkPageDTO {
	private List<BookmarkVO> list;
}
