package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.AContentMapper;
import com.ync.project.domain.ContentVO;
import com.ync.project.domain.Criteria;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AContentServiceImpl implements AContentService {
	
	@Autowired // @Inject
	private AContentMapper mapper;
	
	// 컨텐츠 등록
	public void register(ContentVO content_id) {

		log.info("register......" + content_id);

		mapper.insert(content_id);
	}
	
	// 컨텐츠 상세보기
	public ContentVO get(String content_id){
		
		log.info("get......" + content_id);
		
		return mapper.read(content_id);
	};
	
	// 컨텐츠 수정
	public boolean modify(ContentVO content_id) {
		
		log.info("modify......" + content_id);
		
		return mapper.update(content_id) == 1;
	};
	
	// 컨텐츠 삭제
	public boolean remove(String content_id) {

		log.info("remove......" + content_id);
		
		return mapper.delete(content_id) == 1;
	};
	
	// 전체 컨텐츠 목록
	public List<ContentVO> getList(){

		log.info("getList......");
		return mapper.getList();
	};
	
	// 컨텐츠 목록 페이징 
	public List<ContentVO> getListWithPaging(Criteria cri){

		log.info("get List with criteria : " + cri);
		return mapper.getListWithPaging(cri);
	};

	// 컨텐츠 전체 수
	 public int getTotal(Criteria cri){
			log.info("get total count");
			return mapper.getTotalCount(cri);
		}

	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
