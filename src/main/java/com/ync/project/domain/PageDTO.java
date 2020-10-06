package com.ync.project.domain;

import lombok.Getter;
import lombok.ToString;

 /**
  * @FileName	: PageDTO.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 심재민
  * @프로그램 설명 : 페이지 이동 변수 저장
  */
@Getter
@ToString
public class PageDTO {

  private int startPage;
  private int endPage;
  private boolean prev, next;

  private int total;
  private Criteria cri;

  public PageDTO(Criteria cri, int total) {

    this.cri = cri;
    this.total = total;
    
    // 예를 들어 total(전체 게시글)이 450개이고 amount(한 화면에 보여질 글 갯수)가 10이라면
    // 현재 pageNum이 12라면(현재 12페이지라면)
    // 현재 페이지 번호를 가지고 endPage 계산 (페이지 네비게이션에서 나올 끝 번호)
    // ( (12/10.0) = 2 ) * 10 = 20 (endPage=>페이지 네비게이션이 11, 12, 13,...20까지 나와야 된다)
    this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;

    // 시작 번호 (페이지 네비게이션에서 나올 시작 번호)
    // 20 - 9 = 11 따라서 페이지 네비게이션이 11 부터 시작
    this.startPage = this.endPage - 9;

    // 실제 페이지 네비게이션 끝 번호
    // (450* 1.0 = 450.0) / 10 = 45
    // 따라서 페이지 네비게이션은 다음과 같아진다.
    // 1,2,3..10
    // 11,12,13..20
    // 21,22,23..30
    // 31,32,33..40
    // 41,42,43, 44, 45 (45가 마지막 번호이다.)
    int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));

    // endPage를 다시 계산
    // 45 < 20 = false
    // 만약 endPage가 50이되면 45 < 50 = true 이기 때문에 endPage = 45 가 된다.
    // 41,42,43, 44, 45 (45가 마지막 번호이다.)
    if (realEnd < this.endPage) {
      this.endPage = realEnd;
    }
    
    // 이전 버튼
    // 위의 예에서는 true
    // << 11, 12, 13... 20 >> 이렇게 이전 다음 버튼 모두 나온다.
    this.prev = this.startPage > 1;
    
    // 다음 버튼
    // 위의 예에서는 true
    // << 11, 12, 13... 20 >> 이렇게 이전 다음 버튼 모두 나온다.
    // 만약 endPage가 50이되면 50 < 45 = false 이기에 다음 버튼이 나오지 않아야 된다.
    this.next = this.endPage < realEnd;
  }
  
}

