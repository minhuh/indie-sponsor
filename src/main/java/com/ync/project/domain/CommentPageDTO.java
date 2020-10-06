package com.ync.project.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

 /**
  * @FileName	: CommentPageDTO.java
  * @Date		: 2019. 12. 4. 
  * @Author		: 허 민
  * @프로그램 설명 : 댓글페이지 도메인
  */
@Data
@AllArgsConstructor
@Getter
public class CommentPageDTO {
	
	private int replyCnt;
	private List<CommentVO> list;
}
