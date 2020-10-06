package com.ync.project.front.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.ync.project.domain.CommentVO;
import com.ync.project.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: CommentMapperTests.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 허 민
  * @프로그램 설명 : 댓글매퍼테스트
  */
@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = { org.zerock.config.RootConfig.class	 
// })
@Log4j
public class CommentMapperTests {
	
	//테스트 전에 해당 번호의 게시물이 존재하는지 반드시 확인하기
	private Long[] contentArr = { 5L, 4L, 3L, 2L, 1L };
	
//	@Setter(onMethod_ = @Autowired)
	@Autowired
	private CommentMapper mapper;
	
//	@Test
//	public void testCreate() {
//		
//		IntStream.rangeClosed(1, 5).forEach(i -> {
//			
//			CommentVO vo = new CommentVO();	
//			vo.setContent_id(contentArr[i % 5]);
//			//vo.setContent_id(54L);
//			vo.setContent("댓글 테스트 중ye " + i);
//			vo.setUserid("tjrwnsdud2@naver.com");
//			mapper.insert(vo);
//			log.info(vo);
//		});
//	}
//	
//	@Test
//	public void testRead() {
//		
//		Long targetCommentId = 1L;
//		
//		CommentVO vo = mapper.read(targetCommentId);
//		
//		log.info(vo);
//		
//	}
//	
//	@Test
//	public void testDelete() {
//		
//		Long targetRno = 1L;
//		
//		mapper.delete(targetRno);
//	}
//	
//	@Test
//	public void testUpdate() {
//		
//		Long targetRno = 10L;
//		
//		ReplyVO vo = mapper.read(targetRno);
//		
//		vo.setReply("Update Reply ");
//		
//		int count = mapper.update(vo);
//		
//		log.info("UPDATE COUNT: " + count);
//	}
	
	@Test
	public void testList() {
		
		Criteria cri = new Criteria(2, 10);
		// 
		List<CommentVO> comments = mapper.getListWithPaging(cri, 5L);
		
		comments.forEach(content -> log.info(content));
	}
	
	@Test
	public void testMapper() {
		
		log.info(mapper);
	}
}

