package com.ync.project.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

 /**
  * @FileName	: Criteria2.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 허 민
  * @프로그램 설명 : 펀딩 페이지 기준 변수 저장
  */
@Getter
@Setter
@ToString
public class Criteria2 {
	
	private int pageNum;
	private int amount;
	
	private String type;
	private String keyword;
	
	public Criteria2() {
		this(1,6);
	}
	
	public Criteria2(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {
		
		return type == null ? new String[] {} : type.split("");
	}
	
public String getListLink() {
		
		
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
			.queryParam("pageNum", this.pageNum)
			.queryParam("amount", this.getAmount())
			.queryParam("type", this.getType())
			.queryParam("pageNum", this.getKeyword());
			
		return builder.toUriString();
	}
}
