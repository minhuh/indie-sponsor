package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ync.project.domain.CommentPageDTO;
import com.ync.project.domain.CommentVO;
import com.ync.project.domain.Criteria;
import com.ync.project.front.mapper.CommentMapper;
import com.ync.project.front.mapper.ContentMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

	@Service
	@Log4j
	//@AllArgsConstructor
	public class CommentServiceImpl implements CommentService{
		
		@Setter(onMethod_ = @Autowired)
		private CommentMapper mapper;
		
		@Setter(onMethod_ = @Autowired)
		private ContentMapper contentMapper;
		
		@Transactional
		@Override
		public int register(CommentVO vo) {
			
			log.info("register......" + vo);
			
//			contentMapper.updateReplyCnt(vo.getContent_id(), 1);
			
			return mapper.insert(vo);
			
		}
		
		@Override
		public CommentVO get(Long comment_id) {
			
			log.info("get...." + comment_id);
			
			return mapper.read(comment_id);
		}
		
		@Override
		public int modify(CommentVO vo) {
			
			log.info("modify......" + vo);
			
			return mapper.update(vo);
			
		}
		
		@Transactional
		@Override
		public int remove(Long comment_id) {
			
			log.info("remove...." + comment_id);
			
			CommentVO vo = mapper.read(comment_id);
			
//			contentMapper.updateReplyCnt(vo.getContent_id(), -1);
			
			return mapper.delete(comment_id);
		}
		
		@Override
		public List<CommentVO> getList(Criteria cri, Long content_id) {
			
			log.info("get Reply List of ad Board" + content_id);
			
			return mapper.getListWithPaging(cri, content_id);
		}

		@Override
		public CommentPageDTO getListPage(Criteria cri, Long content_id) {
			// TODO Auto-generated method stub
			return new CommentPageDTO(
					mapper.getCountByBno(content_id),
					mapper.getListWithPaging(cri, content_id));
		}
		
	}
