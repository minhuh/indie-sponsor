package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.AGenreMapper;
import com.ync.project.domain.GenreVO;
import com.ync.project.domain.Criteria;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AGenreServiceImpl implements AGenreService {
	
	@Autowired // @Inject
	private AGenreMapper mapper;
	
	// 장르 등록
	public void register(GenreVO genre_id) {

		log.info("register......" + genre_id);

		mapper.insert(genre_id);
	}
	
	// 장르 상세보기
	public GenreVO get(String genre_id){
		
		log.info("get......" + genre_id);
		
		return mapper.read(genre_id);
	};
	
	// 장르 수정
	public boolean modify(GenreVO genre_id) {
		
		log.info("modify......" + genre_id);
		
		return mapper.update(genre_id) == 1;
	};
	
	// 장르 삭제
	public boolean remove(String genre_id) {

		log.info("remove......" + genre_id);
		
		return mapper.delete(genre_id) == 1;
	};
	
	// 전체 장르 목록
	public List<GenreVO> getList(){

		log.info("getList......");
		return mapper.getList();
	};
	
	// 장르 목록 페이징 
	public List<GenreVO> getListWithPaging(Criteria cri){

		log.info("get List with criteria : " + cri);
		return mapper.getListWithPaging(cri);
	};

	// 장르 전체 수
	 public int getTotal(Criteria cri){
			log.info("get total count");
			return mapper.getTotalCount(cri);
		}

	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
